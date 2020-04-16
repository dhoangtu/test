\version "2.18.2"

\header {
  title = "O Splendor Of God's Glory Bright"
  composer = "Puer Nobis"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
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
                    \partial 4 d4 |
  %{	01	%} d2 e4 |
  %{	02	%} fis2 g4 |
  %{	03	%} fis2 e4 |
  %{	04	%} d2 d4 |
  %{	05	%} a'2 a4 |
  %{	06	%} a (b) cis |
  %{	07	%} d2 d4 |
  %{	08	%} d2 a4 |
  %{	09	%} d2 d4 |
  %{	10	%} cis2 a4 |
  %{	11	%} b2 b4 |
  %{	12	%} a2 g4 |
  %{	13	%} a2 fis4 |
  %{	14	%} e2 fis4 |
  %{	15	%} d2 cis4 |
                    d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O splen -- dor of God's glo -- ry bright,
  O thou that bring -- est light from light,
  O Light of light, light's liv -- ing sping,
  O day, all days il -- lu -- min -- ing.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O thou true Sun, on us thy glance
  Let fall in roy -- al ra -- di -- ance,
  The Spi -- rit's sanc -- ti -- fy -- ing beam
  Up -- on our earth -- ly sens -- es stream.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  The Fa -- ther, too, our prayers im -- plore,
  Fa -- ther of glo -- ry ev -- er -- more;
  The Fa -- ther of all grace and might,
  To ban -- ish in from our de -- light.
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
