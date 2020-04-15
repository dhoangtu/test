\version "2.18.2"

\header {
  title = "According To Thy Gracious Word"
  composer = "Thomas Tallis, James Montgomery"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-marign = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
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
        \new Voice = "sopranos" { \global \stemUp \slurUp \musicVerseSoprano }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
    >>
}
