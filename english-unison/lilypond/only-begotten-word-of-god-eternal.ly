\version "2.18.2"

\header {
  title = "Only-Begotten, Word Of God Eternal"
  composer = "ROUEN, 9th Centory, Latin"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
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
  %{	01	%} d2 a'4 f |
  %{	02	%} g2 a |
  %{	03	%} d,4. e8 f4 g |
  %{	04	%} f (e) d2 |
  %{	05	%} d a'4 f |
  %{	06	%} g2 a |
  %{	07	%} a4. g8 a4 b! |
  %{	08	%} c (b!) a2 |
  %{	09	%} d c4 d |
  %{	10	%} c (bes) a2 |
  %{	11	%} c4. bes8 a4 bes |
  %{	12	%} a (g) f2 |
  %{	13	%} a2 d,4 e |
  %{	14	%} f2 (e) |
  %{	15	%} d1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  On -- ly be -- got -- ten, Word of God e -- ter -- nal,
  Lord of Cre -- a -- tion, mer -- ci -- ful and migh -- ty,
  List to thy ser -- vants, when their tune -- ful voic -- es
  Rise to thy pres -- ence.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  This is thy tem -- ple; here thy pres -- ence -- cham -- ber;
  Here may thy ser -- vants, at the mys -- tic ban -- quet,
  Hum -- bly a -- dor -- ing, take thy bo -- dy bro -- ken,
  Drink of thy chal -- ice.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Here in our sick -- ness heal -- ing grace a -- boun -- deth,
  Light in our blind -- ness, in our toil re -- fresh -- ment;
  Sin is for -- gi -- ven, hope  o'er fear pre -- vail -- eht,
  Joy ov -- er sor -- row.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Hal -- lowed this dwel -- ling where the Lord a -- bi -- deth,
  This is none oth -- er than the gate of hea -- ven;
  Strang -- ers and pil -- grims, mak -- ing homes e -- ter -- nal,
  Pass through its por -- tals.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  God in three Per -- sons, Fa -- ther ev -- er -- last -- ing,
  Son co -- e -- ter -- nal, ev -- er bles -- sed Spi -- rit,
  Thine be the glo -- ry, praise and a -- do -- ra -- tion,
  Now and for -- ev -- er.
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
