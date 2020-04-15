\version "2.18.2"

\header {
  title = "Around The Throne A Glorious Band"
  composer = "Ronald Hill"
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
musicVerseSoprano = \relative c' {
  %{	01	%} d4 d d |
  %{	02	%} a'2 b!4 |
  %{	03	%} c4. (b!8) a4 |
  %{	04	%} g2 b!4 |
  %{	05	%} b!2 c4 |
  %{	06	%} d2 a4 |
  %{	07	%} c4 (a) b! |
  %{	08	%} a2 a4 |
  %{	09	%} c2 a4 |
  %{	10	%} g2 d4 |
  %{	11	%} f4. (e8) d4 |
  %{	12	%} c2 c4 |
  %{	13	%} f2 g4 |
  %{	14	%} a2 g4 |
  %{	15	%} f c'2 |
  %{	16	%} a g4 |
  %{	17	%} f (g) e |
  %{	18	%} d2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Lo! round the throne a glor -- ious band,
  the saints in count -- les my -- riads stand,
  of eve -- ry, tongue re -- deemed to God,
  ar -- rayed in gar -- ments washed in blood.
  Al -- le -- lu -- ia!
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Through tri -- bu -- lat -- ion great they came;
  they bore the cross, des -- pised the shame;
  from all their la -- bors now they rest,
  in God's e -- ter -- nal glo -- ry blest.
  Al -- le -- lu -- ia!
}

verseThree = \lyricmode {
  \set stanza = #"3."
  They see their Sav -- ior face to face,
  and sing the tri -- umphs of his grace;
  Him day and night they cease -- less praise,
  to Him the loud thanks -- giv -- ing raise:
  Al -- le -- lu -- ia!
}

verseFour = \lyricmode {
  \set stanza = #"4."
  ''Wor -- thy the Lamb, for sin -- ners slain,
  through end -- less years to live and reign;
  Thou hast re -- deemed us by thy blood,
  and made us kings and priests to God.''
  Al -- le -- lu -- ia!
}

verseFive = \lyricmode {
  \set stanza = #"5."
  O may we tread the sa -- cred road
  that saints and ho -- ly mar -- tyrs trod;
  wage to the end the glo -- rious strife,
  and win, like them, a crown of life.
  Al -- le -- lu -- ia!
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
