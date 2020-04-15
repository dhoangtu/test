\version "2.18.2"

\header {
  title = "Thy Kingdom Come, O King Of Earth"
  composer = "Adore Te Devote, Fr. M. Russell"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
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
musicVerseSoprano = \relative c' {
                    \partial 4 d4 |
  %{	01	%} \tuplet 3/2 { fis4 (a) a } b a |
  %{	02	%} g fis e4. d8 |
  %{	03	%} d2. \bar "" \break d4 |
  %{	04	%} \tuplet 3/2 { fis4 (a) a } b a |
  %{	05	%} g fis e4. d8 |
  %{	06	%} d2. \bar "" \break a'4 |
  %{	07	%} \tuplet 3/2 { b4 (cis) d } cis a |
  %{	08	%} b a g fis |
  %{	09	%} e2. \bar "" \break fis4 |
  %{	10	%} \tuplet 3/2 { a4 (g) fis } \tuplet 3/2 { e4 (d) e } |
  %{	11	%} fis4 d e4. d8 |
                    d2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Thy King -- dom come, O King of earth and heav'n,
  Cre -- a -- tor, Sav -- iour, who our chains hast riv'n;
  O, that all hearts would thy sweet yoke em -- brace;
  Reign in my heart for ev -- er, King of grace.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Thee will I serve, for he who serves Thee reigns,
  Thee will I free -- ly serve while life re -- mains,
  Till, free no long -- er, in thy realm a -- bove,
  Bound in the rap -- turous thral -- dom of thy love.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Thee as my King my soul at last shall hail,
  No more to swerve, no more to faint nor fail.
  O Fath -- er, take thy wea -- ry wand' -- rer home;
  O King of glo -- ry, may thy king -- dom come.
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
