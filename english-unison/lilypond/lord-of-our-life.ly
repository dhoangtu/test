\version "2.18.2"

\header {
  title = "Lord Of Our Life"
  composer = "Matthaus Appeles von Lowenstern"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key c \major
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
musicVerseSoprano = \relative c' {
  %{	01	%} c'2 g4 a |
  %{	02	%} g4. (f8) e2 |
  %{	03	%} a4. b8 g4 c |
  %{	04	%} c (b) c2 |
  %{	05	%} c2 d4 d |
  %{	06	%} e (c) a2 |
  %{	07	%} d4. a8 b4 c |
  %{	08	%} b (a) g2 |
  %{	09	%} e2 f4 g |
  %{	10	%} f e d2 |
  %{	11	%} a'4. b8 c4 a |
  %{	12	%} d (c) b2 |
  %{	13	%} g4. (f8) e4 f |
  %{	14	%} e2 (d) |
  %{	15	%} c1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Lord of our life, and God of our sal -- va -- tion,
  Star of our night, and hope of ev -- e -- ry na -- tion,
  Hear and re - ceive thy Church's sup -- pli -- ca -- tion,
  Lord God Al -- might -- y.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  See a -- round thine ark the hun -- gry bil -- lows curl -- ing!
  See how thy foes ther ban -- ners are un -- furl -- ing!
  Lord, while their darts en -- ven -- omed they are hurl -- ing,
  Thou canst pre -- serve us.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Lord, Thou canst help when earth -- ly ar -- mour fail -- eth;
  Lord, Thou canst save when dead -- ly sin as -- sail -- eth;
  Lord, o'er thy rock _ nor death nor hell pre -- vail -- eth;
  Grant us thy peace, Lord!
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Peace, in our hearts, our e -- vil thoughts as -- suag -- ing,
  Peace, in thy Church, where bro -- thers are en -- gag -- ing,
  Peace, when the world _ its bus -- y war is wag -- ing;
  Calm thy foes rag -- ing!
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Grant us thy help till back -- ward they are driv -- en;
  Grant them thy truth, that they may be for -- giv -- en;
  Grant peace on earth, _ and af -- ter we have striv -- en,
  Peace in thy heav -- en.
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
