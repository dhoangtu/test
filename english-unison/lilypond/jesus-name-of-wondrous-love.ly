\version "2.18.2"

\header {
  title = "Jesus, Name Of Wondrous Love"
  composer = "St. Bees, John Bacchus Dykes"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key aes \major
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
musicVerseSoprano = \relative c'' {
  %{	01	%} aes4 aes aes4. g8 |
  %{	02	%} f4 g aes2 |
  %{	03	%} bes4 bes c ees, |
  %{	04	%} f bes g2 |
  %{	05	%} bes4 des c4. aes8 |
  %{	06	%} g4 bes aes2 |
  %{	07	%} aes4 bes aes aes |
  %{	08	%} aes4. g8 aes2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Je -- sus! Name of won -- drous love!
  Name all oth -- er names a -- bove!
  Un -- to which must eve -- ry knee
  Bow in deep hu -- mu -- li -- ty.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Je -- sus! Name de -- creed of old,
  To the mai -- den mo -- ther told
  Kneel -- ing in her low -- ly cell
  By the an -- gel Ga -- bri -- el.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Je -- sus! Name of price -- less worth
  To the fal -- len sons of earth.
  For the pro -- mise that i gave,
  ''Je -- sus shall his peo -- ple save.''
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
