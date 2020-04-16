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
  title = "023. Corpus Christi"
  subtitle = "Hoste dum victo triumphans"
  %poet = ""
  composer = "J. C. Bowen"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.104"
  %site = ""
}

globalSettings= {
  \key bes \major
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
%{ 1 %} f4 g g f |
%{ 2 %} bes a g f |
%{ 3 %} g a bes c \break \bar "|"
%{ 4 %} d c c2 \bar "||"
%{ 5 %} bes4 a g f |
%{ 6 %} g a f d \break \bar "|"
%{ 7 %} f g c f, |
%{ 8 %} f e f2 \bar "||" 
%{ 9 %} f4 g g f \break \bar "|"
%{ 10%} bes c d2 |
%{ 11%} ees4 d c bes |
%{ 12%} c2 c |
%{ 13%} bes1 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
%{ 1 %} d4 ees ees c |
%{ 2 %} f f d d |
%{ 3 %} d f f e |
%{ 4 %} f e f2 |
%{ 5 %} f4 f d d |
%{ 6 %} d d d a |
%{ 7 %} d e f d |
%{ 8 %} c c c2 |
%{ 9 %} d4 ees ees d |
%{ 10%} d f f (g) |
%{ 11%} g g ees d |
%{ 12%} g2 f4 (ees) |
%{ 13%} d1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
%{ 1 %} bes4 bes bes a |
%{ 2 %} bes c bes a |
%{ 3 %} bes c bes g |
%{ 4 %} bes g a2 |
%{ 5 %} bes4 c bes a |
%{ 6 %} bes a a f |
%{ 7 %} a c c bes |
%{ 8 %} g g a2 |
%{ 9 %} bes4 bes bes bes |
%{ 10%} bes a a (bes) |
%{ 11%} c bes g bes |
%{ 12%} bes2 a |
%{ 13%} bes1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
%{ 1 %} bes4 ees ees f |
%{ 2 %} d f g d |
%{ 3 %} g f d c |
%{ 4 %} bes c f2 |
%{ 5 %} d4 f g d |
%{ 6 %} g f d d |
%{ 7 %} d c a bes |
%{ 8 %} c c f2 |
%{ 9 %} bes,4 ees ees bes |
%{ 10%} g' f d (g) |
%{ 11%} c, g' c, g' |
%{ 12%} ees2 f |
%{ 13%} f1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  When the Pa -- triarch was re -- turn -- ing
  Corwned with tri -- umph from the fray,
  Him the peace -- ful king of Sa -- lem
  Came to meet up -- on his way;
  Meek -- ly bear -- ing bread and wine,
  Ho -- ly priest -- hood's aw -- ful sign.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  On the truth thus dim -- ly sha -- dowed
  La -- ter days a lus -- tre shed;
  When the freat High -- Priest e -- ter -- nal,
  Un -- der forms of wind and bread,
  For the world's im -- mor -- tal Food
  Gave His Flesh and gave his Blood.

}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  Wond -- rous Gift! The Word Who fa -- shioned
  All things by His might di -- vine,
  Bread in -- to His Bod -- y chang -- es,
  In -- to His own Blood the wine;
  What though sense no change per -- ceives,
  Faith ad -- mires, a -- dores, be -- lieves.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  He Who once to die a vic -- tim
  On the Cross did not re -- fuse,
  Day by day up -- on our al -- tars
  That same Sac -- ri -- fice re -- news;
  Through His ho -- ly priest -- hood's hands.
  Faith -- ful to His last com -- mands.
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
  While the peo -- ple all u -- ni -- ting
  In the Sac -- ri -- fice sub -- lime,
  Of -- fer Christ to His high Fa -- ther,
  Of -- fer up them -- selves with Him;
  Then to -- ge -- ther with the priest
  On the liv -- ing Vic -- tim feast.
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

