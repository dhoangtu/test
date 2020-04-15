\version "2.18.2"

\header {
  title = "The Eternal Gifts Of Christ The King"
  composer = "Deo Gracias, Aeterna Christi Munera"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
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
musicVerseSoprano = \relative c'' {
                    \partial 4 c4 |
  %{	01	%} c2 bes4 |
  %{	02	%} c2 bes4 |
  %{	03	%} bes a!2 |
  %{	04	%} g c4 |
  %{	05	%} c (bes) g |
  %{	06	%} f (g) f8 (c) |
  %{	07	%} ees4 d2 |
  %{	08	%} c g'4 |
  %{	09	%} bes2 bes4 |
  %{	10	%} c (bes) aes |
  %{	11	%} g f2 |
  %{	12	%} ees2 ees4 |
  %{	13	%} g2 g4 |
  %{	14	%} f2 ees4 |
  %{	15	%} ees d2 |
  %{	16	%} c2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Th'e -- ter -- nal gifts of Christ the King,
  The'A -- pos -- tles glo -- rious deeds, we sing;
  And while due hymns of praise we pay,
  Our thank -- ful hearts cast grief a -- way.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  The Church in these her princ -- es boasts,
  These vic -- tor chiefs of war -- riors hosts;
  The sol -- diers of the heav'n -- ly hall,
  The lights that rose on earth for all.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  T'was thus the yearn -- ing faith of saints,
  Un -- con -- quered -- hope that nev -- er faints,
  The love of Christ that knows not shame,
  The prince of this world o -- ver -- came.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  In these the Fa -- ther's glo -- ry shone;
  In these the will of God the Son;
  In these e -- xults the Ho -- ly Ghost;
  Through these re -- joice the heav'n -- ly host.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Re -- deem -- er, hear us of thy love,
  That, with this glo -- rious band a -- bove,
  Here -- af -- ter, of thine end -- less grace,
  Thy ser -- vants al -- so may have place.
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
