\version "2.18.2"

\header {
  title = "O Jesus Joy Of Loving Hearts"
  composer = "FULDA, St. Bernard Of Clairvaux"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key a \major
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
  %{	01	%} e4 a gis |
  %{	02	%} a2 b4 |
  %{	03	%} e, (fis) gis |
  %{	04	%} a2. |
  %{	05	%} a4 gis fis |
  %{	06	%} b2 gis4 |
  %{	07	%} gis8 (fis e4) dis |
  %{	08	%} e2 e4 |
  %{	09	%} e2 a4 |
  %{	10	%} a (gis) fis |
  %{	11	%} e2 cis'4 |
  %{	12	%} cis (b) a |
  %{	13	%} gis2 d'4 |
  %{	14	%} d (cis) b |
  %{	15	%} a (b) gis |
  %{	16	%} a2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O Je -- sus, joy of lov -- ing hearts.
  The fount of live and our true light.
  We seek the peace our love im -- parts,
  And stand re -- joic -- ing in your light.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Your truth un -- changed has ev -- er stood;
  You save all those who heed your call;
  To those who seek you, you are good,
  To those shoe find you all in all.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  We taste you, Lord, our liv -- ing bread;
  And long to feast up -- on you still;
  We drink of you, the foun -- tain head,
  Our thirst -- ing souls to quench and fill.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  For you our rest -- less spir -- its yearn
  Where -- e'er our chang -- ing lot is cast;
  Glad, when your pres -- ence we dis -- cern,
  Blest when our faith can hold you fast.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  O Je -- sus, ev -- er with us stay;
  Make all our mo -- ments calm and bright;
  Oh, chase the night of sin a -- way
  Shed o'er the world your ho -- ly light.
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
