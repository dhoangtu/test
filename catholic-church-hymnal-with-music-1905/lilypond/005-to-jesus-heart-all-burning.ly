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
\version "2.20.0"

\header {
  title = "005. To Jesus' Heart All Burning"
  composer = "Nicola A. Montani"
  poet = "Aloys Schlor"
  tagline = ##f
  source = "The St. Gregory Hymnal and Catholic Choir Book. Singers' ed., Melody ed. (1920), p.112"
  site = "archive.org"
}

globalSettings= {
  \key g \major
  \time 3/2
  %\override Score.BarNumber.break-visibility = ##(#t #t #t)
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
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
% 6. Soprano verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseSoprano = \relative c'' {
  \tempo "Slowly"
  \partial 2 g4 ^\p (d) |
  %{	1 %} e2 ^\< a c4 fis, \! |
  %{	2 %} g2 b b4 (d) |
  %{	3 %} c b a2 ^\> g \! |
  %{	4 %} a1 ^\> a4 \! ( fis) |
  %{	5 %} e2 ^\< d e4 fis \! |
  %{	6 %} b (a) ^\> g2 g4 \! (b) |
  %{	7 %} fis2. ^\< b4 dis cis \! |
  %{	8 %} b1 \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
  \partial 2 d2 |
  %{	1 %} d c e4 d |
  %{	2 %} d2 d d |
  %{	3 %} g4 f! e2 cis |
  %{	4 %} e (d) d |
  %{	5 %} c! c c4 e |
  %{	6 %} dis2 e e |
  %{	7 %} dis2. dis4 e e |
  %{	8 %} e2 (dis)
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 8. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
  \partial 2 b4 ^\p (g) |
  %{	1 %} g2 e a4 a |
  %{	2 %} g2 g f! |
  %{	3 %} e4 g g2 a |
  %{	4 %} g (fis) fis4 (a) |
  %{	5 %} g2 fis g4 a |
  %{	6 %} fis2 g b4 (g) |
  %{	7 %} b2. b4 gis ais |
  %{	8 %} fis1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
  \partial 2 g4 (b) |
  %{	1 %} c (b) a2 a4 c |
  %{	2 %} b2 g g |
  %{	3 %} e'4 d c2 e |
  %{	4 %} d1 c2 |
  %{	5 %} a a c4 c |
  %{	6 %} b2 e e |
  %{	7 %} fis2. fis4 fis fis |
  %{	8 %} b,1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Soprano chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusSoprano = \relative c'' {
  \set Score.currentBarNumber = #9
  \partial 2 b2 ^\f |
  %{	9  %} b4 ^\< b cis2 dis \! |
  %{	10 %} e -^ (b) g |
  %{	11 %} g4 ^\< g a2 b \! |
  %{	12 %} c1 -^ ^\> e,2 -^ \! ^\f |
  %{	13 %} b'4 -^ b -^ b2 -^ a -^ |
  %{	14 %} a -^ g -^ g4 (d) |
  %{	15 %} e c 'a2 a |
  %{	16 %} g1 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusAlto = \relative c' {
  \set Score.currentBarNumber = #9
  \partial 2 d2 |
  %{	9  %} dis4 dis e2 fis |
  %{	10 %} g (e) e |
  %{	11 %} d4 d c2 f! |
  %{	12 %} f! (e) e |
  %{	13 %} dis4 dis e2 fis |
  %{	14 %} fis e d |
  %{	15 %} c4 e c2 c |
  %{	16 %} b1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusTenor = \relative c' {
  \set Score.currentBarNumber = #9
  \partial 2 a2 ^\f |
  %{	9  %} b4 b b2 b |
  %{	10 %} b1 b2 |
  %{	11 %} b4 b g2 g |
  %{	12 %} a (g) a ^\f |
  %{	13 %} fis4 fis g2 b |
  %{	14 %} c b g |
  %{	15 %} g4 g g2 fis |
  %{	16 %} g1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusBasso = \relative c {
  \set Score.currentBarNumber = #9
  \partial 2 fis2 |
  %{	9  %} a4 a g2 fis |
  %{	10 %} e (g) e |
  %{	11 %} f!4 f e2 d |
  %{	12 %} c1 c2 |
  %{	13 %} b4 b cis2 dis |
  %{	14 %} e e b |
  %{	15 %} c4 a e'2 d |
  %{	16 %} g,1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 11. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  To Je -- sus' Heart all burn -- ing
  With fer -- vent love for men,
  My heart, with fond -- est yearn -- ing,
  Shall raise its joy -- ful strain.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  O Heart, for me on fire _
  With love no tongue can speark,
  My yet un -- told de -- sire _
  God gives me for thy sake.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  Too true, I have for -- sak -- en
  Thy love by wil -- ful sin;
  Yet now let me be tak -- en
  Back by thy grace a -- gain.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  As thou art meek and low -- ly,
  And ev -- er pure of Heart,
  So may my heart be whol -- ly
  Of thine the coun -- ter -- part.
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
  Oh! That to me were giv -- en
  The pin -- ions of a dove,
  I'd speed a -- loft to heav -- en,
  My Je -- sus' love to prove.
}

lyricVerseSix = \lyricmode {
  \set stanza = #"6."
  When life a -- way is fly -- ing,
  And earth's false glare is done;
  Still, Sa -- cred Heart, in dy -- ing
  I'll say I'm all thine own.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 10. Chorus lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricChorus = \lyricmode {
  \set stanza = #"Refrain:"
  While a -- ges course a -- long,
  Blest be with loud -- est song,
  The Sa -- cred Heart of Je -- sus,
  By ev -- ery heart and tongue.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 12. Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \voiceOne \globalSettings \stemUp \slurUp \musicVerseSoprano
        }
        \new Voice = "alto" {
          \voiceTwo \globalSettings \stemDown \slurDown \musicVerseAlto
        }
      >>
      \new Lyrics \lyricsto soprano \lyricVerseOne
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseTwo
      \new Lyrics \lyricsto soprano \lyricVerseThree
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseFour
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseFive
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseSix
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" {
          \voiceOne \globalSettings \stemUp \slurUp \musicVerseTenor
        }
        \new Voice = "basso" {
          \voiceTwo \globalSettings \stemDown \slurDown \musicVerseBasso
        }
      >>
    >>
}

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
