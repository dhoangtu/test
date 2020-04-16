\version "2.18.2"

\header {
  title = "Be Known To Us In Breaking Bread"
  composer = "St. Flavian, James Montgomery"
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
  bottom-margin = 5\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  system-system-spacing = #'((basic-distance . 3) (padding . 5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
                    \partial 4 f4 |
  %{	01	%} f e f a |
  %{	02	%} g g f8 \fermata r f4 |
  %{	03	%} bes a f g |
  %{	04	%} a2 \fermata r4 a |
  %{	05	%} a bes c a |
  %{	06	%} f g a8 \fermata r a4 |
  %{	07	%} g f f e |
  %{	08	%} f1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Be known to us in break -- ing bread, but do not then de -- part;
  Sa -- vior, a -- bide with us, and spread Thy ta -- ble in our heart.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Lord sup with us in love di -- vine; Thy bod -- y and thy blood.
  That liv -- ing bread, that heav'n -- ly wine, be our im -- mor -- tal food.
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
    >>
}
