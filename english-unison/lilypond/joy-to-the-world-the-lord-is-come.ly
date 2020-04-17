\version "2.18.2"

\header {
  title = "Joy To The World! The Lord Is Come"
  composer = "G.F. Handel, Isaac Watts"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
  \time 2/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

\paper {
  #(set-paper-size "a5")
  top-margin = 5\mm
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
  page-count = 1
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} d4 cis8. b16 |
  %{	02	%} a4. g8 |
  %{	03	%} fis4 e |
  %{	04	%} d4. a'8 |
  %{	05	%} b4. b8 |
  %{	06	%} cis4. cis8 |
  %{	07	%} d4. d8 |
  %{	08	%} d8 (cis) b (a) |
  %{	09	%} a8. (g16 fis8) d'8 |
  %{	10	%} d8 (cis) b (a) |
  %{	11	%} a8. (g16 fis8) fis |
  %{	12	%} fis fis fis fis16 (g) |
  %{	13	%} a4. g16 (fis) |
  %{	14	%} e8 e e e16 (fis) |
  %{	15	%} g4. fis16 (e) |
  %{	16	%} d8 (d'4) b8 |
  %{	17	%} a8. (g16 fis8) g |
  %{	18	%} fis4 e |
  %{	19	%} d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Joy to the world! The Lord is come:
  Let earth re -- ceive her King;
  Let ev -- 'ry heart pre -- pare him room,
  and heav'n and na -- ture sing,
  and heav'n and na -- ture sing,
  and heav'n, and heav'n and na -- ture sing.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Joy to the world! The Sav -- ior reigns;
  Let men their songs em -- ploy, while fields and floods,
  rocks, hills and plains re -- peat the sound -- ing joy,
  re -- peat the sound -- ing joy, re -- peat,
  re -- peat the sound -- ing joy.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  No more let sins and sor -- rows grow,
  nor thorns in -- fest the ground;
  He comes to make his bless -- ings flow far as the curse is found,
  far as the curse is found, far as, far as the curse is found.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  He rules the world with truth and grace,
  and makes the na -- tions prove the glo -- ries of his right -- eous -- ness,
  and won -- ders of his love,
  and won -- ders of his love, and won -- ders, won -- ders of his love.
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
