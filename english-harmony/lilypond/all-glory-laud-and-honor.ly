\version "2.18.2"

\header {
  title = "All Glory, Laud and Honor"
  arranger = "Theodulph of Orleans, Melchior Teschner"
  tagline = ##f
  copyright = "Public Domain"
}

global= {
  \key bes \major
  \time 4/4
  % \override Score.BarNumber.break-visibility = ##(#t #t #t)
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-marign = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
                   \partial 4 bes4 |
  %{ 01 %} f' f g a |
  %{ 02 %} bes2 bes4 d |
  %{ 03 %} c bes bes a |
  %{ 04 %} bes2. bes,4 |
  %{ 05 %} f' f g a |
  %{ 06 %} bes2 bes4 d |
  %{ 07 %} c bes bes a |
  %{ 08 %} bes2. bes4 |
  %{ 09 %} d d c bes |
  %{ 10 %} a (g) f a |
  %{ 11 %} bes a g g |
  %{ 12 %} f2. f4 |
  %{ 13 %} d f g f |
  %{ 14 %} f (ees) d f |
  %{ 15 %} ees d c c |
                    bes2. \bar "|."
}

musicVerseAlto = \relative c' {
                   \partial 4 bes4 |
  %{ 01 %} c bes bes ees |
  %{ 02 %} ees (d8 c) d4 f |
  %{ 03 %} f8 ees d4 c c |
  %{ 04 %} d2. bes4 |
  %{ 05 %} c bes bes ees |
  %{ 06 %} ees (d8 c) d4 f4 |
  %{ 07 %} f8 ees d4 c c |
  %{ 08 %} d2. d4 |
  %{ 09 %} f g8 f e!4 f8 g |
  %{ 10 %} f4 (e!) f f |
  %{ 11 %} d8 e! f4 f e |
  %{ 12 %} f2. c4 |
  %{ 13 %} bes bes ees d |
  %{ 14 %} c (a) bes bes |
  %{ 15 %} bes bes bes a |
                    bes2. \bar "|."
}

musicVerseTenor = \relative c {
                   \partial 4 d4 |
  %{ 01 %} f d ees f |
  %{ 02 %} f2 f4 bes |
  %{ 03 %} a bes g f |
  %{ 04 %} f2. d4 |
  %{ 05 %} f d ees f |
  %{ 06 %} f2 f4 bes |
  %{ 07 %} a bes a f |
  %{ 08 %} f2. f4 |
  %{ 09 %} bes bes8 a g4 d' |
  %{ 10 %} c (bes) a d |
  %{ 11 %} bes c d c8 (bes) |
  %{ 12 %} a2. f4 |
  %{ 13 %} f bes bes bes |
  %{ 14 %} f2 f4 f |
  %{ 15 %} g f f4. ees8 |
                   d2. \bar "|."
}

musicVerseBasso = \relative c {
                   \partial 4 bes4 |
  %{ 01 %} a bes ees c |
  %{ 02 %} bes2 bes4 bes' |
  %{ 03 %} f g ees f |
  %{ 04 %} bes,2. bes4 |
  %{ 05 %} a bes ees c |
  %{ 06 %} bes2 bes4 bes |
  %{ 07 %} f' g f f |
  %{ 08 %} bes,2. bes4 |
  %{ 09 %} bes bes c d8 e! |
  %{ 10 %} f4 (c) d d |
  %{ 11 %} g, a bes c |
  %{ 12 %} f2. a,4 |
  %{ 13 %} bes d ees bes |
  %{ 14 %} a (f) bes d |
  %{ 15 %} ees bes f f |
                    bes2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  All glo -- ry, laud, and hon -- or
  To thee, Re -- deem -- er, King
  To whom the lips of chil -- dren
  Made sweet ho -- san -- nas ring
  Thou art the King of Is -- rael
  Thou Da -- vid's roy -- al Son
  Who in the Lord's name com -- est
  The King and Bless -- ed One.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  The com -- pa -- ny of an -- gels
  Are prai -- sing thee on high
  And mor -- tal men and all things
  Cre -- at -- ed make re -- ply
  The peo -- ple of the He -- brews
  With palms be -- fore thee went;
  Our praise and love and an -- thems
  Be -- fore thee we pre -- sent.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  To thee, be -- fore thy pas -- sion
  They sang their hymns of praise;
  To thee, now high ex -- alt -- ed
  Our me -- lo -- dy we raise
  Thou didst ac -- cept their prais -- es;
  Ac -- cept the love we bring
  Who in all good de -- light -- est
  Thou good and gra -- cious King.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \voiceOne \global \stemUp \slurUp \musicVerseSoprano }
        \new Voice = "alto" { \voiceTwo \global \stemDown \slurDown \musicVerseAlto }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
      \new Lyrics \lyricsto sopranos \verseThree
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" { \voiceThree \global \stemUp \slurUp \musicVerseTenor }
        \new Voice = "bass" { \voiceThree \global \stemDown \slurDown \musicVerseBasso }
      >>
    >>
}

