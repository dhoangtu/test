\version "2.18.2"

\header {
  title = "Away In A Manger"
  composer = "Traditional Carol, William James Kirkpatrick"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
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
                    \partial 4 c4 |
  %{	01	%} f f g8 (a) |
  %{	02	%} f4 f a8 (bes) |
  %{	03	%} c4 c d |
  %{	04	%} bes2 g8 (a) |
  %{	05	%} bes4 bes c |
  %{	06	%} a a f8 (a) |
  %{	07	%} g4 d f |
  %{	08	%} e2 c4 |
  %{	09	%} f f g8 (a) |
  %{	10	%} f4 f a8 (bes) |
  %{	11	%} c4 c d |
  %{	12	%} bes2 g8 (a) |
  %{	13	%} bes4 bes c |
  %{	14	%} a a f8 (g) |
  %{	15	%} g4 d e |
                    f2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  A -- way in a man -- ger, no crib for a bed,
  the lit -- tle Lord Je -- sus laid down his sweet head.
  The stars in the bright sky looked down where He lay,
  the lit -- tle Lord Je -- sus a -- sleep on the hay.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  The cat -- tle are low -- ing, the Ba -- by a -- wakes,
  but lit -- tle Lord Je -- sus, no cry -- ing He makes;
  I love Thee, Lord Je -- sus, look down from the sky
  And stay by my cra -- dle till morn -- ing is nigh.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Be near me, Lord Je -- sus, I ask Thee to stay
  close by me for -- ev -- er, and love me, I pray;
  Bless all the dear chil -- dren in Thy ten -- der care,
  and fit us for heav -- en to live with Thee there.
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
    >>
}
