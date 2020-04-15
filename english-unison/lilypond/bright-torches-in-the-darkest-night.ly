\version "2.18.2"

\header {
  title = "Bright Torches In The Darkest Night"
  composer = "Noel Jones, Vincent Uher"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons 3.0 License, for non-commercial use" } }
}

global= {
  \key g \major
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
musicVerseSoprano = \relative c'' {
  %{	01	%} g2 g4 g |
  %{	02	%} g g g4. fis8 |
  %{	03	%} fis2 a |
  %{	04	%} a4 a a a |
  %{	05	%} a4. gis8 gis2 |
  %{	06	%} b2 b4 b |
  %{	07	%} b b b4. c8 |
  %{	08	%} a2 a4 b8 c |
  %{	09	%} d4 (c b) a |
  %{	10	%} g fis g2 |
  %{	11	%} d'4 (c b a |
  %{	12	%} g fis) g2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Bright tor -- ches in the dark -- est night,
  The saints of God as lights yet shine.
  Lord, let our wit -- ness rise with theirs,
  And through their prayers give grace di -- vine.
  A -- men.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  A dim -- ly burn -- ing wick were we,
  But now our faith fills with thy fire
  For Thou art all con -- sum -- ing love,
  Thy per -- fect will our hearts de -- sire.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  U -- nite thy saints through eve -- ry age
  And cleansed from sin lift us a -- bove,
  O Fath -- er, Son, and Ho -- ly Ghost,
  One God in glo -- ry, one in love.
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
