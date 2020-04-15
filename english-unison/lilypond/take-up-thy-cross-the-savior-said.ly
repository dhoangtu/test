\version "2.18.2"

\header {
  title = "Take Up Thy Cross, The Savior Said"
  composer = "Charles William Everest"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key a \major
  \time 3/4
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
  system-system-spacing = #'((basic-distance . 2) (padding . 2))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} a4 a a |
  %{	02	%} fis2 a4 |
  %{	03	%} b2 gis4 |
  %{	04	%} fis2. |
  %{	05	%} fis4 gis a |
  %{	06	%} b2 e,4 |
  %{	07	%} gis2 fis4 |
  %{	08	%} e2. |
  %{	09	%} e4 a b |
  %{	10	%} cis2 a4 |
  %{	11	%} d2 cis4 |
  %{	12	%} b2. |
  %{	13	%} cis4 cis cis |
  %{	14	%} b2 a4 |
  %{	15	%} a2 gis4 |
  %{	16	%} a2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Take up thy cross, the Sav -- ior said,
  If thou wouldst my di -- sci -- ple be;
  De -- ny thy -- self, the world for -- sake,
  And hum -- bly fol -- low af -- ter me.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Take up thy cross, let not its weight
  fill thy weak spi -- rit with a -- larm;
  His strength shall bear thy spi -- rit up,
  And brace thy heart and nerve thine arm.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Take up thy cross, nor heed the shame,
  Nor let thy fool -- ish pride re -- bel;
  Thy Lord for thee the cross en -- dured,
  To save thy soul from death and hell
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Take up thy cross, then in his strength,
  and calm -- ly sin's wild de -- luge brave.
  'Twill guide you to a bet -- ter home:
  It points to glo -- ry o'er the grave.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Take up thy cross and fol -- low Christ,
  Nor think 'til death to lay it down;
  For on -- ly those who bear the cross
  may hope to wear the glo -- rious crown.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  To thee, great Lord, the One in Three,
  All praise for -- ev -- er -- more a -- scend:
  O grant us in our home
  to see the heaven -- ly life that knows no end.
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
