\version "2.18.2"

\header {
  title = "Christ The Fair Glory"
  composer = "Rouen, Rabanus Maurus"
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
  %{	01	%} c'2 g4 a |
  %{	02	%} g4. (f8) e2 |
  %{	03	%} a4. b8 g4 c |
  %{	04	%} c (b) c2 |
  %{	05	%} c2 d4 d |
  %{	06	%} e (c) a2 |
  %{	07	%} d4. a8 b4 c |
  %{	08	%} b (a) g2 |
  %{	09	%} e2 f4 g |
  %{	10	%} f e d2 |
  %{	11	%} a'4. b8 c4 a |
  %{	12	%} d (c) b2 |
  %{	13	%} g4. (f8) e4 f |
  %{	14	%} e2 (d) |
  %{	15	%} c1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Christ, the faire glo -- ry of the ho -- ly an -- gels,
  Ru -- ler of all, and au -- thor of cre -- a -- tion,
  grant us in thy mer -- cy grace
  To win by pa -- tience
  Realms ev -- er -- last -- ing.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Send forth thine an -- gel Mich -- ael from thy pres -- ence:
  Peace -- mak -- er bless -- ed, may he hov -- er o'er us
  Hal -- low our dwel - lings, that for us thy chil -- dren
  All things may pros -- per.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Send forth thine an -- gels Raph -- ael the heal -- er,
  Through him with whole -- some me -- di -- cines of sal -- va -- tion,
  Heal our back -- slid - ing, and in paths of good -- nes
  Guide our steps dai -- ly.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  May the blest Mo -- ther of our God and Sav -- ior,
  May all the count -- less com -- pa -- ny of an -- gels,
  May the as -- sem - bly of the saints in glo -- ry,
  Ev -- er as -- sist us.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  Fa -- ther Al -- might -- y, Son and Ho -- ly Spir -- it,
  God -- head e -- ter -- nal, grant us our pe -- ti -- tion;
  Thine be the glo - ry through the whole cre -- a -- tion
  Now and for -- ev -- er.
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
      \new Lyrics \lyricsto sopranos \verseFour
      \new Lyrics \printItalic \lyricsto sopranos \verseFive
      \new Lyrics \lyricsto sopranos \verseSix
    >>
}
