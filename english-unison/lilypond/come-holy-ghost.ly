\version "2.18.2"

\header {
  title = "Come, Holy Ghost"
  composer = "Lambillotte, Rabanus Maurus"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
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
  %{	01	%} d4 d d |
  %{	02	%} g2. |
  %{	03	%} a4 a a |
  %{	04	%} b2. |
  %{	05	%} b4 a b |
  %{	06	%} d (c) b |
  %{	07	%} b (c) b |
  %{	08	%} a2. |
  %{	09	%} d,4 d d |
  %{	10	%} g2. |
  %{	11	%} a4 a a |
  %{	12	%} b2. |
  %{	13	%} d4 d d |
  %{	14	%} e2 d8 (c) |
  %{	15	%} b2 a4 |
  %{	16	%} d2. |
  %{	17	%} d4 d d |
  %{	18	%} e2 b8 (c) |
  %{	19	%} b2 a4 |
  %{	20	%} g2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Come Ho -- ly Ghost, Cre -- a -- tor Blest,
  And in our hearts take up Thy rest;
  Come with Thy grace and heav'n -- ly aid
  To fill the hearts which Thou hast made,
  To fill the hearts which Thou hast made.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O Com -- fort Blest, to Thee we cry,
  Thou heav'n -- ly gift of God most high;
  Thou fount of life and fire of love,
  And sweet a -- noint -- ing from a -- bove,
  And sweet a -- noint -- ing from a -- bove.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Praise be to Thee Fa -- ther and Son,
  And Ho -- ly Spi -- rit Three in one;
  And may the Son on us bes -- tow
  The gifts that from the Spi -- rit flow,
  The gifts that from the Spi -- rit flow.
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
