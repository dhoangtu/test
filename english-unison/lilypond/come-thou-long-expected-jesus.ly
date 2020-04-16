\version "2.18.2"

\header {
  title = "Come, Thou Long-expected Jesus"
  composer = "Christian Friedrich Witt, Charles Wesley"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
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
  %{	01	%} d4 d g g |
  %{	02	%} a a b g |
  %{	03	%} d' d e c |
  %{	04	%} a d b2 |
  %{	05	%} b4 b a b |
  %{	06	%} g a g fis |
  %{	07	%} g e d g |
  %{	08	%} g fis g2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Come, Thou long -- ex -- pect -- ed Je -- sus,
  Born to set thy peo -- ple free;
  From our fears and sins re -- lease us,
  Let us find our rest in Thee.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Is -- rael's strength and con -- so -- la -- tion,
  Hope of all the earth thou art,
  Dear de -- sire of ev' -- ry na -- tion,
  Joy of ev' -- ry long -- ing herat.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Born thy peo -- ple to de -- liv -- er,
  Born a child, and yet a king,
  Born to reign in us for ev -- er,
  Now thy gra -- cious king -- dom bring.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  By thine own e -- ter -- nal Spi -- rit
  Rule in all our hearts a -- lone;
  By thine all suf -- fi -- cient mer -- it
  Raise us to thy glo -- rious throne.
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
