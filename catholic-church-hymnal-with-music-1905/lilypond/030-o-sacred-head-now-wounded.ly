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
  title = "030. O Sacred Head, Now Wounded"
  subtitle = "Passion Chorale"
  poet = "Bernard of Clairvaux, 1091-1153"
  composer = "Hans Leo Hassler, 1601"
  tagline = ##f
  %source = ""
  site = "www.songsandhymns.org"
}

globalSettings= {
  \key c \major
  \time 4/4
  %\override Score.BarNumber.break-visibility = ##(#t #t #t)
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
}

verseSettings = {
  \phrasingSlurDashed
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
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
  %{ 1 %} a g f e |
  %{ 2 %} d2 e4 b' |
  %{ 3 %} c c b8 a b4 |
  %{ 4 %} a2. e4 \break |
  %{ 5 %} a g f e |
  %{ 6 %} d2 e4 b' |
  %{ 7 %} c c b8 a b4 |
  %{ 8 %} a2. c4 \break |
  %{ 9 %} b8 a g4 a b |
  %{ 10%} c2 c4 g |
  %{ 11%} a g f f |
  %{ 12%} e2. c'4 \break |
  %{ 13%} b8 c d4 c b |
  %{ 14%} a2 b4 e, |
  %{ 15%} f e d g |
  %{ 16%} e2. \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
\partial 4 c4 |
  %{ 1 %} c8 d e4 a,8 b c4 |
  %{ 2 %} c (b) c e8 d |
  %{ 3 %} c4 e e e8 d |
  %{ 4 %} c2. c4 |
  %{ 5 %} c8 d e4 a,8 b c4 |
  %{ 6 %} c (b) c e8 d |
  %{ 7 %} c4 e e e8 d |
  %{ 8 %} c2. e4 |
  %{ 9 %} d d8 c c4 f |
  %{ 10%} f (e8 d) e4 e |
  %{ 11%} f e e d |
  %{ 12%} cis2. d4 |
  %{ 13%} d g g g |
  %{ 14%} g (fis) g c,8 d |
  %{ 15%} a b c4 c b |
  %{ 16%} c2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
\partial 4 a4 |
  %{ 1 %} 
  %{ 2 %} 
  %{ 3 %} 
  %{ 4 %} 
  %{ 5 %} 
  %{ 6 %} 
  %{ 7 %} 
  %{ 8 %} 
  %{ 9 %} 
  %{ 10%} 
  %{ 11%} 
  %{ 12%} 
  %{ 13%} 
  %{ 14%} 
  %{ 15%} 
  %{ 16%} 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
\partial 4 a'8 g |

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
 
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  
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
      %\new Lyrics \lyricsto soprano \lyricVerseFive
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

