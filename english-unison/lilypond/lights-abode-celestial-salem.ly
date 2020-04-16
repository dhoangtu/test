\version "2.18.2"

\header {
  title = "Light's Abode, Celestial Salem"
  composer = "AD PERRENIS"
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
  %{	01	%} d4 d f g |
  %{	02	%} a d, g2 |
  %{	03	%} e f4 f |
  %{	04	%} g a bes bes |
  %{	05	%} a2 a4 bes |
  %{	06	%} c c d c |
  %{	07	%} a2 a |
  %{	08	%} a4 b! c f, |
  %{	09	%} f g a2 |
  %{	10	%} g4 a a d, |
  %{	11	%} g f e2 |
  %{	12	%} e d4 f |
  %{	13	%} g e a bes |
  %{	14	%} a1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Light's a -- bode, ce -- les -- tial sa -- lem,
  vi -- sion whence true peace doth spring,
  bright -- er than the heart can fan -- cy,
  man -- sion of the high -- est King;
  O how glor -- ious are the prais -- es which of Thee the pro -- phets sing!
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  There for ev -- er and for ev -- er al -- le -- lu -- ia is out poured;
  for un -- end -- ing, for un -- end -- bro -- ken is the feat -- day of the Lord;
  all is pure and all is ho -- ly that with -- in thy walls is stored.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  There no cloud nor pass -- ing va -- por dims the bright -- ness of the air;
  end -- less noon -- day, glor -- ious noon -- day, from the Sun of suns is there;
  there no night brings rest from la -- bor, for un -- known are toil and care.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  O how glo -- rious and res -- plen -- dent,
  fra -- gile bo -- dy, shalt thou be, when en -- dued with heav'n -- ly beau -- ty,
  full of health, and strong, and free, full of vi -- gor,
  full of plea -- sure that shall last e -- ter -- nal -- ly!
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
