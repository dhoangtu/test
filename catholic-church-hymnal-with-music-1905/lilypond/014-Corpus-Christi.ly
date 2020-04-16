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
  title = "014. Whitsun Tide"
  subtitle = "Veni, sancte Spiritus"
  poet = "(First tune)"
  composer = "S. Webbe"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.100"
  %site = ""
}

globalSettings= {
  \key f \major
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
  %{  1 %} f4 f f g |
  %{	2 %} a4. g8 f2 |
  %{	3 %} g4 a g c \break \bar "|"
  %{	4 %} c b c2 |
  %{	5 %} d4 c bes a |
  %{	6 %} g4. g8 f2 \break \bar "|"
  %{	7 %} f4 bes a bes |
  %{	8 %} d c bes2 |
  %{	9 %} a4 c bes a \break \bar "|"
  %{ 10%} g4. f8 e2 |
  %{ 11%} g4 bes a g |
  %{ 12%} f e f2 \bar "|."

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
  %{	1 %} c4 d c e |
  %{	2 %} f e f2 |
  %{	3 %} c4 f e e8 (f) |
  %{	4 %} g4 f e2 |
  %{	5 %} f4 f f f |
  %{	6 %} f e f2 |
  %{	7 %} d4 f f d |
  %{	8 %} f f8ees d2 |
  %{	9 %} f4 g d8 (e) f4 |
  %{ 10%} d4. d8 e2 |
  %{ 11%} d4 g f d |
  %{ 12%} c c c2
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
  %{	1 %} a4 bes c bes |
  %{	2 %} c bes a2 |
  %{	3 %} c4 c c c8 (d) |
  %{	4 %} e4 d c2 |
  %{	5 %} f,4 a bes c |
  %{	6 %} c c8 bes a2 |
  %{	7 %} bes4 bes c bes |
  %{	8 %} bes a bes2 |
  %{	9 %} c4 g8 a bes4 c |
  %{ 10%} bes4. a8 c2 |
  %{ 11%} g4 d' c bes |
  %{ 12%} a g a2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
  %{	1 %} f4 bes a g |
  %{	2 %} f c f2 |
  %{	3 %} e4 f c a' |
  %{	4 %} g g c,2 |
  %{	5 %} bes4 f' d f |
  %{	6 %} c c f2 |
  %{	7 %} bes,4 d f g |
  %{	8 %} f f bes2 |
  %{	9 %} f4 e g f |
  %{ 10%} bes,4. d8 c2 |
  %{ 11%} bes4 g a bes |
  %{ 12%} c c f2
  
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

