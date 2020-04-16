\version "2.18.2"

\header {
  title = "Down In Adoration Falling"
  composer = "St. Thomas, Tantum Ergo"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
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
  %{	01	%} d4 e fis d |
  %{	02	%} e fis g fis |
  %{	03	%} b a g fis |
  %{	04	%} e e d2 |
  %{	05	%} d'4 cis d a |
  %{	06	%} b a g fis |
  %{	07	%} b cis d cis |
  %{	08	%} b b a2 |
  %{	09	%} a4 a fis d |
  %{	10	%} e fis g fis |
  %{	11	%} b a g fis |
  %{	12	%} e e d2 |
  %{	13	%} g1 |
  %{	14	%} fis1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Down in a -- do -- ra -- tion fall -- ing
  This great Sac -- ra -- ment we hail
  Ov -- er an -- cient forms of wor -- ship
  New -- er rites of grace pre -- vail
  Faith will tell us Christ is pres -- ent
  When our hu -- man sen -- ses fail.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  To the ev -- er -- last -- ing Fa -- ther
  And the Son who made us free
  And the Spi -- rit God pro -- ceed -- ing
  From Them each e -- ter -- nal -- ty
  Be sal -- va -- tion hon -- or bless -- ing
  Might and end -- less ma -- jes -- ty.
  A -- men.
}

verseThree = \lyricmode {
  \set stanza = #"1."
  Tan -- tum er -- go Sa -- cra -- men -- tum
  Ve -- ne -- re -- mur cer -- nu -- i:
  Et an -- ti quum do -- cu -- men -- tum
  No -- vo ce -- dat ri -- tu -- i:
  Prae -- stet fi -- des sup -- ple -- men -- tum
  Sen -- su -- um de -- fec -- tu -- i.
}

verseFour = \lyricmode {
  \set stanza = #"2."
  Ge -- ni -- to -- ri Ge -- ni -- to -- que
  Laus -- et ju -- bi -- la -- ti -- o,
  Sa -- lus, ho -- nor, vir -- tus quo -- que
  Sit et be -- ne -- dic -- ti -- o.
  Pro -- ce -- den -- ti ab u -- tro -- que
  Com -- par sit lau -- da -- ti -- o.
  A -- men.
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
