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
  title = "020. Most Holy Trinity"
  subtitle = "Tu Trinitatis Unitas"
  %poet = ""
  composer = "H. Whitehead"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.112"
  %site = ""
}

globalSettings= {
  \key g \minor
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
  \partial 4 g'4 |
  %{  1%} bes a c bes |
  %{  2%} ees d c d \break \bar "|"
  %{  3%} d c g a |
  %{  4%} bes c f, fis |
  %{  5%} g a bes c |
  %{  6%} d2. \break \bar "||" d4 |
  %{  7%} d bes ees d |
  %{  8%} c a d c |
  %{  9%} bes g c bes \break \bar "|"
  %{ 10%} a a a a |
  %{ 11%} d g, bes a |
  %{ 12%} g2. r4 \bar "||"
  %{ 13%} g1 |
  %{ 14%} g1 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
   \partial 4 g'4 |
  %{  1%} g g g g |
  %{  2%} g g g fis |
  %{  3%} f ees g f |
  %{  4%} f f f d |
  %{  5%} d d d g |
  %{  6%} fis2. fis4 |
  %{  7%} f f ees f |
  %{  8%} g g fis a |
  %{  9%} g g g g |
  %{ 10%} g g fis fis |
  %{ 11%} g g g fis |
  %{ 12%} g2. r4 |
  %{ 13%} ees1 |
  %{ 14%} d1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
  \partial 4 bes4 |
  %{  1%} d c ees d |
  %{  2%} c d ees d |
  %{  3%} b c c c |
  %{  4%} bes ees d c |
  %{  5%} bes a g g |
  %{  6%} a2. a4 |
  %{  7%} bes bes bes a |
  %{  8%} c ees d d |
  %{  9%} d bes c d |
  %{ 10%} ees e d d |
  %{ 11%} d ees d c |
  %{ 12%} bes2. r4 |
  %{ 13%} c1 |
  %{ 14%} b1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
  \partial 4 g'4 |
  %{  1%} g g g g |
  %{  2%} c bes a d, |
  %{  3%} g c, ees f |
  %{  4%} d a bes d |
  %{  5%} g fis g ees |
  %{  6%} d2. d4 |
  %{  7%} bes d g f |
  %{  8%} ees c d fis |
  %{  9%} g f ees d |
  %{ 10%} c cis d c |
  %{ 11%} bes c d d |
  %{ 12%} g2. r4 |
  %{ 13%} c,1 |
  %{ 14%} g1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  Blest Three in One and One in Three,
  Great ru -- ler of the world,
  to Thee Thy sup -- pliant peo -- ple kneel;
  Oh, list -- en from Thy throne on high,
  And grant of Thy great clem -- en -- cy
  Thy balm our wounds to heal.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  What -- e'ver in us hath been de -- cayed
  By Sa -- tan's fraud, Lord, with Thy aid
  As -- sist us to re -- new;
  With bod -- ies pure and kin -- dling hearts,
  And shield -- ed from temp -- ta -- tion's darts,
  May we our path pur -- sue. A -- men.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  O Light of light, with Thy blest ray,
  Di -- rect our steps through -- out this day
  We hum -- bly Thee im -- plore;
  Praise we the Fa -- ther, praise the Son,
  And Ho -- ly Ghost, blest Three in One,
  Both now and ev -- er -- more.
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
      %\new Lyrics \printItalic \lyricsto soprano \lyricVerseFour
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

