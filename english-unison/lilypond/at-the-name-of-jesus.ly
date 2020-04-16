\version "2.18.2"

\header {
  title = "At The Name Of Jesus"
  composer = "Caroline Maria Noel"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \minor
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
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
  %{	01	%} d4 d8 (e) f4 g |
  %{	02	%} a2 a |
  %{	03	%} c4 a d cis |
  %{	04	%} d1 |
  %{	05	%} d,4 d8 (e) f4 g |
  %{	06	%} a2 a |
  %{	07	%} c4 a d cis |
  %{	08	%} d1 |
  %{	09	%} d4 d c c |
  %{	10	%} b!2 a |
  %{	11	%} bes4 a g4. g8 |
  %{	12	%} f1 |
  %{	13	%} c'4 a g a |
  %{	14	%} f2 e |
  %{	15	%} a4. g8 f4 e |
  %{	16	%} d1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  At the name of Je -- sus ev -- 'ry knee shall bow,
  ev -- 'ry tongue con -- fess him Kingo f glo -- ry now.
  'Tis the Fa -- ther's plea -- sure we should call Him Lord
  Who from the be -- gin -- ing was the might -- y Word.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  At his voice cre -- a -- tion Sprang at once to light.
  All the ang -- gle fac -- es, all the host of light.
  Thrones and do -- mi -- na -- tions, starts u -- pon their way,
  all the heav'n -- ly or -- ders in their great ar -- ray.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Might -- y and mys -- te -- rious in the high -- est height,
  God from ev -- er -- last -- ing, ve -- ry Light of Light;
  In the Fa -- ther's bos -- om with the Spir -- it blest,
  Love in love e -- ter -- nal, Rest, in per -- fect rest.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Christ -- ians this Lord Je -- sus shall re -- turn a -- gain,
  with his Fath -- er's glo -- ry, with his an -- gel -- train;
  For all wreaths of em -- pire meet up -- on his brow
  And our hearts con -- fess him King of glo -- ry now.
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
