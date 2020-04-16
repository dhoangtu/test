\version "2.18.2"

\header {
  title = "Round The Lord, In Glory Seated"
  composer = "Rustington, Richard Mant"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #2.0
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
  system-system-spacing = #'((basic-distance . 2.5) (padding . 2.5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  \partial 2 f4. f8 |
  %{	01	%} bes4 a g4. f8 |
  %{	02	%} e4 c f f |
  %{	03	%} d' c bes4. c8 |
  %{	04	%} a2 g4 c |
  %{	05	%} b! a g4. f8 |
  %{	06	%} e4 c g' f |
  %{	07	%} e c d4. d8 |
  %{	08	%} c2 c4 ees |
  %{	09	%} d4. d8 d4 f |
  %{	10	%} f e e g |
  %{	11	%} f4. f8 f4 bes |
  %{	12	%} g2 g4 d' |
  %{	13	%} c ees d c |
  %{	14	%} bes a g bes |
  %{	15	%} a g d e |
                    f2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Round the Lord in glo -- ry seat -- ed, Che -- ru -- bim and Se -- ra -- phim
  filled his tem -- ple, and re -- peat -- ed each to each the_al -- ter -- nate hymn:
  ''Lord, thy glo -- ry fills the heav -- en, earth is with its ful -- ness stored;
  un -- to Thee be glo -- ry gi -- ven, ho -- ly, ho -- ly, ho -- ly Lord!''
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Heav'n is still with glo -- ry ring -- ing, earth takes up the an -- gels' cry,
  ''Ho -- ly, ho -- ly, ho -- ly,'' sing -- ing ''Lord of hosts, the Lord most high.''
  With his se -- raph train be -- fore him, with his ho -- ly Church be -- low,
  thus con -- spire we to a -- dore him, bid we thus our an -- them flow.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  ''Lord, thy glo -- ry fills the heav -- en, earth is with its ful -- ness stored;
  un -- to Thee be glo -- ry gi -- ven, ho -- ly, ho -- ly, ho -- ly Lord!''
  Thus thy glo -- rious name con -- fes -- sing, we a -- dopt thine an -- gels' cry,
  ''Ho -- ly, ho -- ly, ho -- ly,'' bless -- ing Thee, the Lord of hosts most high.
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
