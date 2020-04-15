\version "2.18.2"

\header {
  title = "As With Gladness"
  composer = " "
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
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
  %{	01	%} g4 fis8 (g) a4 g |
  %{	02	%} c c b2 |
  %{	03	%} e,4 fis g e |
  %{	04	%} d d d2 |
  %{	05	%} g4 fis8 (g) a4 g |
  %{	06	%} c c b2 |
  %{	07	%} e,4 fis g e |
  %{	08	%} d d d2 |
  %{	09	%} b'4 a g b |
  %{	10	%} d4. c8 b2 |
  %{	11	%} e,4 fis g c |
  %{	12	%} b a g2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  As with glad -- ness men of old
  Did the guid -- ing star be -- hold,
  As with joy they hailed its light,
  Lead -- ing on -- ward, beam -- ing bright;
  So, most gra -- cious Lord, may we
  Ev -- er -- more be led to Thee.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  As with joy -- ful steps they sped
  To that low -- ly man -- ger -- bed;
  There to bend the knee be -- fore
  Him whom heav'n and earth a -- dore;
  So may we with will -- ing feet
  Ev -- er seek the mer -- cy -- seat.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  As they of -- fered gifts most rare
  At that man -- ger rude and bare;
  So may we with ho -- ly joy,
  Pure and free from sin's al -- loy,
  All our cost -- liest treas -- ures bring,
  Christ! to Thee, our heav'n -- ly King.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Ho -- ly -- Je -- sus! eve -- ry day
  Keep us in the nar -- row way;
  And, when earth -- ly things are past,
  Bring our ran -- somed souls at last
  Where they need no star to guide,
  Where no clouds thy glo -- ry hide.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  In the heav'n -- ly coun -- try bright,
  Need they no cre -- at -- ed light;
  Thou its light, its joy, its crown,
  Thou its sun which goes not down,
  There fore ev -- er may we sing
  Al -- le -- lu -- ia to our King.
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
