\version "2.18.2"

\header {
  title = "Christ Is Our Hope Whom We Have Seen"
  composer = "Noel Jones, Vincent Uher"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key c \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
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
                    \partial 2 e2 |
  %{	01	%} e4 f g c, |
  %{	02	%} a' b c2 |
  %{	03	%} c2 b4 a |
  %{	04	%} g f e2 |
  %{	05	%} e2 e |
  %{	06	%} e4 f g c, |
  %{	07	%} a' b gis gis |
  %{	08	%} a g! f e |
  %{	09	%} d2 e |
  %{	10	%} gis4 gis8 gis gis4 a |
  %{	11	%} c b a gis |
  %{	12	%} c b a g |
  %{	13	%} f e d2 |
  %{	14	%} c c4 d |
  %{	15	%} e2 f |
  %{	16	%} d e \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Christ is our hope whom we have seen each gen -- er -- a -- tion ri -- sing.
  All hu -- man dreams are met in Him the sub -- stance of our long -- ing.
  He is the light in dark -- est night
  Who calls us out with lamps a -- light.
  To work for God's own glo -- ry.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Christ is the e -- vi -- dence of God, the love whose name sus -- tains us.
  Let all the na -- tions of the world re -- ceive the truth: love saved us.
  Love clothed in flesh in Mar -- ry's womb,
  Love raised a -- gain from out the tomb,
  Love call -- ing us to glo -- ry.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Faith, hope, and love are God's own goft to souls who seek Christ's wis -- dom.
  The Spi -- rit knows this age is dim: we need the mind of Je -- sus.
  So God pours out both grace and pow'r
  U -- pon us all to face this hour,
  We will make known God's glo -- ry.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Praise be to Christ the_E -- ter -- nal Word through out all a -- ges reign -- ing
  O glo -- rious Spi -- rit, Lord of life, re -- ceive our heart's thanks -- giv -- ing.
  To God most high all glo -- ry be
  For time and for e -- ter -- ni -- ty
  One God in end -- less glo -- ry.
  
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
