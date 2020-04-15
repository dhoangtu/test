\version "2.18.2"

\header {
  title = "Once In Royal David's City"
  composer = "Henry J. Gauntlett, Celcil Frances Alexander"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
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
  system-system-spacing = #'((basic-distance . 2.5) (padding . 2.5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} c4 e f4. f8 |
  %{	02	%} f (e) f (g) g4 f |
  %{	03	%} f a c4. a8 |
  %{	04	%} a (g) f (e) f2 |
  %{	05	%} c4 e f4. f8 |
  %{	06	%} f (e) f (g) g4 f |
  %{	07	%} f a c4. a8 |
  %{	08	%} a (g) f (e) f2 |
  %{	09	%} d'4 d c4. f,8 |
  %{	10	%} bes4 bes a a |
  %{	11	%} d d c4. a8 |
  %{	12	%} a (g) f (e) f4 f \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Once in roy -- al Da -- vid's cit -- y
  Stood a low -- ly cat -- tle shed,
  Where a moth -- er laid her ba -- by
  In a man -- ger for his bed:
  Ma -- ry was that moth -- er mild _,
  Je -- sus Christ her lit -- tle Child.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  He came down to earth from heav -- en,
  Who is God and Lord of all,
  And his shel -- ter was a sta -- ble,
  And his cra -- dle was a stall;
  With the poor, and mean, and low -- ly,
  Lived on earth our Sav -- iour ho -- ly.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  And through all his won -- drous child -- hood
  He would hon -- or and o -- bey,
  Love and watch the low -- ly mai -- den,
  In whose gen -- tle arms He lay:
  Chris -- tian chil -- dren all must be _
  Mild, o -- be -- dient, good as He.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  For He is our child -- hood's pat -- tern;
  Day by day, like us He grew;
  He was lit -- tle, weak and help -- less,
  Tears and smiles like us He knew;
  And He feel -- eth for our sad -- ness,
  And He shar -- eth in our glad -- ness.
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
