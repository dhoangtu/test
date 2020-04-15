\version "2.18.2"

\header {
  title = "Lift Up Your Heads, Ye Mighty Gates"
  composer = "Thomas John Williams, Georg Weissel, Catherine Winkworth"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
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
  %{	01	%} c2 e4. f8 |
  %{	02	%} g2. g4 |
  %{	03	%} a2 b |
  %{	04	%} c2. g4 |
  %{	05	%} c2 g |
  %{	06	%} f4 (e) d (c) |
  %{	07	%} f2 e |
  %{	08	%} d2. d4 |
  %{	09	%} g2 a |
  %{	10	%} b2. d4 |
  %{	11	%} d (c) b (a) |
  %{	12	%} g2. g4 |
  %{	13	%} g2 c |
  %{	14	%} d,4 (a') g (f) |
  %{	15	%} e2 d |
  %{	16	%} c1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Lift up your heads, ye might -- y gates;
  Be -- hold the King of glo -- ry waits!
  The King of kings is draw -- ing near;
  The Sav -- iour of the world is here.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O blest the land, the ci -- ty blest,
  Where Christ the rul -- er is con -- fest!
  O hap -- py hearts and hap -- py homes
  To whom this King of tri -- umph comes!
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Fling wide the por -- tals of your heart;
  Make it a tem -- ple, set a -- part
  From earth -- ly use for heav'n's em -- ploy,
  A -- dorned with prayer and love and joy.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Re -- deem -- er, come, with us a -- bide;
  Our hearts to Thee we o -- pen wide;
  Let us thy in -- ner pres -- ence feel;
  Thy grace and love in us re -- veal.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Thy Ho -- ly Spi -- rit lead us on
  Un -- til our glor -- ious goal is won;
  E -- ter -- nal praise, e -- ter -- nal fame
  Be of -- fered, Sav -- iour, to thy Name.
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
