\version "2.18.2"

\header {
  title = "Ave Verum Corpus"
  composer = "W.A. Mozart"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #4.0
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
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} a2 d4 (fis,) |
  %{	02	%} a (gis) g!2 |
  %{	03	%} g4 (b) a (g) |
  %{	04	%} g (fis) fis2 |
  %{	05	%} e2. e4 |
  %{	06	%} fis fis g g |
  %{	07	%} g2 (fis4) fis |
  %{	08	%} e1 |
  %{	09	%} e2. a4 |
  %{	10	%} a (gis) gis2 |
  %{	11	%} e4 (gis2) b4 |
  %{	12	%} b (a) a a |
  %{	13	%} d1 ( |
  %{	14	%} d4 cis) b a |
  %{	15	%} a2 (gis4) gis |
  %{	16	%} a1 |
  %{	17	%} a2. a4 |
  %{	18	%} a (bes) bes2 |
  %{	19	%} bes4 (d) c! (bes) |
  %{	20	%} bes (a) a2 |
  %{	21	%} g2. g4 |
  %{	22	%} g4 (bes) a g |
  %{	23	%} g2 (f!8 e) f4 |
  %{	24	%} e2 r2 |
  %{	25	%} fis2. fis4 |
  %{	26	%} fis (e) d (g) |
  %{	27	%} g2. g4 |
  %{	28	%} g (fis) e a |
  %{	29	%} a1 ( |
  %{	30	%} a4 g) a b |
  %{	31	%} fis2 (e4.) fis8 |
  %{	32	%} g2 g |
  %{	33	%} d'1 ( |
  %{	34	%} d2 dis |
  %{	35	%} e4 b cis d! |
  %{	36	%} cis b8 a) d4 g, |
  %{	37	%} fis2 (e4.) e8 |
  %{	38	%} d1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  A -- ve, a -- ve ve -- rum cor -- pus,
  na -- tum de Ma -- ri -- a vir -- gi -- ne,
  ve -- re pas -- sum im -- mo la -- tum in cru -- ce pro ho -- mi -- ne.
  Cu -- jus la -- tus per -- fo -- ra -- tum un -- da flu -- xit et san -- gui -- ne,
  es -- to no -- bis prae -- gus -- ta -- tum in mor -- tis ex -- a -- mi -- ne,
  in mor -- tis ex -- a -- mi -- ne.
}


% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \global \stemUp \slurUp \musicVerseSoprano }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
    >>
}
