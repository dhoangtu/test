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
  title = "022. Corpus Christi"
  subtitle = "Verbum supernum prodiens"
  %poet = ""
  composer = "W. Ratcliffe"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.99"
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
%{  1%} b b a fis |
%{  2%} g a fis a \break \bar "|"
%{  3%} d cis b a |
%{  4%} b cis a \fermata \bar "||" d |
%{  5%} b cis a fis \break \bar "|"
%{  6%} g a fis fis |
%{  7%} b b a fis |
%{  8%} e fis d \fermata \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
  \partial 4 d4 |
%{  1%} d cis d d |
%{  2%} d cis d fis |
%{  3%} fis fis fis a |
%{  4%} a gis a a |
%{  5%} g g fis d |
%{  6%} e e d d |
%{  7%} d e a, d |
%{  8%} d cis d
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
  \partial 4 a4 |
%{  1%} g g a a |
%{  2%} b a a a |
%{  3%} b ais b cis |
%{  4%} fis e8 d cis4 d |
%{  5%} d cis cis d |
%{  6%} b a a b |
%{  7%} b cis d a |
%{  8%} b a8 g fis4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
  \partial 4 d4 |
%{  1%} g e fis fis |
%{  2%} e a, d d |
%{  3%} b cis d fis |
%{  4%} d e a \fermata fis |
%{  5%} g e fis b |
%{  6%} e, cis d b8 a |
%{  7%} g4 g' fis d |
%{  8%} g, a d \fermata 

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  The Word, de -- scend -- ing from a -- bove,
  Though with the Fa -- ther still on high,
  Went forth up -- on His work of love,
  And soon to life's last eve drew nigh.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  He short -- ly to a death ac -- cursed
  By a dis -- ci -- ple shall be given;
  But, to his twelve dis -- ci -- ples, first 
  He gives Him -- self, the Bread from heaven.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  Him -- self in ei -- ther kind He gave;
  He gave his Flesh, He gave His Blood;
  Of flesh and blood all men are made;
  And He of man would be the Food.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  At birth our Bro -- ther He be -- came;
  At meat Him -- self as food He gives;
  To ran -- som us He died in shame;
  As our re -- ward, in bliss He lives.
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

