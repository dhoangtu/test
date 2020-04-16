\version "2.18.2"

\header {
  title = "All Ye Weary"
  composer = "B. Tours"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
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
musicVerseSoprano = \relative c'' {
  %{	01	%} bes4 g f ees |
  %{	02	%} bes' g g f |
  %{	03	%} ees f g g |
  %{	04	%} bes a! bes2 |
  %{	05	%} d4 bes a! g |
  %{	06	%} d' bes a! g |
  %{	07	%} f g bes bes |
  %{	08	%} d c bes2 |
  %{	09	%} c4 aes g f |
  %{	10	%} c' aes g f |
  %{	11	%} ees f aes g |
  %{	12	%} bes ees c2 |
  %{	13	%} ees4 c bes aes |
  %{	14	%} c aes g f |
  %{	15	%} bes ees, g f |
  %{	16	%} g f ees2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  All ye wea -- ry, all ye wan -- d'rers, all ye bowed with grief and care,
  turn ye to the bless -- ed Mo -- ther.
  All your tri -- als she will share;
  She will be your con -- so -- la -- tion in your pain and lone -- li -- ness.
  Ask her pray'rs; she waits to aid you, waits to com -- fort and to bless.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Ye who would o -- bey yet fal -- ter, ye who strive yet faint and fall, ye who stum -- ble with your bur -- dens,
  turn ye, turn ye, one and all;
  For the Bless -- ed Mo -- ther's wait -- ing, She will hear your faint -- est cry;
  Christ, your Sa -- viour, gave ye to her, in her care to live and die.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Ye who've giv -- en up the bat -- tle, ye who bear sin's deep -- est scar, ye who dare not face your Mak -- er,
  turn to her as guid -- ing star;
  She will lead you gent -- ly, sure -- ly, back to faith and hope and love,
  ye may know in her God's mer -- cy, shin -- ing on us from a -- bove.
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
