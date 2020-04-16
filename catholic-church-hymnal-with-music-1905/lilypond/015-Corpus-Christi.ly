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
  title = "015. Whitsun Tide"
  subtitle = "Veni, sancte Spiritus"
  poet = "(Second tune)"
  composer = "E. M. Lott"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.101"
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
\partial 4 f8 f |
  %{  1 %} g4 f g bes |
  %{	2 %} bes2. bes8 a \break \bar "|"
  %{	3 %} g4 g ees' c |
  %{	4 %} a2. bes8 bes |
  %{	5 %} c4 f, g g |
  %{	6 %} f2. \break \bar "||" f8 f |
  %{	7 %} a4 f e f |
  %{	8 %} d2. d8 e |
  %{	9 %} f4 d' c g \break \bar "|"
  %{ 10%} a2. a8 a |
  %{ 11%} bes2 c |
  %{ 12%} d2. c4 |
  %{ 13%} bes2. \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
\partial 4 d8 d |
  %{	1 %} ees4 f ees ees |
  %{	2 %} ees2 (d4) d8 c |
  %{	3 %} bes4 f' ees g |
  %{	4 %} f2. f8 f |
  %{	5 %} f4 f f e |
  %{	6 %} f2. \break \bar "||" d8 d |
  %{	7 %} e4 d d cis |
  %{	8 %} d2. d8 d |
  %{	9 %} d4 d f e |
  %{ 10%} f2. ees8 ees |
  %{ 11%} d2 ees |
  %{ 12%} d4 (f g) a |
  %{ 13%} bes2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
\partial 4 bes8 bes |
  %{	1 %} bes4 bes bes g |
  %{	2 %} f2. fis8 fis |
  %{	3 %} g4 b c c |
  %{	4 %} c2. bes8 bes |
  %{	5 %} a4 a d c8 bes |
  %{	6 %} a2. \break \bar "||" a8 a |
  %{	7 %} a4 a bes a8 g |
  %{	8 %} f2. f8 g |
  %{	9 %} a4 bes a c |
  %{ 10%} c2. c8 c |
  %{ 11%} bes2 bes |
  %{ 12%} bes4 (d ees) ees |
  %{ 13%} d2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
\partial 4 bes8 bes |
  %{	1 %} ees4 d ees ees |
  %{	2 %} bes2. d8 d |
  %{	3 %} ees4 d c ees |
  %{	4 %} f2. d8 d |
  %{	5 %} c4 d bes c |
  %{	6 %} f2. \break \bar "||" d8 d |
  %{	7 %} cis4 d g, a |
  %{	8 %} d2. d8 d |
  %{	9 %} d4 bes c c |
  %{ 10%} f2. fis8 fis |
  %{ 11%} g2 ges |
  %{ 12%} f2. f4 |
  %{ 13%} bes,2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  Ho -- ly Spir -- it, come and shine
  On our souls with beams di -- vine,
  Is -- suing from Thy ra -- diance bright.
  Come, O Fa -- ther of the poor,
  Ev -- er boun -- teous of Thy store,
  Come, our hearts' un -- fail -- ing Light.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  Come, Con -- so -- ler, kind -- est, best,
  Come, our bo -- som's dear -- est guest,
  Sweet re -- freah -- ment, sweet re -- pose.
  Rest in la -- bor, cool -- ness sweet,
  Tem -- per -- ing the burn -- ing heat,
  Tru -- est com -- fort of our woes.

}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  O di -- vin -- est Light, im -- part
  Un -- to ev -- ery faith -- ful heart
  Plen -- teous strams from love's bright flood.
  But for Thy blest De -- i -- ty,
  Noth -- ing pure in man could be;
  Noth -- ing harm -- less, noth -- ing good.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Wash a -- way each sin -- ful stain;
  Gent -- ly shed Thy gra -- cious rain
  On the dry and fruit -- less soul.
  Heal each wound and bend each will,
  Warm our hearts be -- numbed and chill,
  All our way -- ward steps con -- trol.
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
  Un -- to all Thy faith -- ful just,
  Who in Thee con -- fide and trust,
  Deign the seven -- fold gift to send.
  Grant us vir -- tue's blest in -- crease,
  Grant a death of hope and peace,
  Grant the joys that ne -- ver end.
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

