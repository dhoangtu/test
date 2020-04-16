\version "2.18.2"

\header {
  title = "Wake, Awake, For Night Is Flying"
  composer = "Sleepers Wake, Philip Nicolai"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key c \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
  #(set-paper-size "a5")
  top-margin = 0.5\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  page-count = #1
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} c4 e g4. g8 |
  %{	02	%} g4 g a2 |
  %{	03	%} g r4 g |
  %{	04	%} c b c8 (d) e4 |
  %{	05	%} d c b (a) |
  %{	06	%} g2 r4 g |
  %{	07	%} c g a e |
  %{	08	%} f8 (e) d4 c2 |
  %{	09	%} c4 e g4. g8 |
  %{	10	%} g4 g a2 |
  %{	11	%} g r4 g |
  %{	12	%} c g c8 d e4 |
  %{	13	%} d c b a |
  %{	14	%} g2 r4 g |
  %{	15	%} c g a e |
  %{	16	%} f8 (e) d4 c2 |
  %{	17	%} r4 g' g4. f8 |
  %{	18	%} e4 d c2 |
  %{	19	%} r4 g' g4. f8 |
  %{	20	%} e4 d c2 |
  %{	21	%} d4 e f2 |
  %{	22	%} e r4 g |
  %{	23	%} a b c c8 (d) |
  %{	24	%} e4 d c g |
  %{	25	%} c g a e |
  %{	26	%} f8 (e) d4 c2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Wake, a -- wake, for night is fly -- ing,
  The watch -- men on the heights are cry -- ing;
  A -- wake, Je -- ru -- sa -- lem, at last!
  Mid -- night hears the wel -- come voic -- es,
  And at the thrill - ing cry re -- joic - es:
  Come forth, ye vir -- gins, night is past!
  The Bride -- groom comes, a -- wake,
  Your lamps with glad -- ness take;
  Hal -- le -- lu -- jah! And for his mar -- riage -- feast pre -- pare,
  For ye must go to meet him there.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Zi -- on hears the watch -- men sing -- ing,
  And all her heart with joy is spring -- ing,
  She wakes, she ris -- es from her gloom;
  For her Lord comes down all glo -- rious,
  The strong in grace, in truth vic -- to -- ri - ous,
  Her star is risen, her light is come!
  Ah come, Tho bless -- ed Lord,
  O Je -- sus, Son of God,
  Hal -- le -- lu -- jah! We fol -- low till the halls we see
  Where Thou hast bid us sup with Thee!
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Now let all the heavens a -- dore Thee,
  And men and an -- gels sing be -- fore Thee,
  With harp and cym -- bal's clear -- est tone;
  Of one pearl each shin -- ing por -- tal,
  Where we are with _ the choir im -- mor - tal
  Of an -- gels round thy dazz -- ling throne;
  Nor eye hath seen, nor ear
  Hath yet at -- tain'd to hear
  What there is ours,
  But we re -- joice, and sing to Thee
  Our hymn of joy e -- ter -- nal -- ly.
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
    >>
}
