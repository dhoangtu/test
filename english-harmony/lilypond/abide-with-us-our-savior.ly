\version "2.18.2"

\header {
  title = "Abide With Us, Our Savior"
  composer = "Christus der is mein leben"
  tagline = ##f
  source="https://media.musicasacra.com/books/hymns/pbeh_abide_with_us.pdf"
  copyright="CC0 1.0"
}

global= {
  \key d \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

\paper {
  #(set-paper-size "a4")
  top-margin = 20\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  right-margin = 20\mm
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

% Soprano verse music
musicVerseSoprano = \relative c' {
                    \partial 4 d4 |
  %{	01	%} fis e fis g |
  %{	02	%} a2 fis4 b |
  %{	03	%} a g fis e |
  %{	04	%} fis2. a4 |
  %{	05	%} b cis d cis |
  %{	06	%} b2 a4 fis |
  %{	07	%} g fis e e |
                    d2. \bar "|."
}

% Alto verse music
musicVerseAlto = \relative c' {
  \partial 4 a4 |
  d e d d |
  cis2 d4 d |
  cis b8 cis d4 cis |
  d2. d4 |
  d g fis e |
  e2 cis4 d |
  b8 cis d4 d cis |
  d2.
}

% Tenor verse music
musicVerseTenor = \relative c {
  \partial 4 fis4 |
  a a a d, |
  e a a g |
  e g a a |
  a2. a4 |
  g g a a |
  a gis a a |
  g a b a |
  fis2.
}

% Basso verse music
musicVerseBasso = \relative c {
  \partial 4 d4 |
  d cis d b |
  a2 d4 g, |
  a e' d a |
  d2. fis4 |
  g e d a |
  e'2 a,4 d |
  e fis g a |
  d,2.
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  A -- bide with us, our Sav -- ior, let not your merc -- y cease;
  from Sat -- an's might de -- fend us, and give our hearts your peace.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  A -- bide with us, our Help -- er, sus -- tain us by your Word;
  let us and all your peo -- ple to liv -- ing faith be stirred.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  A -- bide with us, Re -- deem -- er, O Light, e -- ter -- nal Light;
  your truth di -- rect and guide us to flee from err -- or's night.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  To Fath -- er, Son, and Spi -- rit all praise and glo -- ry be,
  who were and are for -- ev -- er the_e -- ter -- nal One in Three.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \voiceOne \global \stemUp \slurUp \musicVerseSoprano }
        \new Voice = "alto" { \voiceTwo \global \stemDown \slurDown \musicVerseAlto }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
      \new Lyrics \lyricsto sopranos \verseThree
      \new Lyrics \printItalic \lyricsto sopranos \verseFour
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" { \voiceThree \global \stemUp \slurUp \musicVerseTenor }
        \new Voice = "bass" { \voiceThree \global \stemDown \slurDown \musicVerseBasso }
      >>
    >>
}

