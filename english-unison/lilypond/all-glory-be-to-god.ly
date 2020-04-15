\version "2.18.2"

\header {
  title = "All Glory Be To God"
  composer = "Kenneth L. Knott, Vincent Uher"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \minor
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
musicVerseSoprano = \relative c'' {
                    \partial 4 c8 bes |
  %{	01	%} aes4 f g8 f ees4 |
  %{	02	%} f f aes2 |
  %{	03	%} f2 ees4. f8 |
  %{	04	%} aes8 bes c des c4 c8 bes |
  %{	05	%} aes4 f g8 f ees4 |
  %{	06	%} f g f2 |
  %{	07	%} aes2 aes8 bes c des |
  %{	08	%} c4 f ees8 c d!4 |
  %{	09	%} c2 f4 (c) |
  %{	10	%} c8 bes aes4 bes c8 bes |
  %{	11	%} aes f g4 f2 |
  %{	12	%} c f4 g |
  %{	13	%} aes8 bes c4 aes8 f g4 |
  %{	14	%} f1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  All _ glo -- ry be _ to God on high!
  Peace, laud and joy be our re -- ply, to _ an -- gels sing - ing in the sky.
  Praise Je - sus _ Christ, true light _ from light, ten - der _ his love and _ great _ his might,
  Christ Je -- sus, sa - viour, our de -- light.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O _ Word and Wis - dom, thee we name,
  Je -- sus the in -- fant God the same. Praise _ and all wor - ship to thy Name.
  Son of _ blest _ Ma -- ry, spot - less Lamb, High _ Priest most ho -- ly _ Great _ I AM,
  Re -- ceive our lives _ in -- to _ thy hand.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Praise _ God for Jo - seph, saint -- ed man,
  Brave Guar -- dian of God's sav -- ing plan, Pro - tec -- tor of _ the God -- made -- man.
  Praise God _ for _ Ma -- ry Mo - ther true, Faith -- ful _ to Je -- sus _ her _ life through,
  Mo -- ther of God, _ our Mo - ther too.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Lord _ Je -- sus Christ, _ most ho -- ly Lord,
  With thy blest Spi -- rit be a -- dored in _ God's own glo - ry here out -- poured.
  Joy now _ to _ hear thine in - fant cries! Hope of _ the sim -- ple _ and _ the wise!
  Love from all souls _ to thee _ a -- rise!
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
