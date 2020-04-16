\version "2.18.2"

\header {
  title = "Sing Praise To God Who Reigns Above"
  composer = "Mit Freuden  Zart, Seilob Un Ehr - Christliches Gedankenbuchlein"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
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
  system-system-spacing = #'((basic-distance . 2.5) (padding . 2.5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
                    \partial 4 d4 |
  %{	01	%} fis8 g a4 d |
  %{	02	%} cis8 b a4 b8. (a16) |
  %{	03	%} g8 fis e4 fis8 (g) |
  %{	04	%} e4 d d |
  %{	05	%} fis8 g a4 d |
  %{	06	%} cis8 b a4 b8. (a16) |
  %{	07	%} g8 fis e4 fis8 (g) |
  %{	08	%} e4 d d' |
  %{	09	%} cis8 b a4 d |
  %{	10	%} cis8 b a4 a |
  %{	11	%} d,8 e fis4 d |
  %{	12	%} fis8 gis a4 a |
  %{	13	%} b8 g e4 fis8 (g) |
  %{	14	%} e4 d \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Sing praise to God who reigns a -- bove,
  The God of all cre -- a -- tion,
  The God of pow'r, the God of love,
  The God of our sal -- va -- tion;
  With heal -- ing balm my soul He fills,
  And eve -- ry faith -- less  mur -- mur stills:
  To God all praise and glo -- ry!
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  What God's al -- migh -- ty pow'r hath made
  His gra -- cious mer -- cy keep -- eth,
  By morn -- ing glow or eve -- ning shade
  His watch -- ful eye ne'er sleep -- eth;
  With -- in the king -- dom of his might,
  Lo! all is just and all is right:
  To God all praise and glo -- ry!
}

verseThree = \lyricmode {
  \set stanza = #"3."
  The Lord is nev -- er far a -- way,
  But thro' all grief dis -- tress -- ing,
  An ev -- er pres -- ent help and stay,
  Oour peace and joy and bless -- ing;
  As with a moth -- er's ten -- der hand
  He leads his own, his chos -- en band:
  To God all praise and glo -- ry!
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Thys all my toil -- some way a -- long
  I sing a -- loud his prais -- es,
  That all may hear the grate -- ful song
  My voice un -- wea -- ried rais -- es;
  Be joy -- ful in the Lord my heart!
  Both soul and bo -- dy bear your part:
  To God all praise and glo -- ry!
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
