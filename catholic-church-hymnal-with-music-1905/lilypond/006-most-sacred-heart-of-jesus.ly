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
  title = "006. Most Sacred Heart Of Jesus"
  subtitle = "(Cor amoris)"
  composer = "Rev. R. B. Sankey"
  tagline = ##f
  source = "Catholic Church Hymnal with Music (1905), p.130"
  site = "archive.org"
}

globalSettings= {
  \key g \major
  \time 4/4
  %\override Score.BarNumber.break-visibility = ##(#t #t #t)
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
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
% 6. Soprano verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseSoprano = \relative c'' {
  \partial 4 b8 (c) |
  %{	1 %} d4 b a g |
  %{	2 %} e2 d4 g |
  %{	3 %} a g c b |
  %{	4 %} a2. b8 (c) |
  %{	5 %} d4 b a g |
  %{	6 %} e2 d4 b' |
  %{	7 %} a fis fis e |
  %{	8 %} d2. \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c'' {
  \partial 4 g4 |
  %{	1 %} a g fis b, |
  %{	2 %} c2 b4 d |
  %{	3 %} d g g g |
  %{	4 %} fis2. g4 |
  %{	5 %} a fis d e |
  %{	6 %} cis2 d4 cis |
  %{	7 %} d d cis cis |
  %{	8 %} d2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 8. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c' {
  \partial 4 d4 |
  %{	1 %} d d d g, |
  %{	2 %} g2 g4 b |
  %{	3 %} c b c d |
  %{	4 %} d2. d4 |
  %{	5 %} d d a b |
  %{	6 %} a (g) fis g |
  %{	7 %} a a a g |
  %{	8 %} fis2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c' {
  \partial 4 g4 |
  %{	1 %} fis g d e |
  %{	2 %} c2 g4 g' |
  %{	3 %} fis g e g |
  %{	4 %} d2. g4 |
  %{	5 %} fis d fis, g |
  %{	6 %} a2 b4 g' |
  %{	7 %} fis d a a |
  %{	8 %} d2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Soprano chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusSoprano = \relative c' {
  \set Score.currentBarNumber = #9
  \partial 4 d8 ^\f (e) |
  %{	9  %} fis4 g a b |
  %{	10 %} c2 (b4) d |
  %{	11 %} e d c b |
  %{	12 %} b2 (a4) b8 (c) |
  %{	13 %} d4 b a g |
  %{	14 %} e2 d4 g |
  %{	15 %} a g b a |
  %{	16 %} g2. \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusAlto = \relative c' {
  \set Score.currentBarNumber = #9
  \partial 4 d4 |
  %{	9  %} d e fis g |
  %{	10 %} g (fis g) g |
  %{	11 %} g g fis g |
  %{	12 %} g2 (fis4) g8 (a) |
  %{	13 %} b4 g e e |
  %{	14 %} c2 b4 g' |
  %{	15 %} fis g fis fis |
  %{	16 %} g2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusTenor = \relative c {
  \set Score.currentBarNumber = #9
  \partial 4 fis8 ^\f (g) |
  %{	9  %} a4 b c d |
  %{	10 %} e (d8 c d4) b |
  %{	11 %} c d d d |
  %{	12 %} d (e a,) d |
  %{	13 %} d d c b |
  %{	14 %} a (g) fis b |
  %{	15 %} c b d c |
  %{	16 %} b2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusBasso = \relative c {
  \set Score.currentBarNumber = #9
  \partial 4 d4 |
  %{	9  %} d d c b |
  %{	10 %} a2 (g4) g' |
  %{	11 %} c b a g |
  %{	12 %} d (cis d8 c!) \break \bar "|" b (a) |
  %{	13 %} g4 g c e |
  %{	14 %} a,2 b4 g |
  %{	15 %} d' d d d |
  %{	16 %} g2.
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
