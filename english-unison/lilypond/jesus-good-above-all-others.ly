\version "2.18.2"

\header {
  title = "Jesus, Good Above All Others"
  composer = "Adam of St. Victor"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
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
  %{	01	%} f2 a4 |
  %{	02	%} c2 a4 |
  %{	03	%} bes (c) d |
  %{	04	%} c2 g4 |
  %{	05	%} a (bes) c |
  %{	06	%} bes (a) g |
  %{	07	%} f2 d4 |
  %{	08	%} e2 d4 |
  %{	09	%} a'2 bes4 |
  %{	10	%} c2 d4 |
  %{	11	%} c2 g4 |
  %{	12	%} a2 f4 |
  %{	13	%} bes2 bes4 |
  %{	14	%} a4 (g) f |
  %{	15	%} f (d) e |
  %{	16	%} f2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Je -- sus, good a -- bove all o -- ther,
  Gen -- tle Child of gen -- tle mo -- ther,
  In a sta -- ble born our Bro -- ther,
  Give us grace to per -- se -- vere.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Je -- sus, cra -- dled in a man -- ger,
  For us fac -- ing ev -- ery dan -- ger,
  Liv -- ing as a home -- less
  Stran -- ger,
  Make we Thee our King most dear.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Je -- sus, for thy peo -- ple dy -- ing,
  Ris -- en Mas -- ter, death de -- fy -- ing,
  Lord in heav -- en thy grace ply -- ing,
  Keep us by thine al -- tar near.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Je -- sus, Who our sor -- rows bear -- est,
  All our thoughts and hopes
  Thou -- shar -- est,
  Thou to man the truth de -- cla -- rest,
  Help us all thy truth to hear.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Lord, in all our do -- ings guide us;
  Pride and hate shall ne'er di -- vide us;
  We'll go on with Thee be -- side us,
  And with joy we'll per -- se -- vere!
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
