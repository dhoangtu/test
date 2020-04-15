\version "2.18.2"

\header {
  title = "Hark! A Herald Voice Is Calling"
  composer = "William Henry Monk"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key e \major
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
  %{	01	%} e4 gis b b |
  %{	02	%} a cis cis b |
  %{	03	%} gis ais b b |
  %{	04	%} cis cis b2 |
  %{	05	%} b4 a gis b |
  %{	06	%} a gis fis e |
  %{	07	%} fis gis a gis |
  %{	08	%} fis fis e2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Hark! A her -- ald voice is sound -- ing;
  ''Christ is nigh'' it seems to say,
  ''Cast a -- way the works of dark -- ness,
  O ye child -- ren of the day.''
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Wak -- ened by the sol -- emn warn -- ing
  Let the earth -- bound soul a -- rise;
  Christ, her sun, all il dis -- pel -- ling,
  Shines up -- on the morn -- ing skies.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Lo. the lamb, so long ex -- pec -- ted.
  Comes with par -- don down from heav'n;
  Let us haste, with tears of sor -- row,
  One and all to be for -- giv'n.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  That when next He comes in glo -- ry,
  And the world is wrapped in fear,
  With his mer -- cy He may shield us,
  And with words of love draw near.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Hon -- or, glo -- ry, might, and bless -- ing
  Be to Glod: the Fath -- er, Son
  And the ev -- er last -- ing Spi -- rit,
  While e -- ter -- nal a -- ges run.
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
