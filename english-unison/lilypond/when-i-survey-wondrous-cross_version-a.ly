\version "2.18.2"

\header {
  title = "When I survey Wondrous Cross"
  composer = "Lowell Mason, Isaac Watts"
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
  %{	01	%} f2 f4 g |
  %{	02	%} a2 g4 (a) |
  %{	03	%} bes2 a4 (g) |
  %{	04	%} a1 |
  %{	05	%} a2 a4 a |
  %{	06	%} bes2 a4 (g) |
  %{	07	%} f2 e4 (f) |
  %{	08	%} g1 |
  %{	09	%} f2 f4 g |
  %{	10	%} a2 g4 (a) |
  %{	11	%} bes2 a4 (g) |
  %{	12	%} a1 |
  %{	13	%} a2 a4 a |
  %{	14	%} g2 f |
  %{	15	%} g a4 (g) |
  %{	16	%} a1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  When I sur -- vey the won -- drous cross
  Where the young Prince of glo -- ry died,
  My rich -- est gain I count but loss
  And pour con -- tempt on all my pride.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  For -- bid it, Lord, that I should boast,
  Save in the cross of Christ, my God:
  All the vain things that charm me most,
  I sac -- ri -- fice them to his blood.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  See, from his head, his hands, his feet,
  Sor -- row and love flow min -- gled down!
  Did e'er such love and sor -- row meet,
  Or thorns com -- pose so rich a crown?
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Were the whole realm of na -- ture mine,
  That were an off -- 'ring far too small;
  Love so a -- maz -- ing so di -- vine,
  De -- mands my soul, my life, my all.
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
