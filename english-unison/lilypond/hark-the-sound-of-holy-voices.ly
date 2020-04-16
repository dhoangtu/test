\version "2.18.2"

\header {
  title = "Hark! The Sound Of Holy Voices"
  composer = "MOULTRIE, Christopher Wordsworth"
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
  bottom-margin = 5\mm
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
  %{	01	%} c'4. f,8 f4 e |
  %{	02	%} a4. g8 g4 f |
  %{	03	%} c'4. bes8 a4 f |
  %{	04	%} g a f2 |
  %{	05	%} c4. f8 f4 e |
  %{	06	%} a4. g8 g4 f |
  %{	07	%} c'4. bes8 a4 f |
  %{	08	%} g a f2 |
  %{	09	%} c'4. c8 d4 a |
  %{	10	%} bes4. d8 c4 a |
  %{	11	%} a4. a8 a4 b! |
  %{	12	%} c b! a2 |
  %{	13	%} a4. a8 a4 g |
  %{	14	%} g4. g8 g4 f |
  %{	15	%} c'4. bes8 a4 f |
  %{	16	%} g a f2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Hark! The sound of ho -- ly voic -- es, chant -- ing at the cry -- stal sea,
  Al -- le -- lu -- ia! Al -- le -- lu -- ia! Al -- le -- lu -- ia!
  Lord, to Thee, mul -- ti -- tude, which none can num -- ber,
  like the stars in glo -- ry stand
  clothed in white ap -- pa -- rel, hold -- ing palms of vic -- tory in their hand.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Pa -- tri -- arch, and ho -- ly pro -- phet, who pre -- pared the way of Christ King,
  a -- po -- stle, saint con -- fes -- sor, mar -- tyr and e -- van -- ge -- list;
  Saint -- ly mai -- den,
  god -- ly mat -- ron, wid -- dows who have watched to prayer
  Joined in ho -- ly con -- cert, sing -- ing to the Lord of all, are there.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  March -- ing with thy cross their ban -- ner, they have tri -- umphed,
  fol -- low -- ing Thee, the Cap -- tain of sal -- va -- tion,
  Thee, their Sav -- ior and their King;
  Glad -- ly, Lord, with Thee they suf -- fered;
  glad -- ly, Lord, with Thee they died;
  And by death to life im -- mor -- tal they were born and glo -- ri -- fied.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Now they reign in heav'n -- ly glo -- ry, now they walk in gol -- den light,
  Now they drink, as from a riv -- er,
  ho -- ly bliss and in -- fi -- nite:
  Love and peace they taste for -- ev -- er, and all truth and know -- ledge see
  In the be -- a -- ti -- fic vi -- sion of the bles -- sed Tri -- ni -- ty.
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
