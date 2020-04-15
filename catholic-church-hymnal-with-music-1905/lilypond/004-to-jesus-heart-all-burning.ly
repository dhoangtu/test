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
  title = "004. To Jesus' Heart All Burning"
  composer = " "
  tagline = ##f
  source = "English and Latin Hymns, or Harmonies to Part I of the Roman Hymnal (1884), p.71"
  site = "hymnary.org"
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
musicVerseSoprano = \relative c' {
  \partial 4 f4 |
  %{	1 %} bes a8 (g) f4 bes |
  %{	2 %} d, (ees) f bes |
  %{	3 %} g8 (a) bes4 c c |
  %{	4 %} d2. f,4 |
  %{	5 %} bes a8 (g) f4 bes |
  %{	6 %} d, (ees) f bes |
  %{	7 %} g8 (a) bes4 bes a |
  %{	8 %} bes2. \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Alto verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseAlto = \relative c' {
  \partial 4 f4 |
  %{	1 %} bes a8 (g) f4 f |
  %{	2 %} d (c8 bes) c4 f |
  %{	3 %} ees f g f |
  %{	4 %} f2. f4 |
  %{	5 %} bes a8 (g) f4 f |
  %{	6 %} d (c8 bes) c4 f |
  %{	7 %} ees d8 (ees) f4 f |
  %{	8 %} f2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 8. Tenor verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseTenor = \relative c {
  \partial 4 f4 |
  %{	1 %} bes a8 (g) f4 bes |
  %{	2 %} bes2 a4 bes |
  %{	3 %} bes bes bes a |
  %{	4 %} bes2. f4 |
  %{	5 %} bes4 a8 (g) f4 bes |
  %{	6 %} bes2 a4 bes |
  %{	7 %} bes bes c c |
  %{	8 %} d2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9. Basso verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseBasso = \relative c {
  \partial 4 f4 |
  %{	1 %} bes a8 (g) f4 d |
  %{	2 %} g2 f4 d |
  %{	3 %} ees d ees f |
  %{	4 %} bes,2. f'4 |
  %{	5 %} bes a8 (g) f4 d |
  %{	6 %} g2 f4 d |
  %{	7 %} ees g f f |
  %{	8 %} bes,2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Soprano chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusSoprano = \relative c'' {
  \set Score.currentBarNumber = #9
  \partial 4 bes8 ^\f (c) |
  %{	9  %} d4 c d ees |
  %{	10 %} c4 (bes8 d c4) bes8 (c) |
  %{	11 %} d4 c d ees |
  %{	12 %} c2. f,4 |
  %{	13 %} bes a8 (g) f4 bes |
  %{	14 %} d, (ees) f bes |
  %{	15 %} g8 (a) bes4 bes a |
  %{	16 %} bes2. \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusAlto = \relative c' {
  \set Score.currentBarNumber = #9
  \partial 4 d8 (ees) |
  %{	9  %} f4 f f g |
  %{	10 %} f2 (f4) d8 (ees) |
  %{	11 %} f4 f f g |
  %{	12 %} f2. f4 |
  %{	13 %} bes a8 (g) f4 f |
  %{	14 %} d (c8 bes c4) f |
  %{	15 %} ees d8 (ees) f4 f |
  %{	16 %} f2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusTenor = \relative c' {
  \set Score.currentBarNumber = #9
  \partial 4 bes4 |
  %{	9  %} bes c bes bes |
  %{	10 %} a (g8 bes a4) bes |
  %{	11 %} bes c bes bes |
  %{	12 %} a2. f4 |
  %{	13 %} bes a8 (g) f4 bes |
  %{	14 %} bes2 a4 bes |
  %{	15 %} bes bes c c |
  %{	16 %} d2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusBasso = \relative c' {
  \set Score.currentBarNumber = #9
  \partial 4 bes4 |
  %{	9  %} bes a bes ees, |
  %{	10 %} f2 (f4) bes |
  %{	11 %} bes a bes ees, |
  %{	12 %} f2. f4 |
  %{	13 %} bes a8 (g) f4 d |
  %{	14 %} g2 f4 d |
  %{	15 %} ees g f f |
  %{	16 %} bes,2.
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
