%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CONTENTS OF THIS DOCUMENT
% 1. Common settings
% 2. Soprano chorus music
% 3. Alto chorus music
% 4. Tenor chorus music
% 5. Basso chorus music
% 6. Soprano verse music
% 7. Alto verse music
% 8. Tenor verse music
% 9. Basso verse music
% 10. Chorus lyrics
% 11. Verse lyrics
% 12. Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Common settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

\header {
  title = "017. Whitsun Tide"
  subtitle = "Veni, dator munerum"
  arranger = "W. Schulthes"
  tagline = ##f
  copyright = ""
  source = "Catholic Church Hymnal with Music (1905), p.106"
  %site = ""
}

globalSettings= {
  \key ees \major
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
% 2. Soprano chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusSoprano = \relative c' {
  %{ 1 %} bes'4 bes bes4. bes8 |
  %{ 2 %} c8. c16 c8 bes aes4 g |
  %{ 3 %} g g bes aes8 g8 |
  %{ 4 %} f4 f f4. f8 |
  %{ 5 %} g4 g bes4. bes8 |
  %{ 6 %} ees4 d d c |
  %{ 7 %} c4. bes8 bes4 aes |
  %{ 8 %} g4. f8 f4 (ees8) 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusAlto = \relative c' {
  %{ 1 %} bes'4 bes bes4. bes8 |
  %{ 2 %} d8. d16 d8 e d4 ees |
  %{ 3 %} ees d des c8 e |
  %{ 4 %} f4 f f4. d8 |
  %{ 5 %} ees4 ees f4. f8 |
  %{ 6 %} ees4 f f e |
  %{ 7 %} ees4. e8 f4 f |
  %{ 8 %} ees4. d8 d4 (ees8)
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusTenor = \relative c' {
  %{ 1 %} bes4 bes bes4. bes8 |
  %{ 2 %} bes8. bes16 bes8 bes bes4 bes |
  %{ 3 %} bes bes g aes8 bes |
  %{ 4 %} c4 c bes4. bes8 |
  %{ 5 %} bes4 bes bes4. bes8 |
  %{ 6 %} c4 b b c |
  %{ 7 %} c4. c8 c4 c |
  %{ 8 %} bes4. aes8 aes4 (g8)
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusBasso = \relative c {
  %{ 1 %} bes4 bes bes4. bes8 |
  %{ 2 %} aes8. aes16 aes8 g f4 ees |
  %{ 3 %} ees ees e f8 g |
  %{ 4 %} aes4 aes bes4. bes8 |
  %{ 5 %} ees4 ees d4. d8 |
  %{ 6 %} c4 g g aes |
  %{ 7 %} aes4. g8 d4 aes |
  %{ 8 %} bes4. bes8 bes4 (ees8)
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Soprano verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseSoprano = \relative c'' {
  \set Score.currentBarNumber = #9
  %{	8  %} 
  %{	9  %} 
  %{	10 %}
  %{	11 %}
  %{	12 %}
  %{	13 %}
  %{	14 %}
  %{	15 %}
  %{	16 %} 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c'' {
  \set Score.currentBarNumber = #9
  %{	8	%} 
  %{	9	%} 
  %{	10 %}
  %{	11 %}
  %{	12 %}
  %{	13 %}
  %{	14 %}
  %{	15 %}
  %{	16 %} 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 8. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
  \set Score.currentBarNumber = #9
  %{	8	%} 
  %{	9	%} 
  %{	10 %}
  %{	11 %}
  %{	12 %}
  %{	13 %}
  %{	14 %}
  %{	15 %}
  %{	16 %}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c' {
  \set Score.currentBarNumber = #9
  %{	8	%} 
  %{	9	%} 
  %{	10 %}
  %{	11 %}
  %{	12 %}
  %{	13 %}
  %{	14 %}
  %{	15 %}
  %{	16 %}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 10. Chorus lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricChorus = \lyricmode {
  \set stanza = #"Refrain:"
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 11. Verse lyrics
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

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 12. Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \voiceOne \globalSettings \stemUp \slurUp \musicChorusSoprano
        }
        \new Voice = "alto" {
          \voiceTwo \globalSettings \stemDown \slurDown \musicChorusAlto
        }
      >>
      \new Lyrics \lyricsto soprano \lyricChorus
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" {
          \voiceOne \globalSettings \stemUp \slurUp \musicChorusTenor
        }
        \new Voice = "basso" {
          \voiceTwo \globalSettings \stemDown \slurDown \musicChorusBasso
        }
      >>
    >>
}

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
