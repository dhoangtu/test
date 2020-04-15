\version "2.18.2"

\header {
  title = "Beautiful Saviour, Mightiest In Mercy"
  composer = "Noel Jones, Vincent Uher"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons 3.0 License, for non-commercial use" } }
}

global= {
  \key c \major
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
  system-system-spacing = #'((basic-distance . 3) (padding . 3))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  c2 c4 c |
  d2 d |
  g4. g8 g4 g |
  f2 f |
  e e4 d |
  a' a a a8 a |
  gis2 gis4 a |
  b2 b4 c |
  a2 a |
  a4 a a b |
  g2 g |
  c, c4 c |
  g'2 g \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Beau -- ti -- ful Sav -- iour, Migh -- ti -- est in Mer -- cy,
  light pier -- cing dark -- ness, joy be -- yond all sor -- row,
  woun -- ded for heal -- ing, dy -- ing for our sav -- ing,
  vic -- tim and high priest.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Son of the Fa -- ther, Child of Ma -- ry Mo -- ther,
  just Jos - eph's dear boy, cause of great John's leap -- ing,
  Ma -- ry's De -- liv' -- rer, tru -- est friend to Laz' -- rus,
  true God, our high King.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  All laud we bring now prais -- ing our be -- lov -- ed, Christ Je -- sus,
  Sa -- viour, vic -- tor, and Re -- deem -- er, Judge of the liv -- ing,
  Judge of the de -- par -- ted,
  come quick -- ly, Je -- sus.
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
      \new Lyrics \lyricsto sopranos \verseThree
    >>
}
