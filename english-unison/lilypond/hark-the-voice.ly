\version "2.18.2"

\header {
  title = "Hark! The Voice"
  composer = "Jonathan Edwards"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 3/4
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

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} b2 d4 |
  %{	02	%} b2 g4 |
  %{	03	%} c2 a4 |
  %{	04	%} fis2 d4 |
  %{	05	%} g2 a4 |
  %{	06	%} b4. (a8) g4 |
  %{	07	%} fis e2 |
  %{	08	%} d2. |
  %{	09	%} fis2 a4 |
  %{	10	%} fis2 d4 |
  %{	11	%} g2 a4 |
  %{	12	%} b2 g4 |
  %{	13	%} c2 b4 |
  %{	14	%} a4. (b8) g4 |
  %{	15	%} g8 (fis) fis2 |
  %{	16	%} e2. |
  %{	17	%} gis2 gis4 |
  %{	18	%} a2 a4 |
  %{	19	%} fis2 fis4 |
  %{	20	%} g2 g4 |
  %{	21	%} e2 e4 |
  %{	22	%} fis2 g4 |
  %{	23	%} g2 fis4 |
  %{	24	%} g2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Hark! The voice of love and mer -- cy
  Sounds a -- loud from Cal -- va -- ry;
  See, it rends the rocks a -- sun -- der,
  Sakes the earth, and veils the sky:
  ''It is fin -- ished! It is fin -- ished!''
  Hear the dy -- ing Sav -- ior cry;
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  ''It is fin -- ished!'' O what pleas -- ure
  Do these pre -- cious words af -- ford;
  Heav'n -- ly bless -- ings, with -- out mea -- sure,
  Flow to us from Christ the Lord:
  ''It is fin -- ished! It is fin -- ished!''
  Saints the dy -- ing words rec -- ord.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Fin -- ished all the types and shad -- ows
  Of the cer -- e -- mo -- nial law;
  Fin -- ished all that God had prom -- ised;
  Death and hell no more shall awe:
  ''It is fin -- ished! It is fin -- ished!''
  Saints, from hence your com -- fort draw.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Tune your harps a -- new, ye ser -- aphs,
  Join to sing the glo -- rious theme;
  All in earth, and all in heav -- en,
  Join to praise Em -- ma -- nuel's name:
  Al -- le -- lu -- ia! Al -- le -- lu -- ia!
  Glo -- ry to the bleed -- ing Lamb!
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \global \stemUp \slurUp \musicVerseSoprano }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
      \new Lyrics \lyricsto sopranos \verseThree
      \new Lyrics \printItalic \lyricsto sopranos \verseFour
    >>
}
