\version "2.18.2"

\header {
  title = "O Love, How Deep, How Broad, How High"
  composer = "DEUS TOURUM MILITUM, 15th Century Latin"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key bes \major
  \time 3/4
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
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
                    \partial 4 bes4 |
  %{	01	%} d2 f4 |
  %{	02	%} bes2 f4 |
  %{	03	%} ees4 (d) c |
  %{	04	%} bes2 bes'4 |
  %{	05	%} d2 bes4 |
  %{	06	%} g (a) bes |
  %{	07	%} f2 e!4 |
  %{	08	%} f2 f4 |
  %{	09	%} g2 a4 |
  %{	10	%} bes2 f4 |
  %{	11	%} ees (d) c |
  %{	12	%} d2 f4 |
  %{	13	%} g (a) bes |
  %{	14	%} f (ees) d |
  %{	15	%} c2 bes4 |
                    bes2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O love, how deep, how broad, how high,
  How pass -- ing thought and fan -- ta -- sy,
  That God, the Son of God, should take
  Our mor -- tal form for mor -- tals' sake.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  For us bap -- tized, for us He bore
  His ho -- ly fast and hun -- gered sore,
  For us temp -- ta -- tion sharp He knew;
  For us the temp -- ter ov -- er threw.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  For us He prayed; for us He tought;
  For us his dai -- ly works He wrought;
  By words and signs and ac -- tions thus
  Still seek -- ing not him -- self, but us.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  For us to wick -- ked hands be -- trayed;
  Scourged, mocked, in pur -- ple robe ar -- rayed,
  He bore the shame -- ful cross and death,
  For us gave up his dy -- ing breath.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  For us He rose from death a -- gain;
  For us He went on high to reign;
  For us He sent his Spi -- rit here
  To guide, to streng -- then and to cheer.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  All glo -- ry to our Lord and God
  For love so deep, so high, so broad,
  The Tri -- ni -- ty whom we a -- dored
  For ev -- er and for ev -- er more.
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
      \new Lyrics \lyricsto sopranos \verseFour
      \new Lyrics \printItalic \lyricsto sopranos \verseFive
      \new Lyrics \lyricsto sopranos \verseSix
    >>
}
