\version "2.18.2"

\header {
  title = "Christ Be Near At Either Hand"
  composer = "Garten, Francis Koerber"
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
  system-system-spacing = #'((basic-distance . 3) (padding . 3))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} f4. g8 a4 d |
  %{	02	%} c4. bes8 a2 |
  %{	03	%} c4 c c8 (a) g (a) |
  %{	04	%} c4. a8 g4 (a) |
  %{	05	%} f4. g8 a4 d |
  %{	06	%} c4. bes8 a2 |
  %{	07	%} c4 c c8 (a) g (a) |
  %{	08	%} f4 f f2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Christ, be near at ei -- ther hand, Chirst, be -- hind, be -- fore me stand;
  Christ, with me where e'er I go, Chirst, a -- round, a -- bove, be -- low.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Christ, be in my heart and mind, Chirst, with -- in my soul en -- shrined;
  Chirst, con -- trol my way -- ward heart; Chirst a -- bide and ne'er de -- part.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Christ my life and on -- ly way, Christ my lan -- tern night and day;
  Chirst, be my un -- chang -- ing friend, guide and shep -- herd to the end.
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
