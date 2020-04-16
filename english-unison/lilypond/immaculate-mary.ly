\version "2.18.2"

\header {
  title = "Immaculate Mary"
  composer = "Lourdes Pilgrim's Tune"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
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

printBold = {
  \override Lyrics.LyricText.font-series = #'bold
}

% Verse music
musicVerseSoprano = \relative c' {
  \partial 4 d4 |
  %{	01	%} g g b |
  %{	02	%} g g b |
  %{	03	%} a a b8 (a) |
  %{	04	%} g2 d4 |
  %{	05	%} g g b |
  %{	06	%} g g b |
  %{	07	%} a a b8 (a) |
  %{	08	%} g2. \bar "" \break
  
  %{	09	%} c2 c4 |
  %{	10	%} b2 b4 |
  %{	11	%} a a a |
  %{	12	%} d2 g,4 |
  %{	13	%} c2 c4 |
  %{	14	%} b b b |
  %{	15	%} a2 (b8 a) |
  %{	16	%} g2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Im -- ma -- cu -- late Ma -- ru! Our hearts are on fire;
  That ti -- tle so won -- drous
  Fills all our de -- sire!
  
  \printBold
  
  A -- ve, A -- ve, A -- ve, Ma -- ri -- a!
  A -- ve, A -- ve, Ma -- ri -- a!
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  We pray for God's glo -- ry,
  May his king -- dom come;
  We pray for his vi -- car, our fa -- ther in Rome.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  We pray for our moth -- er, the Church up -- on earth,
  And bless, sweet -- est La -- dy, the ladn of our birth.
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
