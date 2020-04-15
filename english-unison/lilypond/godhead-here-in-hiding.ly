\version "2.18.2"

\header {
  title = "Godhead Here In Hiding"
  composer = "Adoro Te, St. Thomas Aquinas"
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
  top-margin = 5\mm
  bottom-marign = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  page-count = #1
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} c4 e g g |
  %{	02	%} g (a) g2 |
  %{	03	%} f4 e d c |
  %{	04	%} c1 |
  %{	05	%} c4 e g g |
  %{	06	%} g (a) g2 |
  %{	07	%} f4 e d c |
  %{	08	%} c1 |
  %{	09	%} g'4 g a8 (b) c4 |
  %{	10	%} c (b) a2 |
  %{	11	%} a4 g f e |
  %{	12	%} d1 |
  %{	13	%} e4 g f e |
  %{	14	%} d (c) d2 |
  %{	15	%} e4 c d c |
  %{	16	%} c1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  God -- head here in hid -- ing, whom I do a -- dore,
  Masked by these bare sha -- dows, shape and noth -- ing more,
  See, Lord, at thy ser -- vice low lies here a heart
  Lost, all lost in won -- der at the God thou art.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  See -- ing, touch -- ing, tast -- ing are in thee de -- ceived,
  How says trust -- y hear -- ing that shall be be -- lieved?
  What God's Son has told me, take for truth I do;
  Truth him -- self speaks tru -- ly or there's noth -- ing true.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  On the cross thy God -- head made no sign to men,
  Here thy ver -- y man -- hood steals from hu -- man ken:
  Both are my con -- fes -- sion, both are my be -- lief,
  And I pray the pray -- er of the dy -- ing thief.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  I am not like Thom -- as, wounds I can -- not see,
  But can plain -- ly call the Lord and God as he;
  Let me to a deeper faith dai -- ly near -- er move,
  Dai -- ly make me hard -- er hope and dear -- er love.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  O Thou our re -- mind -- er of Christ cru -- ci -- fied,
  Liv -- ing bread, the life-of us for _ whom He died,
  Lend this life to me then: feed and feast my mind,
  There be Thou the sweet -- ness man was meant to find.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  Bring the ten - der tale of the Pe -- li -- can;
  Bathe me Je -- sus Lord, in what thy bos -- om ran
  Blood where -- of a sin -- gle drop has power to win
  All the world for -- give -- ness of its world of sin.
}

verseSeven = \lyricmode {
  \set stanza = #"7."
  Je sus, whom I look at shroued -- ed here be -- low,
  I be -- seech Thee send me what I thrist for so,
  Some day to gaze on Thee face to face in light
  And be blest for ev -- er with thy glo -- ry's sight.
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
      \new Lyrics \printItalic \lyricsto sopranos \verseSix
      \new Lyrics \lyricsto sopranos \verseSeven
    >>
}
