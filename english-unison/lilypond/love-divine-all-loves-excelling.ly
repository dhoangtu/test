\version "2.18.2"

\header {
  title = "Love Divine, All Loves Excelling"
  composer = "HYFRODOL, Charles Wesley"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
  #(set-paper-size "a5")
  top-margin = 5\mm
  bottom-marign = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  page-count = #1
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} f2 g4 |
  %{	02	%} f4. (g8) a4 |
  %{	03	%} bes2 a4 |
  %{	04	%} g (f) g |
  %{	05	%} c2 bes4 |
  %{	06	%} a2 a4 |
  %{	07	%} g (f) g |
  %{	08	%} f2. |
  %{	09	%} f2 g4 |
  %{	10	%} f4. (g8) a4 |
  %{	11	%} bes2 a4 |
  %{	12	%} g (f) g |
  %{	13	%} c2 bes4 |
  %{	14	%} a2 a4 |
  %{	15	%} g (f) g |
  %{	16	%} f2. |
  %{	17	%} c'2 c4 |
  %{	18	%} c (bes) a |
  %{	19	%} bes2 bes4 |
  %{	20	%} bes (a) g |
  %{	21	%} a2 a4 |
  %{	22	%} a (bes) c |
  %{	23	%} c (bes) a |
  %{	24	%} g2. |
  %{	25	%} c4 (a) c |
  %{	26	%} bes (g) bes |
  %{	27	%} a (f) a |
  %{	28	%} g8 (a bes a) g4 |
  %{	29	%} c2 c4 |
  %{	30	%} d (c) bes |
  %{	31	%} a2 g4 |
  %{	32	%} f2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Love di -- vine, all loves ex -- cel -- ling,
  Joy of heaven to earth come down;
  Fix in us thy hum -- ble dwell -- ing;
  All thy faith -- ful mer -- cies crown!
  Je -- sus, Thou art all com -- pas -- sion,
  Pure un -- bound -- ed love Thou art;
  Vi -- sit us with thy sal -- va -- tion;
  En -- ter ev -- ery trem -- bling heart.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Breathe, O breathe thy lov -- ing Spi -- rit,
  In -- to ev -- ery troub -- led breast!
  Let us all in thee in -- he -- rit;
  Let us find that se -- cond rest.
  Take _ a -- way bent to sin -- ning;
  Al -- pha and o -- me -- ga be;
  End of faith, as its be -- gin -- ning,
  Set our hearts at li -- bert -- y.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Come, Al -- might -- y to de -- li -- ver,
  Let us all thy life re -- ceive;
  Sud -- den -- ly re -- turn and nev -- er,
  Nev -- er more thy tem -- ples leave.
  Thee we would be al -- ways bles -- sing,
  Serve Thee as thy hosts a -- bove,
  Pray and praise Thee with -- out ceas -- ing,
  Glo -- ry in thy per -- fect love.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Fin -- ish, then, thy new cre -- a -- tion;
  Pure and spot -- less let us be.
  Let us see thy great sal -- va -- tion
  Per -- fect -- ly re -- stored in thee;
  Changed from glo -- ry in -- to glo -- ry,
  Till in heaven we take our place,
  Till we cast our crowns be -- fore Thee,
  Lost in won -- der, love, and praise.
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
