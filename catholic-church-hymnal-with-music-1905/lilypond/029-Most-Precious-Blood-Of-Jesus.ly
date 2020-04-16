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
  title = "029. Most Precious Blood of Jesus"
  subtitle = "Viva, viva Gesu"
  poet = "(First tune)"
  composer = "A. Edmonds Tozer"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.117"
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
\partial 4 d4 |
%{  1 %} g c b g |
%{  2 %} a4. a8 g4 a \break |
%{  3 %} b d d b |
%{  4 %} b (a8) a fis4 g |
%{  5 %} a d, fis4. e8 |
%{  6 %} d2. \break \bar "||" d4 |
%{  7 %} d d fis a |
%{  8 %} g g a c |
%{  9 %} b b c d \break |
%{  10%} e4. e8 d4 \fermata d |
%{  11%} c e, fis fis |
%{  12%} g2. \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
\partial 4 d4 |
%{  1 %} e c d b |
%{  2 %} e (d8) c b4 d |
%{  3 %} d a' g g |
%{  4 %} g (fis8) e d4 d |
%{  5 %} d d d cis |
%{  6 %} d2. d4 |
%{  7 %} d c d c |
%{  8 %} b d e d |
%{  9 %} d g g g |
%{  10%} g4. a8 gis4 d |
%{  11%} e e fis fis |
%{  12%} g2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
\partial 4 b4 |
%{  1 %} b a g g |
%{  2 %} g fis g d'8 c |
%{  3 %} b4 a b d |
%{  4 %} cis4. cis8 d4 b |
%{  5 %} a b a g |
%{  6 %} fis2. g4 |
%{  7 %} g a a fis |
%{  8 %} g g g fis |
%{  9 %} g d' c b |
%{  10%} c4. c8 b4 gis |
%{  11%} a c c b8 a |
%{  12%} g2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
\partial 4 g'4 |
%{  1 %} e a, b e |
%{  2 %} c d e fis |
%{  3 %} g fis e e |
%{  4 %} a,4. a8 b4 g |
%{  5 %} fis g a a |
%{  6 %} d2. b4 |
%{  7 %} c a d dis |
%{  8 %} e b c d |
%{  9 %} g f e d |
%{  10%} c4. a8 e'4 \fermata e |
%{  11%} a, a d d |
%{  12%} g,2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  Hail, Je -- sus, hail, Who for my sake
  Sweet Blood from Ma -- ry's veins didst take
  And shed it all for me;
  Oh, bless -- ed be my Sa -- vior's Blood,
  My life, my light, my on -- ly good,
  To all e -- ter -- ni -- ty.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
 To end -- less ag -- es let us praise
 The pre -- cious Blood, whose price could raise
 The world from wrath and sin;
 Whose streams our in -- ward thirst ap -- pease,
 And heal the sin -- ner's worst dis -- ease,
 If he but bathe there -- in.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  O sweet -- est Blood, that canst im -- plore
  Par -- don of God, and heaven re -- store,
  The heaven which sin had lost;
  While A -- bel's blood for ven -- geance pleads,
  What Je -- sus shed still in -- ter -- cedes 
  For those who wrong Him most.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Oh, to be sprin -- kled from the wells
  Of Christ's own sa -- cred Blood ex -- cels.
  Earth's best and high -- est bliss:
  The mi -- nis -- ters of wrath di -- vine
  Hurt not the hap -- py hearts that shine
  With those red drops of His.
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
  Ah, there is joy a -- mid the Saints,
  And hell's des -- pair -- ing cour -- age faints
  When this sweet song we raise:
  Oh, loud -- er then, and loud -- er still,
  Earth with one might -- y cho -- rus fill,
  The pre -- cious Blood to praise.
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

