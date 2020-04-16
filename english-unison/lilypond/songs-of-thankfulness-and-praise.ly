\version "2.18.2"

\header {
  title = "Songs Of Thankfulness And Praise"
  composer = "Jakob Hintze, J.S. Bach, Christopher Wordsworth"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
  #(set-paper-size "a5")
  top-margin = 5\mm
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
musicVerseSoprano = \relative c'' {
  %{	01	%} a4 d a b |
  %{	02	%} a4. g8 fis2 |
  %{	03	%} a4 a g fis |
  %{	04	%} e e d2 |
  %{	05	%} a'4 d a b |
  %{	06	%} a4. g8 fis2 |
  %{	07	%} a4 a g fis |
  %{	08	%} e e d2 |
  %{	09	%} e4 e fis8 (gis) a4 |
  %{	10	%} a gis a2 |
  %{	11	%} b4. cis8 d4 d |
  %{	12	%} cis cis b2 |
  %{	13	%} fis4 fis b a |
  %{	14	%} a gis a2 |
  %{	15	%} b4 a g fis |
  %{	16	%} e e d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Songs of thank -- ful -- ness and praise,
  Je -- sus, Lord, to Thee we raise,
  man -- i -- fest -- ed by the star
  to the sa -- ges from a -- far;
  Branch of roy -- al Da -- vid's stem in thy birth at Beth -- le -- hem;
  an -- thems be to thee ad -- dressed,
  God in man made man -- i -- fest.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Man -- i -- fest at Jor -- dan's stream, Proph -- et, Priest and King su -- preme;
  And at Ca -- na, wed -- ding guest, in thy God -- head man -- i -- fest;
  man -- i -- fest in power di -- vine, chang -- ing wa -- ter in -- to wine;
  an -- thems be to thee ad -- dressed,
  God in man made man -- i -- fest.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Man -- i -- fest in mak -- ing whole pal -- sied limbs and faint -- ing soul;
  man -- i -- fest in val -- iant fight,
  quell -- ing all the dev -- il's might;
  man -- i -- fest in gra -- cious will,
  ev -- er bring -- ing good from ill;
  an -- thems be to thee ad -- dressed,
  God in man made man -- i -- fest.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Sun and moon shall dark -- ened be, stars shall fall,
  the heavens' shall flee;
  Christ will then like light -- ning shine,
  all will se his glor -- ious sign;
  all will then the trum -- pet hear,
  all will see the Judge ap -- pear;
  Thou by all wilt be con -- fessed,
  God in man made ma -- i -- fest.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Grant us grace to see Thee, Lord, mir -- rored in thy ho -- ly Word;
  may we im -- i -- tate Thee now,
  and be pure, as pure art thou;
  that we like to Thee may be at thy great E -- piph -- a -- ny;
  an may praise Thee, ev -- er blest,
  God in man made man -- i -- fest.
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
    >>
}
