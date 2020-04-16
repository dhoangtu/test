\version "2.18.2"

\header {
  title = "O God Of Earth And Altar"
  composer = "Vaughan Williams, Gilbert Keith Chesterton"
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
  system-system-spacing = #'((basic-distance . 2) (padding . 2))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
                    \partial 4 a4 |
  %{	01	%} g a d, e |
  %{	02	%} f (g) c bes8 (a) |
  %{	03	%} g4. f8 d4 c |
  %{	04	%} d2. d8 (e) |
  %{	05	%} f4 g a c8 (a) |
  %{	06	%} d2 d4 c |
  %{	07	%} a c a g |
  %{	08	%} a2. d,8 (e) |
  %{	09	%} f4 g a c8 (a) |
  %{	10	%} d2 c4 a |
  %{	11	%} c c a g |
  %{	12	%} a2. a4 |
  %{	13	%} g a d, e |
  %{	14	%} f (g) c bes8 (a) |
  %{	15	%} g4. f8 d4 c |
                    d2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O God of earth and al -- tar, bow down and hear our cry,
  our earth -- ly ru -- lers fal -- ter, our peo -- ple drift and die;
  The walls of gold en -- tomb us, the swords of scorn di -- vide,
  take not thy thun -- der from us, but take a -- way our pride.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  From all that ter -- ror teach -- es from lies of tongue and pen,
  from all the eas -- y speech -- es that com -- fort cru -- el men,
  from sale and pro --fa -- na -- tion of hon -- or, and the swords,
  from sleep and from dam -- na -- tion, de -- li -- ver us, good Lord!
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Tie in a liv -- ing te -- ther the prince and priest and thrall,
  bind all our lives to -- ge -- ther, smite us and save us all;
  in ire and ex -- ul -- ta -- tion a -- flame with faith, and free,
  lift up a liv -- ing na -- tion, a sin -- gle sword to thee.
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
