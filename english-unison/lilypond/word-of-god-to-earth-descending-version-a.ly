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
  title = "Word Of God To Earth Descending"
  composer = "St. Thomas Aquinas, Robert Campbell"
  tagline = ##f
}

global= {
  \key ees \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-marign = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  system-system-spacing = #'((basic-distance . 3) (padding . 3))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Soprano verse music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicVerseSoprano = \relative c' {
  %{ 01 %} g'4 g bes g |
  %{ 02 %} g4. f8 f4 g |
  %{ 03 %} aes aes c aes |
  %{ 04 %} g f g2 |
  %{ 05 %} bes4 bes c c |
  %{ 06 %} d c8 (bes) ees4 bes |
  %{ 07 %} aes g8 (f) bes4 ees, |
  %{ 08 %} g4. f8 ees2 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Verse lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseOne = \lyricmode {
  \set stanza = #"1."
  Word of God to earth de -- scend -- ing, with the Fa -- ther pres -- ent still,
  Near His earth -- ly jour -- ney's end -- ing, Hastes his mis -- sion to ful -- fil.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Might -- y Vic -- tim, earth's sal -- va -- tion, Heav'n -- ly gates un -- fold -- ing wide,
  Help thy peo -- ple in temp -- ta -- tion, Feed them from Thy bleed -- ing side.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Ho -- ly bo -- dy, blood all pre -- cious, Giv'n  by him to be our food,
  With them both he doth re -- fresh us, Formed like him of flesh and blood.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Un -- to Thee, the hid -- den man -- na, Fa -- ther, Spi -- rit, un -- to Thee,
  Let us raise the loud ho -- san -- na, And a -- dor -- ing bend the knee.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \voiceOne \global \stemUp \slurUp \musicVerseSoprano }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
      \new Lyrics \lyricsto sopranos \verseThree
      \new Lyrics \printItalic \lyricsto sopranos \verseFour
    >>
}
