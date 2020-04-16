\version "2.18.2"

\header {
  title = "The Lamb's High Banquet"
  composer = "Solemnis Haec Festivitas, Ad Cenam Agni Providi"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
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
                    \partial 4 d4 |
  %{	01	%} fis2 g4 |
  %{	02	%} a2 a4 |
  %{	03	%} b (a) g |
  %{	04	%} a2 a4 |
  %{	05	%} b2 cis4 |
  %{	06	%} d2 a4 |
  %{	07	%} fis2 g4 |
  %{	08	%} a2 fis4 |
  %{	09	%} a2 g4 |
  %{	10	%} e2 fis4 |
  %{	11	%} g (fis) e |
  %{	12	%} fis2 a4 |
  %{	13	%} d,2 e4 |
  %{	14	%} fis (d) g |
  %{	15	%} fis2 e4 |
                    d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  The Lamb's high ban -- quet we a -- wait in snow -- white robes of roy -- al state;
  And now, the Red Sea's chan -- nel passed,
  With Christ, our Prince, we sing at last.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Up -- on the al -- tar of the cross
  his bo -- dy hath re -- deemed our loss;
  And tast -- ing of his pre -- cious blood,
  our life is hid with him in God.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Now Christ our Pass -- o -- ver is slain,
  the Lamb of God that knows no stain;
  The true o -- bla -- tion of -- fered here,
  our own un -- leav -- ened bread sin -- cere.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  For Christ, a -- ris -- ing from the dead,
  from con -- quered hell vic -- to -- rious sped;
  He thrusts the tyr -- ant down to chains,
  and pa -- ra -- dise for man re -- gains.
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
