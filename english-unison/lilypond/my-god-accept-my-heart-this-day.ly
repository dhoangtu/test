\version "2.18.2"

\header {
  title = "My God, Accept My Heart This Day"
  composer = "Matthew Bridges"
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
                    \partial 4 c4 |
  %{	01	%} a'2 g4 |
  %{	02	%} f2 e4 |
  %{	03	%} e (d) f |
  %{	04	%} c2 c'4 |
  %{	05	%} c (bes) a |
  %{	06	%} a (g) f |
  %{	07	%} f2. ( |
  %{	08	%} e2) c4 |
  %{	09	%} a'2 g4 |
  %{	10	%} f2 e4 |
  %{	11	%} e (d) f |
  %{	12	%} c2 c'4 |
  %{	13	%} c (bes) g |
  %{	14	%} f (a) g |
  %{	15	%} f2. ( |
                    f2) \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  My God, ac -- cept my heart this day, and make it al -- ways thine,
  that I from Thee no more may stray,
  no more from thee de -- cline.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Be -- fore the cross of him who died, be -- hold, I pros -- trate fall;
  let ev -- ery sin be cru -- ci -- fied, and Christ be all in all.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  A -- noint me with thy heav'n -- ly grace, and seal me for thine own,
  that I may see thy glo -- rious face, and wor -- ship near thy throne.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Let ev -- ery thought and work and word, to Thee be ev -- er giv-en;
  then life shall be thy ser -- vice, Lord, and death the gate of heaven.
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
