\version "2.18.2"

\header {
  title = "Sweet Is The Work"
  composer = "Craig Klampe, Isaac Watts"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons Attribution 3.0 License by Craig Klampe" } }
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
  \partial 4 c4 |
  %{	01	%} f8 g a4 f |
  %{	02	%} bes8 a g4 a |
  %{	03	%} f8 d c4 f |
  %{	04	%} f8 e f4 a |
  %{	05	%} c8 a d4 c |
  %{	06	%} bes8 a g4 a |
  %{	07	%} f8 d c4 f |
  %{	08	%} f e f ( |
  %{	09	%} f2) \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Sweet is the work, my God, my King,
  To praise thy name, give thanks and sing,
  To show thy love by morn -- ing light,
  And talk of all thy truths at night.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Sweet is the day of sa -- cred rest.
  No mor -- tal care shall seize by breast.
  Oh, may my heart in tune be found,
  Like Da -- vid's harp of sol -- emn sound!
}

verseThree = \lyricmode {
  \set stanza = #"3."
  My heart shall tri -- umph in my Lord
  And bless his works and bless his word.
  Thy works of grace, how bright they shine!
  How deep thy coun -- sels, how di -- vine!
}

verseFour = \lyricmode {
  \set stanza = #"4."
  But, oh, what tri -- umph shall I raise to
  Thy dear name through end -- less days,
  When in the realms of joy I see
  Thy face in full fe -- lic -- i -- ty!
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
