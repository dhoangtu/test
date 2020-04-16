\version "2.18.2"

\header {
  title = "Hail, Holy Queen, Enthrowned Above"
  composer = "English Air"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key c \major
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

printBold = {
  \override Lyrics.LyricText.font-series = #'bold
}

% Verse music
musicVerseSoprano = \relative c' {
  \partial 4 e8 (f) |
  %{	01	%} g4 g g a |
  %{	02	%} g4. f8 e2 |
  %{	03	%} f e |
  %{	04	%} d c4 e8 (f) |
  %{	05	%} g4 g g a |
  %{	06	%} g4. f8 e2 |
  %{	07	%} f e |
  %{	08	%} d c |
  %{	09	%} c'4 b a d8 (c) |
  %{	10	%} b4 a g2 |
  %{	11	%} c4 b a d8 (c) |
  %{	12	%} b4 a g2 |
  %{	13	%} c4 d e c |
  %{	14	%} c b c2 \break
  %{	15	%} c4 (b) a2 |
  %{	16	%} d4 (c) b2 |
  %{	17	%} c4 (d) e c |
  %{	18	%} d2 c \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Hail ho -- ly queen en -- throned a -- bove, O Ma -- ri -- a,
  Hail queen of mer -- cy and of love, O Ma -- ri -- a.
  Tri -- umph, all ye Cher -- u -- bim,
  Sing with us ye Ser -- a -- phim,
  Heav'n and earth re -- sound the hymn:
  
  \printBold
  Sal -- ve, sal -- ve, sal -- ve, Re -- gi -- na.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  The cause of joy to all be -- low, O Ma -- ri -- a,
  The spring through which all grac -- es flow, O Ma -- ri -- a.
  An -- gels, all your prais -- es bring,
  Earth and heav'n, with us sing,
  All cre -- a -- tion ech -- o -- ing:
}

verseThree = \lyricmode {
  \set stanza = #"3."
  O gen -- tle, lov -- ing, ho -- ly one, O Ma -- ri -- a.
  The God of light be -- came your Son, O Ma -- ri -- a.
  Tri -- umph, all ye Cher -- u -- bim, sing with us, ye Ser -- a -- phim,
  Heav'n and earth re -- sound the hymn:
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
