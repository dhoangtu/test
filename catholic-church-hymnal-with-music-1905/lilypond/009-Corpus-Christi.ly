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
  title = "009. Corpus Christi"
  subtitle = "(To Jesus in the Blessed Sacrament)"
  %poet = ""
  composer = "A. Edmonds Tozer"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.93"
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
  %{  1 %} ees4 g aes f |
  %{	2 %} bes2 g |
  %{	3 %} bes4 ees, f aes |
  %{	4 %} g1 \break \bar "|"
  %{	5 %} g4 bes c a |
  %{	6 %} d2 bes |
  %{	7 %} d4 bes d c |
  %{	8 %} bes1 \break \bar "|"
  %{	9 %} aes4 f c' bes |
  %{ 10%} aes2 c |
  %{ 11%} des4 bes ees des |
  %{ 12%} c1 \break \bar "|"
  %{ 13%} d4 d c bes | 
  %{ 14%} ees2 bes |
  %{ 15%} g4 bes ees, f |
  %{ 16%} ees1 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
  %{	1 %} bes4 ees d d |
  %{	2 %} ees2 ees |
  %{	3 %} f4 ees ees d |
  %{	4 %} ees1 \break \bar "|"
  %{	5 %} d4 g a fis |
  %{	6 %} g2 g |
  %{	7 %} bes4 f a a |
  %{	8 %} f1 \break \bar "|"             
  %{	9 %} f4 f g g |
  %{ 10%} f (g) f (aes) |
  %{ 11%} g4 g aes g |
  %{ 12%} aes1 \break \bar "|"
  %{ 13%} bes4 f f f |
  %{ 14%} ees2 ees4 (f) |
  %{ 15%} ees4 ees c d |
  %{ 16%} ees1 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
  %{	1 %} g4  bes bes bes |
  %{	2 %} bes2 bes |
  %{	3 %} f4 g aes bes |
  %{	4 %} bes1 \break \bar "|"              
  %{	5 %} bes4 d ees ees |
  %{	6 %} d2 d4 (ees) |
  %{	7 %} f4 d f ees |
  %{	8 %} d1 \break \bar "|"              
  %{	9 %} c4 aes bes des |
  %{ 10%} c (bes) aes2 |
  %{ 11%} bes4 bes aes ees' |
  %{ 12%} ees1 \break \bar "|"  
  %{ 13%} f4 bes, c d |
  %{ 14%} bes4 (aes) g (bes) |
  %{ 15%} bes4 g g aes |
  %{ 16%} g1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
  %{	1 %} ees4 ees ees aes |
  %{	2 %} g2 ees |
  %{	3 %} d4 c bes bes |
  %{	4 %} ees1 \break \bar "|"                
  %{	5 %} g4 g fis c' |
  %{	6 %} bes4 (a) g2 |
  %{	7 %} f4 f f f |
  %{	8 %} bes1 \break \bar "|"  
  %{	9 %} f4 f e e |
  %{ 10%} f2 f4 (fes) |
  %{ 11%} ees4 des c ees |
  %{ 12%} aes1 \break \bar "|"  
  %{ 13%} bes4 aes aes aes |
  %{ 14%} g4 (f) ees (d) |
  %{ 15%} ees4 ees bes bes |
  %{ 16%} ees1 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  When the lov -- ing Shep -- herd,
  Ere He left the earth,
  Shed to pay our ran -- som,
  Blood of price -- less worth
  These His lambs so cher -- ished,
  Pur -- chased for His own,
  He would not a -- ban -- don
  In the world a -- lone.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  Ere He makes us part -- ners
  Of His realm on high,
  Hap -- py and im -- mor -- tal
  With Him in the sky
  Love im -- mense, stu -- pen -- dous,
  Makes Him here be -- low
  Part -- ner of our ex -- ile
  In this world of woe.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  Je -- sus, food of an -- gels,
  Mon -- arch of the heart,
  Oh, that I could nev -- er 
  From Thy Face de -- part,
  Yes, Thou ev -- er dwell -- est
  Here for love of me,
  Hid -- den Thou re -- main -- est
  God of Maj -- es -- ty.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Soon I hope to see Thee,
  And en -- joy Thy love,
  Face to face, sweet Je -- sus,
  In Thy heaven a -- bove.
  But on earth an ex -- ile,
  My de -- light shall be
  E -- ver to be near Thee,
  Veiled for love of me.
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

