\version "2.18.2"

\header {
  title = "Christ Be Sure Our Foundation"
  composer = "Noel Jones, Vincent Uher"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons 3.0 License, for non-commercial use" } }
}

global= {
  \key f \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
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
  %{	01	%} f2 f4 f |
  %{	02	%} f4. e8 e4 f |
  %{	03	%} g2 g4 g |
  %{	04	%} g a f2 |
  %{	05	%} a2 a4 a |
  %{	06	%} a4. gis8 gis4 gis8 a |
  %{	07	%} b!4 b b c |
  %{	08	%} a1 |
  %{	09	%} a2 g4 f |
  %{	10	%} bes4. bes8 bes4 bes |
  %{	11	%} b!2 a4 g |
  %{	12	%} c4. c8 c2 |
  %{	13	%} c2 bes4 a |
  %{	14	%} a4. g8 g4 a |
  %{	15	%} bes4 bes4. bes8 a8. g16 |
  %{	16	%} f1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Christ be our sure found -- da -- tion. Christ, be our cor -- ner -- stone;
  Build up from eve -- ry na -- tion a peo -- ple of your own.
  Blest through your font of mer -- cy, blest be each liv -- ing stone of faith
  a -- live in wit -- ness fair Christ, by all be known.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  The art of Chris -- tian liv -- ing a -- dorns each day like dawn,
  the work of Christ the mas -- ter through peo -- ple weak and strong.
  His hurt hands fash -- ion won -- ders with thorns, wood, nails and sin
  till we shine like church win -- dows, bright light of Christ with -- in.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Be -- yond the words of sa -- ges, more sure than schol -- ars' claims,
  You are the one who an -- swers and knows us by our names.
  You know how we are temp -- ted to doubt and lose our way.
  Be first in all our think -- ing and last at end of day.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  O Je -- sus, ev -- er near us, up -- lift -- ing us through fears,
  your ten -- der mer -- cies give us the strength to stand through tears.
  Your pow'r -- ful arms em -- brace us when we are at our end.
  Christ, car -- ry us to safe -- ty with you all time to spend.
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
    >>
}
