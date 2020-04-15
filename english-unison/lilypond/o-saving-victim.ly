\version "2.18.2"

\header {
  title = "O Saving Victim"
  composer = "O Salutairs Hostia, A. Werne, St. Thomas Aquinas"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key aes \major
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
  %{	01	%} ees4 f ees |
  %{	02	%} aes2 ees4 |
  %{	03	%} f2 f4 |
  %{	04	%} ees2. |
  %{	05	%} ees4 aes c |
  %{	06	%} bes2 g4 |
  %{	07	%} aes (g) f |
  %{	08	%} ees2 r4 |
  %{	09	%} ees ees ees |
  %{	10	%} ees (aes) c |
  %{	11	%} des2 c4 |
  %{	12	%} bes2. |
  %{	13	%} ees4 ees ees |
  %{	14	%} ees (c) aes |
  %{	15	%} c2 bes4 |
  %{	16	%} aes2 r4 \bar "||"
  %{	17	%} aes2. |
  %{	18	%} aes2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O sav -- ing Vic -- tim, o -- pen wide
  The gate of heav'n to man be -- low;
  Our foes press on from ev -- ery side;
  Your aid sup -- ply; Your strength be -- stow.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  To your great name be end -- less praise;
  Im -- mor -- tal God -- head, One in Three;
  Grant us, for end -- less length of days,
  In our true na -- tive land to be.
  A -- men.
}

verseLatinOne = \lyricmode {
  \set stanza = #"1."
  O sa -- lu -- ta -- ris Ho -- sti -- a
  Quae cae -- li pan -- dis os -- ti -- um.
  Bel -- la pre -- munt ho -- sti -- li -- a,
  Da ro -- bur, fer aux -- i -- li -- um.
}

verseLatinTwo = \lyricmode {
  \set stanza = #"2."
  U -- ni tri -- no -- que Do -- mi -- no
  Sit sem -- pi -- ter -- na glo -- ri -- a.
  Qui vi -- tam si -- ne ter -- mi -- no
  No -- bis do -- net in pa -- tri -- a.
  A -- men.
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
      \new Lyrics \lyricsto sopranos \verseLatinOne
      \new Lyrics \printItalic \lyricsto sopranos \verseLatinTwo
    >>
}
