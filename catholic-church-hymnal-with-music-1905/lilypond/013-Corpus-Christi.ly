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
  title = "013. Ascension Tide"
  subtitle = "Opus peregisti tuum"
  %poet = ""
  composer = "Dr. C. Harford Lloyd"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.96"
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
\partial 4 g'4 |
  %{  1 %} e fis g g |
  %{	2 %} c b8 (a) b4 g \break \bar "|"
  %{	3 %} b cis d b |
  %{	4 %} a4. g8 fis4 \fermata g4 |
  %{	5 %} e fis g g \break \bar "|"
  %{	6 %} c b8 (a) b4 g |
  %{	7 %} b cis d a8 (g) |
  %{	8 %} fis4. e8 d4 \fermata \break \bar "|"
 \partial 4 d4 |
  %{	9 %} e4. f8 f4 e |
  %{ 10%} a4. g8 fis4 d \break \bar "|"
  %{ 11%} e fis g g |
  %{ 12%} c4. d8 b4 \fermata g4 |
  %{ 13%} e'4. e8 d4 g, \break \bar "|"
  %{ 14%} c d b a |
  %{ 15%} g e d g |
  %{ 16%} a4. g8 g2 \fermata |
  %{ 17%} g1 |
  %{ 18%} g1 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
\partial 4 b4 |
  %{	1 %} c d d b |
  %{	2 %} e d d g |
  %{	3 %} d e d e |
  %{	4 %} fis e d d |
  %{	5 %} d c b f' |
  %{	6 %} e fis g g |
  %{	7 %} d g fis fis8 e8 |
  %{	8 %} d4 cis d4 a |
  %{	9 %} b4. b8 cis4 cis |
  %{ 10%} e4. e8 d4 d |
  %{ 11%} d d d b |
  %{ 12%} e d d f |
  %{ 13%} e4. fis8 g4 g |
  %{ 14%} g fis g f |
  %{ 15%} e c b d |
  %{ 16%} fis4. g8 g2 |
  %{ 17%} e1 |
  %{ 18%} d1
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
\partial 4 g4 |
  %{	1 %} g a g g |
  %{	2 %} g fis g d' |
  %{	3 %} b g a d |
  %{	4 %} d cis a g |
  %{	5 %} g a g b |
  %{	6 %} c c b d8 c |
  %{	7 %} b a g4 a b |
  %{	8 %} a g fis fis |
  %{	9 %} gis4. gis8 a4 a4 |
  %{ 10%} c4. b8 a4 fis |
  %{ 11%} g a g g |
  %{ 12%} g fis g b |
  %{ 13%} c4. c8 d4 d |
  %{ 14%} e d d b |
  %{ 15%} c g g b |
  %{ 16%} c4. c8 b2 |
  %{ 17%} g1 |
  %{ 18%} b1
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
\partial 4 g4 |
  %{	1 %} c c b e |
  %{	2 %} a, d g b |
  %{	3 %} g e fis g |
  %{	4 %} a a, d \fermata b |
  %{	5 %} c a e' d |
  %{	6 %} c d g b8 a |
  %{	7 %} g fis e4 d g |
  %{	8 %} a a, d \fermata d |
  %{	9 %} d4. d8 c4 c |
  %{ 10%} a4. a8 d4 d |
  %{ 11%} d c b e |
  %{ 12%} a, d g, \fermata g' |
  %{ 13%} c4. a8 b4 b |
  %{ 14%} a d, g g, |
  %{ 15%} c c d d |
  %{ 16%} d4. d8 g,2 \fermata |
  %{ 17%} c1 |
  %{ 18%} g'1
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  Thy sa -- cred race, O Lord, is run,
  Thy work is wrought, Thy vic -- tory won;
  The glo -- ry Thou didst leave re -- quires
  Thy pres -- ence in su -- per -- nal choirs.
  The clouds Thy char -- iot, earth a -- far 
  Be neath Thy feet, a lit -- tle star;
  Ten thou -- sand thou -- sand ang -- els sing,
  To wel -- come their re -- turn -- ing King.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  The gates of heaven o -- bey the call,
  And o -- pen to the Lord of all;
  His throne re -- ceives the-e -- ter -- nal Son,
  Both God and Man for -- ev -- er One.
  Thou Me -- di -- a -- tor and High -- Priest,
  Fresh from the sac -- ri -- fice re -- leased.
  By love cons -- trained doth hith -- er bring
  Thy smit -- ten Heart's best of -- fer -- ing. A -- men
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  And she who from Thy o -- pened Side
  Her be -- ing took, Thy ho -- ly Bride,
  Still nour -- ished from Thy Side sur -- vives,
  And life and all from Thee de -- rives.
  Hence, in the thick -- est of the fight,
  Thy war -- riors win their heaven -- ly might;
  And hence Thy mar -- tyrs sing their psalms,
  And joy -- ous wave tri -- umph -- al palms.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Where Thou, the Head art gone, Thy voice
  Calls all Thy mem -- bers to re -- joice;
  Ah, let them cleave the shin -- ing way
  Thy foot -- prints through the eth -- er fray.
  To Thee be glo -- ry, con -- quering King,
  Who un -- to heaven Thy way dost wing,
  Great Son of the e -- ter -- nal Sire,
  Whose Spi -- rit is our one de -- sire.
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

