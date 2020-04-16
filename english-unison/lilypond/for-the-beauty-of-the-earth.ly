\version "2.18.2"

\header {
  title = "For The Beauty Of The Earth"
  composer = "Folliot Pierpont"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 5\mm
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
musicVerseSoprano = \relative c'' {
  %{	01	%} g4 fis8 (g) a4 g |
  %{	02	%} c c b2 |
  %{	03	%} e,4 fis g e |
  %{	04	%} d d d2 |
  %{	05	%} g4 fis8 (g) a4 g |
  %{	06	%} c c b2 |
  %{	07	%} e,4 fis g e |
  %{	08	%} d d d2 |
  %{	09	%} b'4 a g b |
  %{	10	%} d4. c8 b2 |
  %{	11	%} e,4 fis g c |
  %{	12	%} b a g2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  For the beau -- ty of the earth,
  For the beau -- ty of the skies,
  For the love which from our birth
  Ov -- er and a -- round us lies,
  Lord of all, to Thee we raise
  This our hymn of grate -- ful praise.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  For the beau -- ty of each hour
  Of the day and of the night,
  Hill and vale, and tree and flow'r,
  Sun and moon, and stars of light,
  Lord of all, to thee we raise
  This our hymn of grate -- ful praise.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  For the joy of ear and eye,
  For the heart and mind's de -- light,
  For the mys -- tic har -- mo -- ny
  Link -- ing sense to sound and sight,
  Lord of all, to thee we raise
  This our hymn of grate -- ful praise.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  For the joy of hu -- man love,
  Broth -- er, sis -- ter, par -- ent, child,
  Friends on earth, and friends a -- bove,
  For all gen -- tle thoughts and mild,
  Lord of all, to thee we raise
  This our hymn of grate -- ful praise.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  For each per -- fect gift of thine
  To our race so free -- ly giv'n,
  Grac -- es hu -- man and di -- vine,
  Flowers of earth and buds of heav'n,
  Lord of all, to thee we raise
  This our hymn of grate -- ful praise.
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
      \new Lyrics \printItalic \lyricsto sopranos \verseFour
      \new Lyrics \lyricsto sopranos \verseFive
    >>
}
