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
  title = "003. To Jesus' Heart All Burning"
  subtitle = "(Cor Amoris)"
  poet = "Traditional Air"
  composer = "Rev. A. J. Christe, S.J."
  tagline = ##f
  source = "To Jesus' heart all burning-The Army and Navy Hymnal (1921), p.342"
  site = "hymnary.org"
}

globalSettings= {
  \key d \major
  \time 4/4
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
% 6. Soprano verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseSoprano = \relative c' {
  \partial 4 fis8 (g) |
  %{	1 %} a4 a gis b |
  %{	2 %} a4. (d8) fis,4 fis |
  %{	3 %} e fis g8 (b) a (g) |
  %{	4 %} fis2 r4 \break \bar "|" fis8 (g) |
  %{	5 %} a4 a gis b |
  %{	6 %} a4. (d8) fis,4 fis |
  %{	7 %} e a8 (cis) d4 b |
  %{	8 %} a2 r4 \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
  \partial 4 d8 (e) |
  %{	1 %} fis4 fis f! f |
  %{	2 %} fis!2 d4 d |
  %{	3 %} cis d e8 (g) fis (e) |
  %{	4 %} d2 r4 d8 (e) |
  %{	5 %} fis4 fis f! f |
  %{	6 %} fis!2 d4 d |
  %{	7 %} cis e8 (a) gis4 e |
  %{	8 %} e2 r4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 8. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
  \partial 4 a4 |
  %{	1 %} a a b gis |
  %{	2 %} a2 a4 a |
  %{	3 %} a a a a |
  %{	4 %} a2 r4 a4 |
  %{	5 %} a a b gis |
  %{	6 %} a2 a4 a |
  %{	7 %} a cis b d |
  %{	8 %} cis2 r4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
  \partial 4 fis8 (e) |
  %{	1 %} d4 d d d |
  %{	2 %} d2 d4 fis, |
  %{	3 %} a a a cis |
  %{	4 %} d2 r4 fis8 (e) |
  %{	5 %} d4 d d d |
  %{	6 %} d2 d4 b |
  %{	7 %} e e e e |
  %{	8 %} a2 r4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Soprano chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusSoprano = \relative c'' {
  \set Score.currentBarNumber = #9
  \partial 4 a4 |
  %{	9  %} cis4. cis8 cis4 cis |
  %{	10 %} d2 (a4) a |
  %{	11 %} e'4. d8 cis (b) a (g) |
  %{	12 %} fis2 r4 \break \bar "|" fis8 (g) |
  %{	13 %} a4 a a d |
  %{	14 %} d2 b4 b |
  %{	15 %} a a g4. g8 |
  %{	16 %} fis2 r4 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusAlto = \relative c'' {
  \set Score.currentBarNumber = #9
  \partial 4 a4 |
  %{	9  %} e4. eis8 fis4 g! |
  %{	10 %} fis2 (fis4) fis |
  %{	11 %} g4. fis8 g4 e |
  %{	12 %} d2 r4 d8 (e) |
  %{	13 %} fis4 cis d fis |
  %{	14 %} g2 g4 d |
  %{	15 %} d fis e4. e8 |
  %{	16 %} d2 r4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusTenor = \relative c' {
  \set Score.currentBarNumber = #9
  \partial 4 a4 |
  %{	9  %} a4. b8 a4 a |
  %{	10 %} a2 (a4) a |
  %{	11 %} a4. a8 a4 a |
  %{	12 %} a2 r4 a |
  %{	13 %} a a a a |
  %{	14 %} b2 d4 g, |
  %{	15 %} fis a a4. a8 |
  %{	16 %} a2 r4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusBasso = \relative c' {
  \set Score.currentBarNumber = #9
  \partial 4 a4 |
  %{	9  %} a4. gis8 fis4 e |
  %{	10 %} d2 (d4) d |
  %{	11 %} cis4. d8 e4 cis |
  %{	12 %} d2 r4 fis8 (e) |
  %{	13 %} d4 e fis d |
  %{	14 %} g,2 g4 g |
  %{	15 %} a a a4. cis8 |
  %{	16 %} d2 r4
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
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseFive
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseSix
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
