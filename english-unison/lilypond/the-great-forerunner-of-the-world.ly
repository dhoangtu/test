\version "2.18.2"

\header {
  title = "The Great Forerunner Of The World"
  composer = "Sedulius L.L., The Venerable Bede"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
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
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
                    \partial 4 e4 |
  %{	01	%} g2 a4 |
  %{	02	%} b2 d4 |
  %{	03	%} g,4. (a8) b4 |
  %{	04	%} a2 a4 |
  %{	05	%} b2 c4 |
  %{	06	%} d4. (c8) b4 |
  %{	07	%} a2 a4 |
  %{	08	%} g2 g4 |
  %{	09	%} fis2 g4 |
  %{	10	%} a4. (g8) fis4 |
  %{	11	%} e2 e4 |
  %{	12	%} d2 g4 |
  %{	13	%} a2 b4 |
  %{	14	%} c2 b4 |
  %{	15	%} a2 a4 |
  %{	16	%} g2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  The great fore -- run -- ner of the morn, the her -- ald of the Word, is born;
  And faith -- ful hearts shall nev -- er fail with thanks and praise his light to hail.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  With heaven -- ly mes -- sage Gab -- riel came,
  that John should be the her -- ald's name,
  And with pro -- phet -- ic ut -- terance told his ac -- tions great and man -- i -- fold.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  John, still un born, yet gave a -- right his wit -- ness to the com -- ing light;
  And Christ, the Sun of all the earth, ful -- filled that wit -- ness at his birth.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Of wom -- an born shall nev -- er be a great -- er pro -- phet than was he,
  whose might -- y deeds ex -- alt his fame to great -- er than a pro -- phet's name.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  All praise to God the Fa -- ther be, all praise e -- ter -- nal Son,
  To Thee, whom with the Spi -- rit we a -- dore
  For ev -- er and for ev -- er -- more.
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
