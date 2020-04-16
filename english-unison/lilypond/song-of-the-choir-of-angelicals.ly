\version "2.18.2"

\header {
  title = "Song Of The Choir Of Angelicals"
  composer = "Arthur Somerwell, Cardinal Newman"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
  \time 3/4
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
  %{	01	%} ees4 f g |
  %{	02	%} aes2 g4 |
  %{	03	%} c2 bes4 |
  %{	04	%} ees2 (d4) |
  %{	05	%} c d ees |
  %{	06	%} bes (aes8 g) aes4 |
  %{	07	%} g2. ( |
  %{	08	%} f2) bes4 |
  %{	09	%} c2 d4 |
  %{	10	%} bes2 ees,4 |
  %{	11	%} aes (g8 f) g4 |
  %{	12	%} f2 f4 |
  %{	13	%} bes (ees,) f |
  %{	14	%} g (aes8 g) f4 |
  %{	15	%} ees2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Praise to the Ho -- liest in the height...
  And in the depth be praise:
  In all his words most won -- der -- ful;
  Most sure in all his ways.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O lov -- ing wis -- dom of our God!
  When all was sin and shame,
  A sec -- ond A -- dam to the fight
  And to the res -- cue came.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  O wis -- est love! That flesh and blood
  Which did in A -- dam fail,
  Should strive a -- fresh a -- gaints their foe,
  Should strive and should pre -- vail.
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
