%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CONTENTS OF THIS DOCUMENT
% 1. Common settings
% 2. Soprano chorus music
% 3. Soprano verse music
% 4. Basso verse music
% 5. Chorus lyrics
% 6. Verse lyrics
% 7. Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Common settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

\header {
  title = "007. O Sacred Heart! O Love Divine"
  poet = "Traditional"
  composer = "Arr. by Edw. Grey"
  copyright = "Mc Laughlin & Reilly Co. Boston 1944"
  tagline = ##f
}

globalSettings= {
  \key f \major
  \time 6/8
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
% 2. Soprano verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseSoprano = \relative c' {
  \partial 8 c8 |
  %{	1 %} c'4 ^\< e,8 f4 \! fis8 |
  %{	2 %} g4 d8 d4 \breathe f8 |
  %{	3 %} e4 d8 c4 bes'8 ^\> |
  %{	4 %} a4. (a8) \! r \break \bar "|"
                c, ^\mf |
  %{	5 %} c'4 e,8 ^\< f4 fis8 \! |
  %{	6 %} g4 d8 d4 \breathe bes'8 |
  %{	7 %} a4 ^"rall." g8 d4 ^\> e8 |
  %{	8 %} f4. (f4) \! r8 \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Soprano chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusSoprano = \relative c'' {
  \set Score.currentBarNumber = #9
  %{	9  %} c4 ^\< c8 c4 c8 \! |
  %{	10 %} d4. (d4) \breathe c8 |
  %{	11 %} g4 g8 c4 ^\> bes8 |
  %{	12 %} a2. \breathe|
  %{	13 %} c4 ^\f ^\< c8 c4 c8 \! |
  %{	14 %} d2. \breathe |
  %{	15 %} e4 ^"rall." d8 bes4 ^\> g8 |
  %{	16 %} f4. (f4) \! \fermata \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Basso chorus music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicChorusBasso = \relative c'' {
  \set Score.currentBarNumber = #9
  %{	9  %} c4 bes8 a4 a8 |
  %{	10 %} bes4. (bes4) a8 |
  %{	11 %} g4 f8 e (f) g |
  %{	12 %} f2. |
  %{	13 %} c'4 bes8 a4 a8 |
  %{	14 %} bes2. |
  %{	15 %} g8 (c) bes g4 e8 |
  %{	16 %} f4. (f4)
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  O Sa -- cred Heart! O love di -- vine!
  Do keep us near to Thee;
  And make our love so like to Thine,
  That we may ho -- ly be.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  O Tem -- ple pure! O House of gold!
  Our heav -- en here be -- low!
  What sweet de -- lights, what wealth un -- told
  From Thee do ev -- er flow.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  O wound -- ed Heart, O Font of tears!
  O Throne of grief and pain!
  Where on for the e -- ter -- nal years,
  Thy love for men doth reign.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Un -- grate -- ful hearts, for -- get -- ful hearts,
  The hearts of men have been,
  To wound Thy side with cru -- el darts,
  Which they have made by sin.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Chorus lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricChorus = \lyricmode {
  \set stanza = #"Refrain:"
  Heart of Je -- sus, heart!
  O Heart of Love di -- vine!
  Lis -- ten to our pray'r,
  Make us al -- ways Thine.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \globalSettings \stemUp \slurUp \musicVerseSoprano
        }
      >>
      \new Lyrics \lyricsto soprano \lyricVerseOne
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseTwo
      \new Lyrics \lyricsto soprano \lyricVerseThree
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseFour
    >>
}

\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \voiceOne \globalSettings \stemUp \slurUp \musicChorusSoprano
        }
        \new Voice = "basso" {
          \voiceTwo \globalSettings \stemDown \slurDown \musicChorusBasso
        }
      \new Lyrics \lyricsto soprano \lyricChorus
      >>
	>>
}
