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
  title = "012. Ascension Tide"
  subtitle = "Aeterne Rex altissime"
  %poet = ""
  composer = "A. Edmonds Tozer"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.95"
  %site = ""
}

globalSettings= {
  \key e \major
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
\partial 4 e4 |
  %{  1 %} gis4. gis8 gis4 e |
  %{	2 %} b'4. b8 b4 gis |
  %{	3 %} cis e e dis \break \bar "|"
  %{	4 %} cis2. e4 |
  %{	5 %} b4. cis8 b4 gis |
  %{	6 %} fis eis fis gis |
  %{	7 %} e e b' gis |
  %{	8 %} fis2. \break \bar "|"
  \partial 4 e4 |
  %{	9 %} e4. e8 fis4 e |
  %{ 10%} gis fis e e |
  %{ 11%} gis4. gis8 ais4 ais |
  %{ 12%} b2. b4 \break \bar "|"
  %{ 13%} cis4. dis8 b4 cis |
  %{ 14%} a b gis gis |
  %{ 15%} gis4. fis8 e4 dis |
  %{ 16%} e2. r4 |
  %{ 17%} a1 |
  %{ 18%} gis1 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
\partial 4 e4 |
  %{	1 %} gis4. gis8 gis4 e |
  %{	2 %} b'4. b8 b4 gis |
  %{	3 %} gis gis gis fis |
  %{	4 %} e2. e4 |
  %{	5 %} e4. e8 e4 e |
  %{	6 %} dis cisis dis dis |
  %{	7 %} cis cis e e |
  %{	8 %} dis2. e4 |
  %{	9 %} b4. e8 dis 4 e |
  %{ 10%} dis dis e e |
  %{ 11%} dis4. gis8 gis4 fisis |
  %{ 12%} gis2. gis4 |
  %{ 13%} a4. a8 gis4 gis |
  %{ 14%} fis fis e d |
  %{ 15%} cis4. cis8 b4 b |
  %{ 16%} b2. r4 |
  %{ 17%} e1 |
  %{ 18%} e1
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
\partial 4 e,4 |
  %{	1 %} gis4. gis8 gis4 e |
  %{	2 %} b'4. b8 b4 gis |
  %{	3 %} gis cis cis bis |
  %{	4 %} cis2. cis4 |      
  %{	5 %} b4. ais8 b4 b |
  %{	6 %} a gis a b |
  %{	7 %} gis gis b b |
  %{	8 %} b2. gis4 |
  %{	9 %} gis4. gis8 a4 gis |
  %{ 10%} b a gis cis |
  %{ 11%} b4. b8 ais4 dis |
  %{ 12%} dis2. e4 |
  %{ 13%} e4. dis8 dis4 cis |
  %{ 14%} cis b b b |
  %{ 15%} b4. a8 gis4 fis |
  %{ 16%} gis2. r4 |
  %{ 17%} cis1 |
  %{ 18%} b1
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
\partial 4 e4 |
  %{	1 %} gis4. gis8 gis4 e |
  %{	2 %} b'4. b8 b4 gis |
  %{	3 %} e cis gis gis' |
  %{	4 %} cis,2. a'4 |
  %{	5 %} gis4. fisis8 gis4 e |
  %{	6 %} b b b b |
  %{	7 %} cis cis gis gis8 a8 |
  %{	8 %} b2. e4 |
  %{	9 %} e4. e8 e4 e |
  %{ 10%} b b e cis |
  %{ 11%} dis4. dis8 dis4 dis |
  %{ 12%} gis2. e4 |
  %{ 13%} a4. fis8 gis4 e |
  %{ 14%} fis dis e e |
  %{ 15%} a,4. a8 b4 b |
  %{ 16%} e2. r4 |
  %{ 17%} a,1 |
  %{ 18%} e'1
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  O Thou e -- ter -- nal King most high!
  Who didst the world re -- deem
  And, conque -- ring death and hell,
  re -- ceive A dig -- ni -- ty su -- preme.
  Thou, through the star -- ry orbs, this day,
  Didst to Thy throne as -- cend;
  Thence -- forth to reign in sover -- reign power,
  And gloy -- ry with -- out end.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  There, seat -- ed in Thy maj -- es -- ty,
  To Thee sub -- mis -- sive bow
  The heaven of heavens, the earth be -- neath,
  The realms of hell be -- low.
  With rem -- bling there the ang -- els see
  The changed es -- tate of man;
  The flesh which sinned by Flesh re -- deemed;
  Man in the God -- head reign. A -- men.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  There, wait -- ing for Thy faith -- ful souls,
  Be Thou to us, O Lord!
  Our Joy of joys while here we stay,
  In heaven our great re -- ward.
  Re -- new our strength, our sins for -- give,
  Our mis -- e -- ries ef -- face;
  And lift our souls a -- loft to Thee,
  By Thy ce -- les -- tial grace.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  So, when Thou shin -- est on the clouds,
  With Thy ang -- e -- lic train,
  May we be saved from dead -- ly doom
  And our lost crown re -- gain.
  To Christ re -- turn -- ing glo -- rious -- ly
  With vic -- to -- ry to heaven,
  Praise with the Fa -- ther e -- ver -- more
  And Holy Ghost be giv -- en.
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
      %\new Lyrics \printItalic \lyricsto soprano \lyricVerseFive
      %\new Lyrics \printItalic \lyricsto soprano \lyricVerseSix
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

