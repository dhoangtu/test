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
  title = "011. Easter"
  subtitle = "(Aurora coelum purpurat)"
  %poet = ""
  composer = "A. Edmonds Tozer"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.94"
  %site = ""
}

globalSettings= {
  \key c \minor
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
  %{  1 %} bes4. bes8 c4 g |
  %{	2 %} bes4. bes8 bes4 bes \break \bar "|"
  %{	3 %} c4. c8 ees4 c |
  %{	4 %} ees4. ees8 ees4 ees \! \fermata |
  %{	5 %} d4. ees8 d4 c \break \bar "|"
  %{	6 %} bes4. bes8 bes4 g | 
  %{	7 %} aes4 bes c ees |
  %{	8 %} ees4. d8 ees2 \! \fermata |
  %{	9 %} ees1 |
  %{ 10%} ees1 \bar "|."
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
 \partial 4 ees4 |
  %{	1 %} f4. ees8 ees4 ees |
  %{	2 %} g4. aes8 g4 g \break \bar "|"
  %{	3 %} aes4. aes8 bes4 aes |
  %{	4 %} g4. aes8 g4 g |
  %{	5 %} f4. ges8 f4 a \break \bar "|"
  %{	6 %} g4. f8 ees4 g | 
  %{	7 %} f ees aes g |
  %{	8 %} bes4. aes8 g2 |
  %{	9 %} aes1 |
  %{ 10%} g1
 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
\partial 4 bes4 |
  %{	1 %} bes4. g8 g4 c |
  %{	2 %} d4. d8 bes4 ees \break \bar "|"
  %{	3 %} ees4. ees8 bes4 ees |
  %{	4 %} ees4. c8 bes4 bes |
  %{	5 %} bes4. c8 d4 ees \break \bar "|"
  %{	6 %} d4. d8 ees4 des | 
  %{	7 %} c bes ees ees | 
  %{	8 %} f4. f8 ees2 |
  %{	9 %} c1 |
  %{ 10%} bes

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
\partial 4 ees4 |
  %{	1 %} d4. ees8 c4 ees |
  %{	2 %} g4. f8 ees4 ees |
  %{	3 %} aes4. aes8 g4 aes |
  %{	4 %} c4. aes8 ees4 ees \! \fermata |
  %{	5 %} bes'4. a8 bes4 f |
  %{	6 %} g4. aes8 g4 ees |
  %{	7 %} f g aes c |
  %{	8 %} bes4. bes8 ees,2 \! \fermata |
  %{	9 %} aes1 |
  %{ 10%} ees1
 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
 Light's glit -- tering morn be -- decks the sky,
 Heaven thun -- ders forth its vic -- tor cry;
 The glad earth shouts its tri -- umph high,
 And groan -- ing hell makes wild re -- ply.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  While He, the King of glo -- rious might,
  Treads down death's strength in death's des -- pite,
  And tramp -- ling hell by vic -- tor's right,
  Brings forth His sleep -- ing Saints to light. 
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  Fast barred be -- neath the stone of late,
  In watch and ward where sol -- diers wait,
  Now shin -- ing in tri -- umph -- ant state,
  He ris -- es vic -- tor from death's gate. 
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Hell's pains are loosed, and tears are fled;
  Cap -- ti -- vi -- ty is cap -- tive led;
  The Ang -- el, crowned with light, hath said:
  The Lord is ris -- en from the dead. A -- men.
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
The A -- postles' hearts were full of pain
For their dear Lord so late -- ly slain,
That Lord his ser -- vants wick -- ed train
With bit -- ter scorn had dared arr -- aign.
}

lyricVerseSix = \lyricmode {
  \set stanza = #"6."
  We pray Thee, King with glo -- ry decked,
  In this our pas -- chal joy pro -- tect
  From all that death would fain ef -- fect,
  Thy ran -- somed flock, Thine own e -- lect.
}

lyricVerseSeven = \lyricmode {
  \set stanza = #"7."
  To Thee Who, dead, a -- gain dost live,
  All glo -- ry, Lord, Thy peo -- ple give:
  All glo -- ry, as is e -- ver meet,
  To Fa -- ther and to Pa -- ra -- clete.
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
	  \new Lyrics \lyricsto soprano \lyricVerseSeven
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

