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
  title = "026. Most Sacred Heart of Jesus"
  subtitle = "Auctor beate soeculi"
  %poet = ""
  composer = "E. A. Hedgcock"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.114"
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
\partial 4 gis'4 |
%{  1 %} gis4. gis8 gis4 fis |
%{  2 %} e fis gis e \break \bar "|"
%{  3 %} cis'4. dis8 e4 b |
%{  4 %} b a gis \bar "||" e |
%{  5 %} cis'4. cis8 fis,4 gis8 (a) \break \bar "|"
%{  6 %} b4. b8 e,4 fis8 (gis) |
%{  7 %} a4 gis fis cis |
%{  8 %} gis' fis e r4 \bar "||"
%{  9 %} e1 |
%{ 10 %} e1 \bar "|."
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
\partial 4 e4 |
%{  1 %} d4. d8 cis4 cis |
%{  2 %} b dis e e |
%{  3 %} e4. fis8 e4 gis8 fis |
%{  4 %} e4 fis e b |
%{  5 %} e4. e8 dis4 dis |
%{  6 %} e4. e8 e4 cis |
%{  7 %} cis cis cis gis |
%{  8 %} ais b b r4 |
%{  9 %} cis1 |
%{ 10 %} b1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
\partial 4 b4 |
%{  1 %} b4. b8 b4 a |
%{  2 %} gis a gis b |
%{  3 %} cis4. b8 b4 e8 dis |
%{  4 %} cis4 dis e d |
%{  5 %} cis4. cis8 c4 c |
%{  6 %} b4. d8 cis4 fis, |
%{  7 %} fis eis fis e |
%{  8 %} e dis8 a' gis4 r4 |
%{  9 %} a1 |
%{ 10 %} gis1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
\partial 4 e4 |
%{  1 %} e4. e8 a,4 a |
%{  2 %} b b e gis |
%{  3 %} a4. a8 gis4 e |
%{  4 %} fis b, e gis |
%{  5 %} a4. a8 a4 a |
%{  6 %} gis4. gis8 a4 a, |
%{  7 %} fis gis a cis |
%{  8 %} fis, b e r4 |
%{  9 %} a,1 |
%{ 10 %} e'1
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  Je -- su, Cre -- a -- tor of the world,
  Of all man -- kind Re -- deem -- er blest;
  True God of God, in Whom we see 
  The Fa -- ther's im -- age clear ex -- pressed:
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  That self -- same love which made the sky,
  Which made the sea, and stars, and earth,
  Took pit -- y on our mis -- er -- y,
  And broke the bond -- age of our birth.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
 O Je -- su, in Thy Heart di -- vine
 Shall that same love for ev -- er glow,
 For ev -- er mer -- cy to man -- kind
 From that ex -- haust -- less fount -- ain flow. A -- men.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
 For this Thy sacr -- ed Hear was pierced,
 And both with Blood and Wa -- ter ran;
 To cleanse us from the stains of guilt,
 And be the hope and strength of man.
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
 To God the Fa -- ther and the Son,
 All praise and power and glo -- ry be,
 With Thee, O ho -- ly Pa -- ra -- clete,
 Hence -- forth through all e -- ter -- ni -- ty.
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

