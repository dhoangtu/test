\version "2.18.2"

\header {
  title = "O Father, All-Creating"
  composer = "AURELIA, John Ellerton"
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
  %{	01	%} g g aes g |
  %{	02	%} g2 f4 ees |
  %{	03	%} ees c' bes aes |
  %{	04	%} g2. aes4 |
  %{	05	%} bes ees ees d |
  %{	06	%} d2 c4 bes |
  %{	07	%} aes bes g ees |
  %{	08	%} f2. f4 |
  %{	09	%} g aes bes c |
  %{	10	%} c2 bes4 ees |
  %{	11	%} ees4. d8 c4 g |
  %{	12	%} aes2. f4 |
  %{	13	%} g g aes g |
  %{	14	%} g2 f4 ees |
  %{	15	%} ees f ees d |
                    ees2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O Fa -- ther, all -- cre -- at -- ing,
  Whose wis -- dom, love and pow'r
  First bound two lives to -- geth -- er
  In E -- den's pri -- mal hour,
  To those who come be -- fore you,
  Your ear -- liest gifts re -- new;
  A home by you made hap -- py,
  A love by you kept true.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O Sav -- iour, gurst in Ca -- na
  Of old in Gal -- i -- lee,
  May these who as your bless -- ing
  Your lov -- ing pres -- ence see.
  Their sotre of earth -- ly glad -- ness,
  Trans -- form to earth -- ly wine,
  And teach them, in the tast -- ing,
  To know your gift di -- vine.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  O Spi -- rit of the Fa -- ther,
  Breathe on them from a -- bove,
  So might -- y in your pure -- ness
  So ten -- der in your love;
  That, guard -- ed by your pres -- ence,
  From sin and strife kept free,
  Their hearts may seek your guid -- ance,
  And love you faith -- ful -- ly.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Un -- less you build it, Fa -- ther,
  The house is built in vain;
  Un -- less you bless it, Sav -- ior,
  The joy will turn to pain;
  But none can break the un -- ion
  Of hearts in you made one;
  The love your Spi -- rit bless -- es
  Is end -- less love be -- gun.
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
