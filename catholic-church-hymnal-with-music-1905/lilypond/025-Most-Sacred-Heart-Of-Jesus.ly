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
  title = "025. Most Sacred Heart of Jesus"
  subtitle = "O cor Jesu"
  %poet = ""
  composer = "A. Edmonds Tozer"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.111"
  %site = ""
}

globalSettings= {
  \key d \major
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
\partial 4 fis4 |
%{  1 %} b2. a4 |
%{  2 %} a2 r4 a4 |
%{  3 %} d cis b fis \break \bar "||"
%{  4 %} b2 (a4) \bar "||" g |
%{  5 %} fis e a a |
%{  6 %} g fis b b ^\< \break \bar "||"
%{  7 %} cis a d e \! |
%{  8 %} d a b e, ^\> |
%{  9 %} g2 fis4 (e) |
%{ 10 %} d2. \! \bar "|."
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
\partial 4 d4 |
%{  1 %} d (cis d) e |
%{  2 %} d2 r4 a'4 |
%{  3 %} g g fis fis |
%{  4 %} e2. d4 |
%{  5 %} cis cis d fis |
%{  6 %} e dis e e |
%{  7 %} e cis d g |
%{  8 %} fis d d d |
%{  9 %} cis2 cis |
%{ 10 %} d2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
\partial 4 a4 |
%{  1 %} g (a b) cis |
%{  2 %} d2 r4 a4 |
%{  3 %} ais ais b d |
%{  4 %} d2 (cis4) b |
%{  5 %} a a a c |
%{  6 %} b c b g |
%{  7 %} a a a a |
%{  8 %} a fis fis b |
%{  9 %} b2 a4 (g) |
%{ 10 %} fis2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
\partial 4 d4 |
%{  1 %} g2. g4 |
%{  2 %} fis2 r4 fis |
%{  3 %} e e d b |
%{  4 %} g2. g4 |
%{  5 %} a g' fis dis |
%{  6 %} e a g e ^\< |
%{  7 %} a g fis cis \! |
%{  8 %} d d b g ^\> |
%{  9 %} a2 a |
%{ 10 %} d2. \!
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  O Sa -- cred Heart!
  Our home lies deep in Thee,
  On earth Thou art an ex -- ile's rest,
  In heven the glo -- ry of the blest,
  O Sa -- cred Heart!
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  O Sa -- cred Heart!
  Thou fount of con -- trite tears,
  Where -- 'er those liv -- ing wa -- ters flow,
  New life to sin -- ners they be stow,  
  O Sa -- cred Heart!
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
 O Sa -- cred Heart!
 Our trust is all in Thee;
 For though earth's night be dark and drear,
 Thou breath -- est rest where Thou art near,
 O Sa -- cred Heart!
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
 O Sa -- cred Heart!
 When shades of death shall fall,
 Re -- ceive us' neath Thy gen -- tle care,
 And save us from the temp -- ter's snare;
 O Sa -- cred Heart!
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
 O Sa -- cred Heart!
 Lead ex -- iled child -- ren home,
 Where we may ev -- er rest near Thee,
 In peace and joy e -- ter -- nall -- y:
 O Sa -- cred Heart!
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

