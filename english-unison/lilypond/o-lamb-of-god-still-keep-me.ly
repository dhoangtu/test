\version "2.18.2"

\header {
  title = "O Lamb Of God, Still Keep Me"
  composer = "St. Christopher, Frederick C. Maker, James George Deck"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key des \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #2.0
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
  system-system-spacing = #'((basic-distance . 2.5) (padding . 2.5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
                    \partial 4 aes4 |
  %{	01	%} aes4. aes8 ges4 bes |
  %{	02	%} aes2 f4 f |
  %{	03	%} ees4. f8 ges4 ges |
  %{	04	%} f2.  f4 |
  %{	05	%} des'4. des8 des4 c |
  %{	06	%} bes (aes) ges f |
  %{	07	%} ees4. ees8 e!4 e |
  %{	08	%} f2. f4 |
  %{	09	%} f4. ees8 des4 ees |
  %{	10	%} f (ges) aes aes |
  %{	11	%} bes4. bes8 bes4 f |
  %{	12	%} ges2. ges4 |
  %{	13	%} c4. bes8 aes4 ges |
  %{	14	%} f2 aes4 ges |
  %{	15	%} f4. des8 f4 ees |
                    des2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O Lamb of God, still keep me
  Near to thy wound -- ed side;
  'Tis on -- ly there in safe -- ty
  And peace I can a -- bide.
  What foes and snares sur -- round me;
  What lusts and fears with -- in!
  The grace that sought and found me
  A -- lone can keep me clean.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  'Tis on -- ly in Thee hid -- ing,
  I feel my life se -- cure;
  In Thee a -- lone a -- bi -- ding,
  The con -- flict can en -- dure:
  Tine arm the vic -- t'ry gain -- eth
  O'er ev -- 'ry hurt -- ful foe;
  Thy love my heart sus -- tain -- eth
  In all its care and woe.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Soon shall my eyes be -- hold Thee,
  With rap -- ture, face to face;
  One half hath not been told me
  Of all thy power and grace;
  Thy beau -- ty, Lord, and glo -- ry,
  The won -- ders of thy love,
  Shall be the end -- less sto -- ry
  Of all thy saints a -- bove.
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
