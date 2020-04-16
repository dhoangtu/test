\version "2.18.2"

\header {
  title = "O Blessed Trinity"
  composer = "Edward D'evry, Fr. Frederick William Faber"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

globalSettings = {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \key d \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

verseSettings = {
  \phrasingSlurDashed
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
musicVerseSoprano = \relative c' {
  %{	01	%} fis2 g4 a |
  %{	02	%} b2. b4 |
  %{	03	%} a2. fis4 |
  %{	04	%} g a b d |
  %{	05	%} cis4. b8 a4 gis |
  %{	06	%} a2. a4 |
  %{	07	%} e'4. d8 cis4 b |
  %{	08	%} a2 b |
  %{	09	%} a r \bar "||"
}

% Chorus music
musicChorusSoprano = \relative c'' {
  \set Score.currentBarNumber = #10
  %{	10	%} d4 a fis g |
  %{	11	%} a2. r4 |
  %{	12	%} d a fis g |
  %{	13	%} a1 |
  %{	14	%} fis2 g4 a |
  %{	15	%} b1 |
  %{	16	%} a1 \bar "|."
}

% Verse lyrics
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  O bless -- ed Tri -- ni -- ty! Thy chil -- dren dare to lift their hearts to Thee,
  And bless thy tri -- ple ma -- jes -- ty!
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  O bless -- ed Tri -- ni -- ty! Bright Son! Who art the Fa -- ther's mind dis -- played,
  Thou art be -- got -- ten and not made.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  O bless -- ed Tri -- ni -- ty! Co -- e -- qual Spi -- rit! Wond -- rous Ad -- vo -- cate!
  By Thee the God -- head is com -- plete.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  O bless -- ed Tri -- ni -- ty! We praise Thee, bless Thee, wor -- ship Thee as One,
  Yet Three are on the sin -- gle  throne.
}

% Chorus lyrics
lyricChorus = \lyricmode {
  Ho -- ly Tri -- ni -- ty! Bless -- ed E -- qual Three,
  One God, we praise Thee.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \globalSettings \verseSettings \stemUp \slurUp \musicVerseSoprano
        }
      >>
      \new Lyrics \lyricsto soprano \lyricVerseOne
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseTwo
      \new Lyrics \lyricsto soprano \lyricVerseThree
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseFour
    >>
}

\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \override Staff.TimeSignature #'stencil = ##f
        \new Voice = "soprano" {
          \globalSettings \stemUp \slurUp \musicChorusSoprano
        }
      >>
      \new Lyrics \lyricsto soprano \lyricChorus
    >>
}
