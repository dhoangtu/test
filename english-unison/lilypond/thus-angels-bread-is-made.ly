\version "2.18.2"

\header {
  title = "Thus Angel's Bread Is Made"
  composer = "Panis Angelicus Louis Lambillotte"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
  \time 4/4
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
  %{	01	%} fis2 fis4 fis |
  %{	02	%} a4. g8 fis2 |
  %{	03	%} b4 (a) g fis |
  %{	04	%} fis4. e8 e2 |
  %{	05	%} e2 e4 e |
  %{	06	%} g4. fis8 fis2 |
  %{	07	%} fis fis4 b |
  %{	08	%} a2 (g4.) g8 |
  %{	09	%} a2. r4 |
  %{	10	%} d2 cis4 b |
  %{	11	%} b4. a8 a2 |
  %{	12	%} e2 e4 e |
  %{	13	%} fis4. g8 a2 |
  %{	14	%} b b |
  %{	15	%} a fis4 g |
  %{	16	%} fis2 (e4.) d8 |
  %{	17	%} d1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Thus an -- gel's bread is made
  the bread of man to -- day:
  the liv -- ing bread from heav'n with fig -- ures doth a -- way:
  O won -- drous gift in -- deed!
  The poor and low -- ly may u -- pon their Lord and Mas -- ter feed.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Thee, there -- fore, we im -- plore,
  o God -- head, One in Three,
  so may Thou vis -- it us as we Thou vis -- it us
  as we now wor -- ship Thee;
  And lead us on thy way,
  that we all last may see the light.
}

verseLatinOne = \lyricmode {
  \set stanza = #"1."
  Pa -- nis an -- ge -- li -- cus fit pa -- nis ho -- mi -- num;
  Dat pa -- nis coe -- li -- cus fi -- gu -- ris ter -- mi -- num;
  O res -- mi -- ra -- bi -- lis! Man -- du -- cat Do -- mi -- num Pau -- per,
  ser -- vus, et hu -- mi -- lis.
}

verseLatinTwo = \lyricmode {
  \set stanza = #"2."
  Te tri -- na De -- i -- tas u -- na -- que po -- sci -- mus,
  Sic nos tu vi -- si -- ta, si -- cut te co -- li -- mus;
  Per tu -- as se -- mi -- tas duc nos quo ten -- di -- mus,
  Ad lu -- cem quam in -- ha -- bi -- tas.
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
      \new Lyrics \lyricsto sopranos \verseLatinOne
      \new Lyrics \printItalic \lyricsto sopranos \verseLatinTwo
    >>
}
