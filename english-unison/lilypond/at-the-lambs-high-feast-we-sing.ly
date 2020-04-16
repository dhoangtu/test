\version "2.18.2"

\header {
  title = "At The Lamb High Feast We Sing"
  composer = "Jakob Hintze, J.S. Bach, Robert Campbell"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
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

  page-count = #1
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} a4 d a b |
  %{	02	%} a4. g8 fis2 |
  %{	03	%} a4 a g fis |
  %{	04	%} e e d2 |
  %{	05	%} a'4 d a b |
  %{	06	%} a4. g8 fis2 |
  %{	07	%} a4 a g fis |
  %{	08	%} e e d2 |
  %{	09	%} e4 e fis8 (gis) a4 |
  %{	10	%} a gis a2 |
  %{	11	%} b4. cis8 d4 d |
  %{	12	%} cis cis b2 |
  %{	13	%} fis4 fis b a |
  %{	14	%} a gis a2 |
  %{	15	%} b4 a g fis |
  %{	16	%} e e d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  At the Lamb's high feast we sing, praise to our vic -- tor -- ious King,
  Who has washed us in the tide flow -- ing from his pier -- ced side.
  Praise we him, whose love di -- vine gives his sac -- red blood for wine,
  Fives his bod -- y for the feast, Christ the vic -- tim, Christ the priest.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Where the Pas -- chal blood is poured, death's dark an -- gel sheathes his swords;
  Is -- rael's hosts tri -- um -- phant go through the wave that drowns the foe.
  Praise we Christ, whose blood was shed, Pas -- chal vic -- tim,
  Pas -- chal bread; with sin -- cer -- i -- ty and love, eat we man -- na from a -- bove.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Might -- y vic -- tim from the sky, hell's fierce powers be -- neath thee lie;
  Thou hast con -- quered in the fight, Thou hast brought us life and light:
  Now no more can death ap -- pall, now no more the grave en -- thrall;
  Thou hast o -- pened par -- a -- dise, and in Thee thy saints shall rise.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  East -- er tri -- umph, East -- er joy, sin a -- lone can this de -- stroy;
  From sin's power do Thou set free souls new -- born, O Lord, in Thee.
  Hymns of glo -- ry and of praise, ris -- en Lord, to Thee we raise;
  Ho -- ly Fa -- ther, praise to Thee, with the Spi -- rit, ev -- er be.
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
