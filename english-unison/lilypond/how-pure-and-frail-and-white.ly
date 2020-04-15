\version "2.18.2"

\header {
  title = "How Pure And Frail And White"
  composer = "P. Sleath"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
  \time 4/4
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
musicVerseSoprano = \relative c'' {
                  \partial 4 g4 |
  %{	01	%} g f ees d |
  %{	02	%} ees2. g4 |
  %{	03	%} f2 ees |
  %{	04	%} f2. bes4 |
  %{	05	%} ees c bes c |
  %{	06	%} aes2. f4 |
  %{	07	%} c2 d |
                    ees2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  How pure how frail and white, the snow drops shine,
  O bring a gar -- land bright for Ma -- ry's shine.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  For on this bless -- ed day She knelt at pray'r;
  When lo! be -- fore her shone an an -- gel fair.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Be still, ye clouds of heav'n!
  Be si -- lent, earth! And hear an an -- gel tell of Je -- sus' birth.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  ''Hail, Ma -- ry!'' In -- fant lips
  Lisp it to -- day; ''Hail Ma -- ry!''
  With faint smile The dy -- ing say.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  ''Hail Ma -- ry!'' Many a heart bowed down with grief,
  In that an -- gel -- ic prayer has found re -- lief.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  ''Hail Ma -- ry!'' Lo, it rings through ag -- es on;
  ''Hail Ma -- ry!'' It shall sound till time is done.
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
      \new Lyrics \printItalic \lyricsto sopranos \verseSix
    >>
}
