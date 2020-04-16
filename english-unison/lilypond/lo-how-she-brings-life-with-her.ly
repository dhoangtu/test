\version "2.18.2"

\header {
  title = "Lo! How She Brings Life With Her"
  composer = "Noel Jones, Vincent Uher"
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
  top-margin = 5\mm
  bottom-margin = 5\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  system-system-spacing = #'((basic-distance . 3) (padding . 3))
  print-page-number = #f
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} c2 c4 d |
  %{	02	%} e2 f |
  %{	03	%} f g4 g |
  %{	04	%} a4. a8 g4 f |
  %{	05	%} g (f e) e |
  %{	06	%} d4. e8 f4 g |
  %{	07	%} e (d) c ces8 (d16 e) |
  %{	08	%} f4. f8 e4. e8 |
  %{	09	%} d2. e8 (d) |
  %{	10	%} c4 c d e |
  %{	11	%} f2 f4 f8 (e) |
  %{	12	%} d4 d e fis |
  %{	13	%} g2 (f4) e8 (f16 g) |
  %{	14	%} a4. b8 c4 a |
  %{	15	%} g (f) e c |
  %{	16	%} f4. e8 d4 d |
  %{	17	%} c1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Lo, how she brings life with her
  Con -- cealed be -- neath her heart,
  Eve's daugh -- ter, brave and cho -- sen,
  God's part -- ner to his art.
  Her will knit with di -- vine will
  De -- sires his word be done.
  For God she weaves with -- in her
  The bo -- dy of her Son.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  E -- li -- sa -- beth her cou -- sin
  A child will bring to birth
  God's an -- swer to her long -- ing,
  A pro -- phet for the earth.
  ''Peace be with you,'' said Ma -- ry.
  Her cou -- sin's babe did dance
  The mer -- ry steps of best man:
  The Bride -- groom's here at last.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  E -- li -- sa -- beth cried out then,
  ''The child with -- in me leapt! When he heard your sweet greet -- ing,
  With you my ba -- by stepped.''
  She spoke full of the Spi -- rit,
  With in -- sight from the Lord,
  ''How is it you come to me
  The Mo -- ther of my Lord?''
}

verseFour = \lyricmode {
  \set stanza = #"4."
  The mo -- ther of her Lord, yes,
  Great Ma -- ry, An -- na's child,
  A daugh -- ter born to Is -- rael,
  A vir -- gin un -- de -- filed,
  She sang out as a wo -- man
  Brought up on Han -- nah's song,
  ''O praise, my soul, God's great -- ness.
  Re -- joice, our Lord is strong.''
}

verseFive = \lyricmode {
  \set stanza = #"5."
  All a -- ges call her bles -- sed
  Just as she once fore -- told.
  Blest is she a -- mongst wo -- men,
  Her Child blest from of old.
  Blest is she who be -- lieves God
  Who car -- ries God's true word.
  Her Son both God and hu -- man
  Ful -- fils great Ga -- briel's word.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  Our Sav -- iour, God of mer -- cy,
  Re -- mem -- bers A -- braham's fold.
  Praise God who casts down ty -- rants.
  Re -- joice! Our God is bold.
  So sing we with blest Ma -- ry
  To mag -- ni -- fy the Lord
  Who raised up his hand -- mai -- den.
  Oh, ho -- ly is the Lord!
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
      \new Lyrics \lyricsto sopranos \verseFour
      \new Lyrics \printItalic \lyricsto sopranos \verseFive
      \new Lyrics \lyricsto sopranos \verseSix
    >>
}
