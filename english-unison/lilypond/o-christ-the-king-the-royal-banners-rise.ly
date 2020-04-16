\version "2.18.2"

\header {
  title = "O Christ The King, The Banners Rise"
  composer = "Noel Jones, Vincent Uher"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons 3.0 License, for non-commercial use" } }
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
  %{	01	%} fis2 e4. d8 |
  %{	02	%} cis2. cis4 |
  %{	03	%} d g fis e |
  %{	04	%} a2. a4 |
  %{	05	%} b2. a4 |
  %{	06	%} g2 fis4. fis8 |
  %{	07	%} gis2 ais4 b |
  %{	08	%} cis2. cis4 |
  %{	09	%} d2 cis |
  %{	10	%} b (a4) a |
  %{	11	%} g4. fis8 e4 d |
  %{	12	%} a'1 |
}

% Chorus music
musicChorusSoprano = \relative c'' {
  \set Score.currentBarNumber = #13
  %{	13	%} b4 (a8 g a4) d, |
  %{	14	%} g2 fis4 fis |
  %{	15	%} g4. fis8 e2 |
  %{	16	%} d1 \bar "|."
}

% Verse lyrics
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  O Christ the King, the roy -- al ban -- ners rise.
  Thy cross, thy stan -- dard we raise to the skies,
  And hail Thee, ''Lord!'' and bow be -- fore thine eyes.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  Trans -- fig -- ured thou u -- pon the moun -- tain's height
  Re -- vealed the glo -- ry of the bride -- groom's face
  And showed to them thy pur -- pose and thy light.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  The cross, thy throne where thou wast lift -- ed high
  Em -- brac -- ing, bro -- ken and dark, the world's heart
  Till blood and wa -- ter gushed when pierced was thine.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Beath could not hold thee, nor a tomb con -- tain,
  O love and life, who from heav'n now dost reign,
  The King of kings, the Lord who heal -- pain.
}

% Chorus lyrics
lyricChorus = \lyricmode {
  Praise to Je -- sus! All praise and glo -- ry!
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \voiceOne \globalSettings \verseSettings \stemUp \slurUp \musicVerseSoprano
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
