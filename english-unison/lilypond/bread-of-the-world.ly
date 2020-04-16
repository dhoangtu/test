\version "2.18.2"

\header {
  title = "Bread Of The World"
  composer = "John S.B. Hodges, St. Reginald Heber, Vincent Uher"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
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
musicVerseSoprano = \relative c'' {
  %{	01	%} bes4 bes aes |
  %{	02	%} g2 bes4 |
  %{	03	%} aes (g) f |
  %{	04	%} g8 (aes) bes2 |
  %{	05	%} bes4 bes aes |
  %{	06	%} g2 ees4 |
  %{	07	%} f4. (g8) f4 |
  %{	08	%} ees2. |
  %{	09	%} aes4 aes g |
  %{	10	%} c2 bes4 |
  %{	11	%} aes2 g4 |
  %{	12	%} g f2 |
  %{	13	%} bes4 g ees |
  %{	14	%} aes2 g4 |
  %{	15	%} f4. (g8) f4 |
  %{	16	%} ees2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Bread of the world, in mer -- cy bro -- ken,
  Wine of the soul, in mer -- cy shed,
  by whom the words of life were spo -- ken,
  and in whose death our sins are dead.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Oh, see thy heart by sor -- row bro -- ken,
  Here too the tears by Ma -- ry shed;
  Blest is this feast more than mere to -- ken,
  Thy bo -- dy bro -- ken, thy blood poured.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  E -- ter -- nal Word, our Lord, our Sa -- viour,
  Tak -- ing a -- way our sin and shame,
  In -- car -- nate love, our hope, our trea -- sure,
  We wor -- ship and a -- dore thy name.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  O Lamb of God, our friend and bro -- ther,
  We cry for joy to meet thee here;
  Now send us out to do thee ho -- nour;
  Stay with us till thy day ap -- pear.
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
