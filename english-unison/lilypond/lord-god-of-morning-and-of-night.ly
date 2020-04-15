\version "2.18.2"

\header {
  title = "Lord, God Of Morning And Of Night"
  composer = "FULDA, Frances Turner Palmgrave"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key a \major
  \time 3/4
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
musicVerseSoprano = \relative c' {
  %{	01	%} e4 a gis |
  %{	02	%} a2 b4 |
  %{	03	%} e, (fis) gis |
  %{	04	%} a2. |
  %{	05	%} a4 gis fis |
  %{	06	%} b2 gis4 |
  %{	07	%} gis8 (fis e4) dis |
  %{	08	%} e2 e4 |
  %{	09	%} e2 a4 |
  %{	10	%} a (gis) fis |
  %{	11	%} e2 cis'4 |
  %{	12	%} cis (b) a |
  %{	13	%} gis2 d'4 |
  %{	14	%} d (cis) b |
  %{	15	%} a (b) gis |
  %{	16	%} a2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Lord God of morn -- ing and of night,
  We thank you for your gifts of light;
  As in the dawn the sha -- dows fly,
  We seem to find you now more nigh.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Fresh hopes have wak -- ended in the heart,
  Fresh force to do our dai -- ly part;
  In peace -- ful sleep our strength re -- store,
  Through -- out the day to serve you more.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  O Lord of light, your love a -- lone
  Can make our hu -- man hearts your own.
  Be ev -- er with us, Lord, that we
  Your bless -- ed face one day may see.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Praise God, our mak -- er and our friend;
  Praise him through time, till time shall end;
  Till psalm and song his name a -- dore,
  Through heav'n great day of ev -- er -- more.
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
