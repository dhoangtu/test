\version "2.18.2"

\header {
  title = "Virgin Wholly, Marvelous"
  composer = "Virginity 77. 77., Herold 1808"
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
  %{	01	%} d4 fis a a |
  %{	02	%} g a fis2 |
  %{	03	%} d'4 d cis cis |
  %{	04	%} b b a2 |
  %{	05	%} a4 cis d a |
  %{	06	%} b a fis2 |
  %{	07	%} a4 a g fis |
  %{	08	%} e e d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Vir -- gin whol -- ly mar -- vel -- ous,
  Who didst bear God's Son for us,
  Worth -- less is my tongue and weak
  Of thy ho -- li -- ness to speak.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Heav'n and earth, and all that is,
  Thrilled to -- day with ec -- sta -- sies,
  Chant -- ing glo -- ry un -- to thee,
  Sing thy praise with fes -- tal glee.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Cher -- u -- bim with four -- fold face
  Are no peers of thine in grace,
  And the six -- winged Ser -- a -- phim,
  'Mid thy splen -- dor, shine but dim.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Pur -- er art thou than are all
  Heav'n -- ly hosts an -- ge -- li -- cal,
  Who de -- light with pomp and state
  On thy bea -- t'ous Child to wait.
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
