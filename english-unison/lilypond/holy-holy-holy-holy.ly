\version "2.18.2"

\header {
  title = "Holy! Holy! Holy! Holy!"
  composer = "German Traditional"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 2/4
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
  system-system-spacing = #'((basic-distance . 3) (padding . 5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} g4 g |
  %{	02	%} g b |
  %{	03	%} d d |
  %{	04	%} e (c) |
  %{	05	%} b2 |
  %{	06	%} d4 d |
  %{	07	%} c c |
  %{	08	%} b c8 (b) |
  %{	09	%} a2 |
  %{	10	%} d4 d |
  %{	11	%} c c |
  %{	12	%} b c8 (b) |
  %{	13	%} a2 |
  %{	14	%} g4 a |
  %{	15	%} b c8 (e) |
  %{	16	%} d2 |
  %{	17	%} b4 c |
  %{	18	%} d e8 (c) |
  %{	19	%} b4 a |
  %{	20	%} g2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Ho -- ly! Ho -- ly! Ho -- ly! Ho -- ly!
  Thou art Je -- sus whose de -- light
  This to stay by day and night
  In this Sa -- cra -- ment
  With thy chil -- dren care to tend.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Ho -- ly! Ho -- ly! Ho -- ly! Ho -- ly!
  O Host di -- vine on the beam
  From whose side in sa -- cred stream
  Wa -- ter flows and blood,
  Cleanse us in that sav -- ing flood.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Ho -- ly! Ho -- ly! Ho -- ly! Ho -- ly!
  Who this wea -- ry earth hast trod
  Son of Ma -- ry, Son of God,
  There, for us a -- lone
  Ev -- er -- more up -- on thy throne.
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
