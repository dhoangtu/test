\version "2.18.2"

\header {
  title = "The King Of Love"
  composer = "St. Columba, Traditional Irish Melody, Henry Williams Baker"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
  \time 6/4
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
                    \partial 2 d4 (e) |
  %{	01	%} fis1  g2 |
  %{	02	%} a1 g4 (a) |
  %{	03	%} fis1 e2 |
  %{	04	%} d1 d4 (e) |
  %{	05	%} fis1 g2 |
  %{	06	%} a1 \tuplet 3/2 { g4 a b } |
  %{	07	%} a1. |
  %{	08	%} a1 a2 |
  %{	09	%} d1 b2 |
  %{	10	%} a1 g2 |
  %{	11	%} fis1 e2 |
  %{	12	%} d1 fis2 |
  %{	13	%} a1 g2 |
  %{	14	%} fis1 e2 |
  %{	15	%} d1. |
                    d1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  The King of love my she -- pherd is,
  whose good -- ness keeps  me _ _ ev -- er.
  I want for noth -- ing!
  I am God's and God is mine for -- ev -- er.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Where streams of liv -- ing wat -- er flow
  My hap -- py soul God _ _ leads now,
  And where the green -- est past -- ures grow
  with food cel -- est -- ial feeds now.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Though of -- ten fool -- ish -- ly I strayed,
  still in true love God _ _ sought me;
  And told me to be un -- a -- fraid,
  and home a -- gain God brought me.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  In time of death I'll have no fear
  With You, dear Lord, be _ _ side me;
  your rod and staff my com -- fort still,
  your cross be -- fore to guide me.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  You spread a ta -- ble in my sight;
  The bread of life be _ _ stow -- ing;
  With prom -- ise of e -- ter -- nal light
  My cup is o -- ver -- flow -- ing!
}

verseSix = \lyricmode {
  \set stanza = #"6."
  Through all of my re -- main -- ing days
  Then guide me, leave me _ _ nev -- er,
  Good Shep -- herd, may I sing your praise
  With -- in your house for -- ev -- er.
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
