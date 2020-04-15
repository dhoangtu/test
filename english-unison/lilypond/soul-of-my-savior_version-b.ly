\version "2.18.2"

\header {
  title = "Soul Of My Savior"
  composer = "Austrian Song, J. Maher, S.J., ANIMA CHRISTI"
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
  %{	01	%} c2 f4 f |
  %{	02	%} f2 e |
  %{	03	%} f4 f g g |
  %{	04	%} a1 |
  %{	05	%} a2 g4 a |
  %{	06	%} f2 e |
  %{	07	%} e4 f e d |
  %{	08	%} c1 |
  %{	09	%} c'2 bes4 c |
  %{	10	%} a2 g |
  %{	11	%} c4 c bes c |
  %{	12	%} a1 |
  %{	13	%} g4 (bes) a g |
  %{	14	%} f2 bes |
  %{	15	%} a4 a g g |
  %{	16	%} f1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Soul of my Sav -- ior sanc -- ti -- fy my breast,
  Bod -- y of Christ, be Thou my sav -- ing guest;
  Blood of my Sav -- ior, bathe me in thy tide,
  Wash me with wa -- ter flow -- ing from thy side.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Strength and pro -- tec -- tion may thy pas -- sion be;
  O bless -- ed Je -- sus, hear and an -- swer me;
  Deep in thy wounds, Lord, hide and shel -- ter me,
  So shall I nev -- er, nev -- er part from Thee.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Guard and de -- fend me from the foe ma -- lign;
  In death's dread mo -- ments make me on -- ly thine;
  Call me and bid me come to Thee on high,
  Where I may praise Thee with thy saints for aye.
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
    >>
}
