\version "2.18.2"

\header {
  title = "Let All Mortal Flesh Keep Silence"
  composer = " "
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #2.0
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
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
  %{	01	%} d4 e f g |
  %{	02	%} a2 a4 (g) |
  %{	03	%} a2 a |
  %{	04	%} a4 a bes c |
  %{	05	%} bes2 a4 (g) |
  %{	06	%} a1 |
  %{	07	%} d,4 e f g |
  %{	08	%} a2 a4 (g) |
  %{	09	%} a2 a |
  %{	10	%} a4 a bes c |
  %{	11	%} bes2 a4 (g) |
  %{	12	%} a1 |
  %{	13	%} a4 a d a |
  %{	14	%} g2. f4 |
  %{	15	%} d (f a f) |
  %{	16	%} e1 |
  %{	17	%} a4 a d a |
  %{	18	%} g2 e4 (f) |
  %{	19	%} d1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Let all mor -- tal flesh keep si -- lence,
  And with fear and trem -- bling stand;
  Pon -- der no -- thing earth -- ly min -- ded,
  For with bles -- sing in his hand,
  Christ our God to earth de -- scen -- deth,
  Our full hom -- age to de -- mand.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  King of kings, yet born of Ma -- ry,
  As of old on earth He stood,
  Lord of lords, in hu -- man ves -- ture, 
  In the bo -- dy and the blood;
  He will give to all the faith -- ful
  His own self for heav'n -- ly food.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Rank on rank the host of hea -- ven
  Spreads its van -- guard on the way,
  As the Light of light de -- scen -- deth
  From the realms of end -- less day,
  That the powers of hell may van -- ish
  As the dark -- ness clears a -- way.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  At his feet the six winged ser -- aph,
  Che ru -- bim with sleep -- less eye,
  Veil their fac -- es to the pre -- sence,
  As with cease -- less voice they cry:
  Al -- le -- lu -- ia, Al -- le -- lu -- ia
  Al -- le -- lu -- ia, Lord most high!
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
