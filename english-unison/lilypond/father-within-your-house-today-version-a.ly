\version "2.18.2"

\header {
  title = "Father, Within Your House Today"
  composer = "St. Catherine, Henri F. Hemy, Robert Hugh Benson"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
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
  %{	01	%} b4 a g |
  %{	02	%} g (fis) g |
  %{	03	%} a (e) fis |
  %{	04	%} g2. |
  %{	05	%} g4 fis e |
  %{	06	%} d2 g4 |
  %{	07	%} g (fis) g |
  %{	08	%} a2. |
  %{	09	%} b4 a g |
  %{	10	%} g (fis) g |
  %{	11	%} a (e) fis |
  %{	12	%} g2. |
  %{	13	%} g4 fis e |
  %{	14	%} d2 b'4 |
  %{	15	%} a (b) a |
  %{	16	%} g2. |
  %{	17	%} c4 c c |
  %{	18	%} b2 b4 |
  %{	19	%} a2 a4 |
  %{	20	%} b2. |
  %{	21	%} b4 a g |
  %{	22	%} e2 g4 |
  %{	23	%} a2 a4 |
  %{	24	%} g2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Fa -- ther, with -- in your house to -- day
  We wait to see your gen -- tle love:
  Since you have said in truth that they are one in you who live in love,
  Bless those who for your bless -- ing wait;
  Their love ac -- cept and con -- se -- crate.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Dear Lord of love, whose heart of fire
  In -- flames our hearts with love for your.
  May they who seek you, Lord, de -- sire
  All things that are both good and true.
  Look down and bless them from a -- bove,
  And keep their hearts a -- light with love.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Blest Spir -- it, who with life and light
  In -- spires us all to sing God's praise,
  Your pres -- ence here brings pure de -- light,
  And fills our souls with joy and grace.
  Bless those who now in love con -- sent;
  Cre -- a -- tor, crown your sac -- ra -- ment.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Great One in Three, of whom are named
  All fam -- i -- lies in earth and heav'n,
  Hear us who have your prom -- ise claimed,
  And let a wealth of grace be giv'n.
  Grant them in life and death to be
  Both joined in you e -- ter -- nal -- ly.
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
