\version "2.18.2"

\header {
  title = "Word Of God To Earth Descending"
  composer = "St. Thomas Aquinas, Robert Campbell"
  tagline = ##f
}

global= {
  \key ees \major
  \time 4/4
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

% Soprano verse music
musicVerseSoprano = \relative c' {
  %{ 01 %} g'4 g bes g |
  %{ 02 %} g4. f8 f4 g |
  %{ 03 %} aes aes c aes |
  %{ 04 %} g f g2 |
  %{ 05 %} bes4 bes c c |
  %{ 06 %} d c8 (bes) ees4 bes |
  %{ 07 %} aes g8 (f) bes4 ees, |
  %{ 08 %} g4. f8 ees2 \bar "|."
}

% Alto verse music
musicVerseAlto = \relative c' {
  %{ 01 %} ees4 ees ees ees |
  %{ 02 %} ees4. d8 d4 ees |
  %{ 03 %} f f f f |
  %{ 04 %} ees d ees2 |
  %{ 05 %} g4 ees ees f |
  %{ 06 %} f d ees ees |
  %{ 07 %} ees d ees ees |
  %{ 08 %} ees d bes2 \bar "|."
}

% Tenor verse music
musicVerseTenor = \relative c' {
  %{ 01 %} bes4 bes bes bes |
  %{ 02 %} c4. c8 bes4 bes |
  %{ 03 %} c c c c |
  %{ 04 %} bes bes bes2 |
  %{ 05 %} bes4 bes bes a! |
  %{ 06 %} bes f' bes, bes |
  %{ 07 %} c bes bes c |
  %{ 08 %} bes aes g2 \bar "|."
}

% Basso verse music
musicVerseBasso = \relative c {
  %{ 01 %} ees4 ees g ees |
  %{ 02 %} aes4. aes8 aes4 g |
  %{ 03 %} f f aes f |
  %{ 04 %} bes bes, ees2 |
  %{ 05 %} ees4 g f f |
  %{ 06 %} bes aes! g g |
  %{ 07 %} f aes g aes |
  %{ 08 %} bes bes, ees2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Word of God to earth de -- scend -- ing, with the Fa -- ther pres -- ent still,
  Near His earth -- ly jour -- ney's end -- ing, Hastes his mis -- sion to ful -- fil.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Might -- y Vic -- tim, earth's sal -- va -- tion, Heav'n -- ly gates un -- fold -- ing wide,
  Help thy peo -- ple in temp -- ta -- tion, Feed them from Thy bleed -- ing side.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Ho -- ly bo -- dy, blood all pre -- cious, Giv'n  by him to be our food,
  With them both he doth re -- fresh us, Formed like him of flesh and blood.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Un -- to Thee, the hid -- den man -- na, Fa -- ther, Spi -- rit, un -- to Thee,
  Let us raise the loud ho -- san -- na, And a -- dor -- ing bend the knee.
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
      \new Lyrics \printItalic \lyricsto sopranos \verseFour
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" { \voiceOne \global \stemUp \slurUp \musicVerseTenor }
        \new Voice = "basso" { \voiceTwo \global \stemDown \slurDown \musicVerseBasso }
      >>
    >>
}
