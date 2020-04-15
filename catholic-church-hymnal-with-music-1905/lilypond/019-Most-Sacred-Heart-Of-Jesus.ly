%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CONTENTS OF THIS DOCUMENT
% 1. Common settings
% 2. Soprano verse music
% 3. Alto verse music
% 4. Tenor verse music
% 5. Basso verse music
% 6. Verse lyrics
% 7. Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Common settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

\header {
  title = "019. Most Holy Trinity"
  subtitle = "Sanctus, sanctus, sanctus"
  %poet = ""
  composer = "E. T. Cook"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.109"
  %site = ""
}

globalSettings= {
  \key a \major
  \time 4/4
  %\override Score.BarNumber.break-visibility = ##(#t #t #t)
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

verseSettings = {
  \phrasingSlurDashed
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-marign = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Soprano verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseSoprano = \relative c' {
  %{  1 %} e4 e a a |
  %{	2 %} a2 (gis4) b |
  %{	3 %} e,2 gis4 b |
  %{	4 %} cis2 cis \break \bar "|"
  %{	5 %} e4. e8 e4 e |
  %{	6 %} e2 dis4 cis |
  %{	7 %} b b cis b |
  %{	8 %} b2 (e,) \break \bar "|"
  %{	9 %} e4 e a a |
  %{ 10%} a2 gis4 (b) |
  %{ 11%} d4. d8 cis4 b |
  %{ 12%} d2 cis \break \bar "|"
  %{ 13%} e2 e4 e |
  %{ 14%} e2 d4 (cis) |
  %{ 15%} b fis cis'4. b8 |
  %{ 16%} a1 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
  %{	1 %} cis4 cis e e |
  %{	2 %} d2. d4 |
  %{	3 %} d2 d4 d |
  %{	4 %} cis2 e |
  %{	5 %} e4. e8 e4 e |
  %{	6 %} e2 g4 g |
  %{	7 %} gis gis a a |
  %{	8 %} gis (fis e d) |
  %{	9 %} cis cis e e |
  %{ 10%} d2 d |
  %{ 11%} fis4. fis8 e4 e |
  %{ 12%} fis2 fis |
  %{ 13%} e2 e4 e |
  %{ 14%} e2 g |
  %{ 15%} fis4 fis gis4. gis8 |
  %{ 16%} a1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
  %{	1 %} a4 a cis cis |
  %{	2 %} b2. b4 |
  %{	3 %} b2 b4  gis |
  %{	4 %} a2 a |
  %{	5 %} b4. b8 bis4 bis |
  %{	6 %} cis2 e4 e |
  %{	7 %} e e dis dis |
  %{	8 %} e (d cis b) |
  %{	9 %} a a cis cis |
  %{ 10%} b2 b |
  %{ 11%} b4. b8 b4 gis |
  %{ 12%} a2 a |
  %{ 13%} b2 bis4 bis |
  %{ 14%} cis2 e |
  %{ 15%} d4 d e4. e8 |
  %{ 16%} cis1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
  %{	1 %} a'4 a fis fis |
  %{	2 %} b,2 (b'4) a |
  %{	3 %} gis (fis) e e |
  %{	4 %} a2 a |
  %{	5 %} gis4. gis8 gis4 gis |
  %{	6 %} a2 ais4 ais |
  %{	7 %} b b b b |
  %{	8 %} e,1 |
  %{	9 %} a4 a fis fis |
  %{ 10%} b,2 b'4 (a) |
  %{ 11%} gis4. gis8 cis,4 cis |
  %{ 12%} fis2 fis |
  %{ 13%} gis2 gis4 gis |
  %{ 14%} a2 ais |
  %{ 15%} b4 b e, e |
  %{ 16%} a1
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  Ho -- ly, Ho -- ly, Ho -- ly! Lord God Al -- might -- y!
  Ear -- ly in the morn -- ing our song shall rise to Thee:
  Ho -- ly, Ho -- ly, Ho -- ly! Mer -- ci -- ful and might -- y!
  God in Three Per -- sons, bless -- ed Trin -- i -- ty!
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  Ho -- ly, Ho -- ly, Ho -- ly! All--the Saints a -- dore Thee,
  Cast -- ing down their gol-den crowns a -- round the glas -- sy sea;
  Che -- ru -- bim and Ser-aph -- im fall -- ing down be -- fore Thee,
  Which wert, and art, and ev -- er -- more shalt be.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  Ho -- ly, Ho -- ly, Ho -- ly! Though-the dark -- ness hide Thee,
  Though the eye of sin-ful man Thy glo -- ry may not see,
  On -- ly Thou art ho -- ly there is none be -- side Thee
  Per -- fect in power, in love and pur -- i -- ty.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
    Ho -- ly, Ho -- ly, Ho -- ly! Lord God Al -- might -- y!
	All Thy works shall praise Thy Name, in earth and sky and-sea:
	Ho -- ly, Ho -- ly, Ho -- ly! Mer -- ci -- ful and might -- y!
	God in Three Per -- sons, bless -- ed Trin -- i -- ty!
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \voiceOne \globalSettings \verseSettings \stemUp \slurUp \musicVerseSoprano
        }
        \new Voice = "alto" {
          \voiceTwo \globalSettings \verseSettings \stemDown \slurDown \musicVerseAlto
        }
      >>
      \new Lyrics \lyricsto soprano \lyricVerseOne
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseTwo
      \new Lyrics \lyricsto soprano \lyricVerseThree
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseFour
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" {
          \voiceOne \globalSettings \verseSettings \stemUp \slurUp \musicVerseTenor
        }
        \new Voice = "basso" {
          \voiceTwo \globalSettings \verseSettings \stemDown \slurDown \musicVerseBasso
        }
      >>
    >>
}

