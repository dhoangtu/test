\version "2.18.2"

\header {
  title = "For All The Saints"
  composer = "Engleberg"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
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

printBold = {
  \override Lyrics.LyricText.font-series = #'bold
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} r4 c f a |
  %{	02	%} g4. c,8 d4 e |
  %{	03	%} f d c2 (c4) c c' bes |
  %{	04	%} a4. g8 f4 a |
  %{	05	%} g d c2 ( |
  %{	06	%} c4) g' a c |
  %{	07	%} c f, g4. bes8 |
  %{	08	%} a4 g a2 ( |
  %{	09	%} a4) \bar "" \break
  %{	10	%} bes8 (a bes a) g4 |
  %{	11	%} a (bes) c2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  For all the saints, who from their la -- bors rest,
  who thee by faith be -- fore the world con -- fessed,
  thy name, O Je -- sus, be for -- ev -- er blest.
  
  \printBold
  
  Al -- le -- lu -- ia!
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Thou art their rock, their fort -- ress, and their might;
  thou Lord, their cap -- tain in the well -- fought fight;
  thou in the dark -- ness drear, their one true light.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  O may thy sold -- iers, faith -- ful, true, and bold,
  fight as the saints who nob -- ly fought of old,
  and win with them the vic -- tor's crown of gold.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  O blest com -- mun -- ion, fel -- low -- ship di -- vine!
  We feebl -- y strug -- gle, they in glo -- ry -- shine;
  yet all are one in thee, for all are thine.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  And when the strife is fierce, the war -- fare long,
  steals on the ear the dis -- tant tri -- umph song,
  and hearts are brave a -- gain, and arms are strong.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  From earth's wide bounds, from o -- ceans far -- thest coast,
  through gates of pearl streams in the count -- less host,
  sing -- ing to Fath -- er, Son, and Ho -- ly Ghost:
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
      \new Lyrics \lyricsto sopranos \verseFive
      \new Lyrics \printItalic \lyricsto sopranos \verseSix
    >>
}
