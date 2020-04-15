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
  title = "010. Corpus Christi"
  subtitle = "(Verbum supernum prodiens)"
  %poet = ""
  composer = "G. Steiner"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.98"
  %site = ""
}

globalSettings= {
  \key g \major
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
  %{  1 %} g'4 a b g |
  %{	2 %} a4 g e g \break \bar "|"  
  %{	3 %} a4 b c a |
  %{	4 %} b4 g a2 |
  %{	5 %} b4 c d b \break \bar "|" 
  %{	6 %} c b g b |
  %{	7 %} a b g e |
  %{	8 %} g fis g2 |
  %{	9 %} g1 |
  %{ 10%} g1 \bar "|."
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
  %{	1 %} d4 fis g d | 
  %{	2 %} e e c d \break \bar "|"
  %{	3 %} fis g g fis |
  %{	4 %} g d e2 |
  %{	5 %} g4 a a g \break \bar "|" 
  %{	6 %} g fis e fis |
  %{	7 %} e fis e b |
  %{	8 %} c d d2 |
  %{	9 %} e1 |
  %{ 10%} d1
 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
  %{	1 %} b4 d d d |
  %{	2 %} c b c b \break \bar "|"
  %{	3 %} d d e d |
  %{	4 %} d d c2 |
  %{	5 %} e4 e d d \break \bar "|"
  %{	6 %} e d b d |
  %{	7 %} c d b b |
  %{	8 %} g a b2 |
  %{	9 %} c1 |
  %{ 10%} b1

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
  %{	1 %} g'4 d g b |
  %{	2 %} a e a g \break \bar "|"
  %{	3 %} d g c, d |
  %{	4 %} g b a2 |   
  %{	5 %} e4 a fis g \break \bar "|"
  %{	6 %} c, d e b |
  %{	7 %} c b e g | 
  %{	8 %}  e d g2 |
  %{	9 %} c,1 |
  %{ 10%} g'1
 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
 Word of God to earth de -- scend -- ing,
 With the Fa -- ther pres -- ent still,
 Near His earth -- ly jour -- ney's end -- ing
 Hastes His mis -- sion to ful -- fil.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  Well the trai -- tor's kiss fore -- know -- ing
  Mir -- a -- cle of love di -- vine
  See His Hands Him -- self be -- stow -- ing
  In the hal -- lowed Bread and Wine.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  Ho -- ly Bod -- y Blood all pre -- cious,
  Given by Him to be our Food,
  With them Both He doth re -- fresh us,
  Formed like Him of flesh and blood. A -- men
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Born, a Bro -- ther dear He gave us;
  At his board the Ban -- quet He;
  On the Cross He died to save us;
  Reig -- neth our fe -- li -- ci -- ty.
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
  Might -- y Vic -- tim, earth's Sal -- va -- tion,
  Heaven's own gate un -- fold -- ing wide,
  Help Thy peo -- ple in temp -- ta -- tion,
  Feed them from Thy bleed -- ing Side.
}

lyricVerseSix = \lyricmode {
  \set stanza = #"6."
  Un -- to Thee, the hid -- den Man -- na,
  Fa -- ther, Spi -- rit, un -- to Thee
  Let us raise the loud hos -- an -- na,
  And a -- dor -- ing bend the knee.
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
      \new Lyrics \lyricsto soprano \lyricVerseFive
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseSix
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

