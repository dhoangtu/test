\version "2.18.2"

\header {
  title = "Peace, Perfect Peace"
  composer = " "
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
  %{	01	%} f2 a4 f |
  %{	02	%} c'2. f,4 |
  %{	03	%} bes4. bes8 bes4 a |
  %{	04	%} g2. g4 |
  %{	05	%} e f d c |
  %{	06	%} f a g g |
  %{	07	%} f1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Peace, per -- fect peace, in this dark world of sin?
  The blood of Je -- sus whis -- pers peace with -- in.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Peace, per -- fect peace, by throng -- ing du -- ties pressed?
  To do the will of Je -- sus, this is rest.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Peace, per -- fect peace, with sor -- row surg -- ing round?
  In Je -- sus's pres -- ence nought but calm is found.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Peace, per -- fect peace, death shad -- owing us and ours?
  Je -- sus has van -- quished death and all its pow'rs.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  It is e -- nough: earth's strug -- gles soon shall cease,
  And Je -- sus call us to heaven's per -- fect peace.
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
      \new Lyrics \lyricsto sopranos \verseFive
    >>
}
