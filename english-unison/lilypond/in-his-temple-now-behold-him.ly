\version "2.18.2"

\header {
  title = "In His Temple Now Behold Him"
  composer = "Geistreiches Gesang-buch"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
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
  system-system-spacing = #'((basic-distance . 3) (padding . 3))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
   %{	01	%} fis4 fis b a |
   %{	02	%} a4. g8 fis4 d |
   %{	03	%} a' fis b a |
   %{	04	%} g g fis2 |
   %{	05	%} e4 e e cis |
   %{	06	%} d e fis fis |
   %{	07	%} fis gis a b |
   %{	08	%} a gis fis2 |
   %{	09	%} cis'4 cis d cis8 (b) |
   %{	10	%} gis4 b cis fis, |
   %{	11	%} d' cis8 (b) ais4 b |
   %{	12	%} b ais b2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  In his tem -- ple now be -- hold him,
  See the long ex -- pect -- ed Lord;
  An -- cient pro -- phets had fore -- told him.
  God has now ful -- filled his word.
  Now to praise him, his re -- deem -- ed
  shall break forth with one ac -- cord.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  In the arms of her who bore him,
  Vir -- gin pure, be -- hold him lie,
  While his ag -- ed saints a -- dore him
  Ere in faith and hope they die.
  Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
  Lo, th'in -- car -- nate God most high.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Je -- sus, by thy pres -- en -- ta -- tion, Thou,
  who didst for us en -- dure,
  Make us see our great sal -- va -- tion,
  Seal us with thy prom -- ise sure.
  And pres -- ent us in thy glo -- ry
  To thy Fath -- er, cleansed and pure.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Prince and Au -- thor of sal -- va -- tion,
  Be thy bound -- less love our theme!
  Je -- sus praise to Thee be giv -- en
  By the world Thou didst re -- deem.
  With the Fa -- ther and the Spi -- rit,
  Lord of ma -- jes -- ty sup -- reme!
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
