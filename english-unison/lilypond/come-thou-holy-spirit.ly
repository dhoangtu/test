\version "2.18.2"

\header {
  title = "Come Thou Holy Spirit"
  composer = "Veni Sanctu Spiritus"
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
musicVerseSoprano = \relative c' {
  %{	01	%}f4 f f g |
  %{	02	%}a4. g8 f2 |
  %{	03	%}g4 a g c |
  %{	04	%}c b! c2 |
  %{	05	%}d4 c bes a |
  %{	06	%}g4. f8 f2 |
  %{	07	%}f4 bes a bes8 (c) |
  %{	08	%}d4 c bes2 |
  %{	09	%}a4 c bes a |
  %{	10	%}g4. f8 e2 |
  %{	11	%}g4 bes a g |
  %{	12	%}f e f2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Come, Thou Ho -- ly Spi -- rit, come!
  And from Thy ce -- les -- tial home
  Shed a ray of light di -- vine!
  come, Thou Fa -- ther of the poor!
  Come, Thou source of all our store!
  Come, with -- in our bos -- oms shine!
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Thou, of com -- for -- ters the best;
  Thou, the soul's most wel -- come Guest;
  Sweet re -- fresh -- ment here be -- low;
  In our la -- bor, rest most sweet;
  Grate -- ful cool -- ness in the heat;
  So -- lace in the midst of woe.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  O most bles -- sed Light di -- vine,
  Shine with -- in these hearts of Thine,
  And our in -- most be -- ing fill!
  Where Thou art not, man hath naught,
  No -- thing good in deed or thought,
  No -- thing free from taint of ill.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Heal our wounds, our strength re -- new;
  On our dry -- ness pour Thy dew;
  Wash the stains of guilt a -- way;
  Bend the stub -- born heart and will;
  Melt the fro -- zen, warm the chill;
  Guide the steps that go a -- stray.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  On the faith -- ful, who a -- dore
  And con -- fess Thee, ev -- er -- more
  In Thy sev'n -- fold gift de -- scend;
  Give them vir -- tue's sure re -- ward
  Give the Thy sal -- va -- tion, Lord;
  Give them joys that nev -- er end.
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
