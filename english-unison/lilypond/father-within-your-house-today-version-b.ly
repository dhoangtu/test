\version "2.18.2"

\header {
  title = "Father, Within Your House Today"
  composer = "Robert Hugh Benson"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
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
  system-system-spacing = #'((basic-distance . 2.5) (padding . 2.5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
                    \partial 4 c |
  %{	01	%} bes (a) d |
  %{	02	%} f, (e) f |
  %{	03	%} bes (a) g |
  %{	04	%} a2 a4 |
  %{	05	%}g2 b!4 |
  %{	06	%} c2 c,4 |
  %{	07	%} f (e) d |
  %{	08	%} c2 c'4 |
  %{	09	%} bes (a) d |
  %{	10	%} f, (e) f |
  %{	11	%} bes (a) g |
  %{	12	%} a2 a4 |
  %{	13	%} g2 b!4 |
  %{	14	%} c2 c,8 (g') |
  %{	15	%} g (f e4) d |
  %{	16	%} c2 c'4 |
  %{	17	%} d2 c8 (bes) |
  %{	18	%} c2 bes8 (a) |
  %{	19	%} bes2 a8 (g) |
  %{	20	%} a2 a4 |
  %{	21	%} g2 bes4 |
  %{	22	%} a4. (g8) f4 |
  %{	23	%} g (f) e |
                    f2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Fa -- ther, with -- in your house to -- day
  We wait to see your gen -- tle love:
  Since you have said in truth that they
  Are one in you who live in love,
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
