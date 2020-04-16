\version "2.18.2"

\header {
  title = "Be Known To Us In Breaking Bread"
  composer = "Orlando Gibbons, James Montgomery"
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
  d2 a'4 fis |
  g a b b |
  a \fermata r a2 |
  d4 b cis cis |
  b \fermata r d2 |
  cis4 b a a |
  g fis e \fermata r |
  a2 a4 d, |
  fis e d2 \fermata \bar "|."
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
