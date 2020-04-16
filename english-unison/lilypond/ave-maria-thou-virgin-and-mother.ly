\version "2.18.2"

\header {
  title = "Ave Maria! Thou Virgin And Mother"
  composer = "A. Edmonds Tozer"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
  \time 3/4
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
musicVerseSoprano = \relative c'' {
  %{	01	%} bes4 c bes |
  %{	02	%} ees d c |
  %{	03	%} bes g aes |
  %{	04	%} bes (g) f |
  %{	05	%} ees f ees |
  %{	06	%} bes' aes g |
  %{	07	%} g f ees |
  %{	08	%} f2. |
  %{	09	%} bes4 c bes |
  %{	10	%} ees d c |
  %{	11	%} bes g aes |
  %{	12	%} bes (g) f |
  %{	13	%} ees f ees |
  %{	14	%} bes' bes aes |
  %{	15	%} g g f |
  %{	16	%} ees2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  A -- ve Ma -- ri -- a! Thou Vir -- gin and Mo -- ther,
  Fond -- ly thy chil -- dren are call -- ing to thee;
  Thine are the grac -- es, un -- claimed by an -- oth -- er,
  Sin -- less and beau -- ti -- ful, star of the sea.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  A -- ve Ma -- ri -- a! thy chil -- dren are kneel -- ing,
  words of en -- dear -- ment are whis -- pered to thee;
  Soft -- ly thy spi -- rit up -- on us is steal -- ing,
  Sin -- less and beau -- ti -- ful, star of the sea.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  A -- ve Ma -- ri -- a! thy arms are ex -- tend -- ing,
  glad -- ly with -- in them for shel -- ter we flee;
  Are thy sweet eyes on thy lone -- ly ones bend -- ing,
  Sin -- less and beau -- ti -- ful, star of the sea.
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
