\version "2.18.2"

\header {
  title = "According To Thy Gracious Word"
  composer = "Thomas Tallis, James Montgomery"
  tagline = ##f
  source="https://media.musicasacra.com/books/hymns/pbeh_according_to_his.pdf"
  copyright="CC0 1.0"
}

global= {
  \key ees \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  %\override Score.BarNumber.break-visibility = ##(#t #t #t)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

\paper {
  #(set-paper-size "a4")
  top-margin = 20\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  system-system-spacing = #'((basic-distance . 3) (padding . 5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  \partial 4 ees4 |
  g aes bes bes |
  c c bes8 \fermata r bes4 |
  ees d c c |
  bes2 \fermata r4 ees, |
  g aes bes bes |
  c c bes8 \fermata r ees,4 |
  aes4 g f f |
  ees1 \bar "|."
}

% Alto verse music
musicVerseAlto = \relative c' {
  \partial 4 ees4 |
  ees ees d ees |
  ees ees ees8 r f4 |
  ees f g f |
  d2 r4 ees |
  ees ees d ees |
  ees ees ees8 r ees4 |
  ees ees ees d |
  ees1
}

% Tenor verse music
musicVerseTenor = \relative c' {
  \partial 4 g4 |
  bes aes f g |
  aes aes g8 r f4 |
  a bes bes a |
  bes2 r4 g |
  bes aes f g |
  aes aes g8 r g4 |
  c bes bes bes |
  g1
}

% Basso verse music
musicVerseBasso = \relative c {
  \partial 4 ees4 |
  ees c bes ees |
  aes, c ees8 _\fermata r d4 |
  c d ees f |
  bes,2 _\fermata r4 ees4 |
  ees c bes ees |
  aes, c ees8 _\fermata r c4 |
  aes ees' bes bes |
  ees1
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Ac -- cord -- ing to thy gra -- cious word, in meek hu -- mil -- i -- ty,
  this will I do, my dy -- ing Lord, I will re -- mem -- ber thee.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Thy bod -- y, bro -- ken for my sake, my bread from heav'n shall be;
  Thy tes -- ta -- men -- tal cup I take, and thus re -- mem -- ber thee.
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
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" { \voiceThree \global \stemUp \slurUp \musicVerseTenor }
        \new Voice = "bass" { \voiceThree \global \stemDown \slurDown \musicVerseBasso }
      >>
    >>
}
