\version "2.18.2"

\header {
  title = "God Of Mercy, God Of Grace"
  composer = "Martin Herbst, John Taylor"
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
musicVerseSoprano = \relative c'' {
  %{	01	%} a4 a d, e |
  %{	02	%} f g a2 |
  %{	03	%} a4 a8 (b!) c4 c |
  %{	04	%} b! b a2 |
  %{	05	%} a4 a bes bes |
  %{	06	%} g g a2 |
  %{	07	%} a4 a g f |
  %{	08	%} e e d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  God of mer -- cy! God of grace!
  Hear our sad re -- pent -- ant songs.
  O re -- store thy sup -- pliant race,
  Thou, to whom our prase be -- longs!
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Deep re -- gret for fol -- lies past,
  Tal -- ents wast -- ed, time mis -- spent,
  Hearts de -- based by world -- ly cares,
  Thank -- les for the bless -- ings lent;
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Fool -- ish fears and fond de -- sires,
  Vain re -- grets for things as vain,
  Lips to sol -- dom taught to praise,
  Oft to mur -- mur and com -- plain;
}

verseFour = \lyricmode {
  \set stanza = #"4."
  These, and ev -- ery se -- cret fault,
  Filled with grief and shame, we own;
  Hum -- bled at thy feet, we lie,
  Seek -- ing per -- don from thy throne.
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
