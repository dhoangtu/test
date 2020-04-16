\version "2.18.2"

\header {
  title = "Sing We Triumphant Hymns Of Praise"
  composer = "Deo Gracias, Hymnhus Canamus Gloriae, The Venerable Bede"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
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
musicVerseSoprano = \relative c'' {
                    \partial 4 c4 |
  %{	01	%} c2 bes4 |
  %{	02	%} c2 bes4 |
  %{	03	%} bes a!2 |
  %{	04	%} g2 c4 |
  %{	05	%} c (bes) g |
  %{	06	%} f (g) f8 (c) |
  %{	07	%} ees4 d2 |
  %{	08	%} c2 g'4 |
  %{	09	%} bes2 bes4 |
  %{	10	%} c (bes) aes |
  %{	11	%} g f2 |
  %{	12	%} ees2 ees4 |
  %{	13	%} g2 g4 |
  %{	14	%} f2 ees4 |
  %{	15	%} ees d2 |
  %{	16	%} c2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Sing we tri -- um -- phant hymns of praise,
  To heav -- en all your voic -- es raise;
  Christ by a road be -- fore un -- trod
  As cend -- ed to the throne of God.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O ri -- sen Christ, as -- cend -- ed Lord,
  All praise to you let earth ac -- cord,
  Who are, while end -- less a -- ges run,
  With Fa -- ther and with Spi -- rit One.
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
