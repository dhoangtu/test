\version "2.18.2"

\header {
  title = "Jesus, Gentle Saviour"
  composer = "Sr. John Stainer, Rev. Frederick W. Faber"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
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
  bottom-margin = 5\mm
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
  %{	01	%} g4 g f g |
  %{	02	%} aes2 f |
  %{	03	%} bes4 ees, f g |
  %{	04	%} aes1 |
  %{	05	%} ees'4 c bes aes |
  %{	06	%} aes2 g |
  %{	07	%} f4 g aes d, |
  %{	08	%} ees1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Je -- sus, gent -- lest Sav -- iour,
  God of might and pow'r,
  Thou, Thy -- self, art dwell -- ing
  In us at this hour.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Na -- ture can -- not hold Thee,
  Heav'n is all too strait
  For thine end -- less glo -- ry
  And thy roy -- al state.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Out be -- yond the shin -- ing
  Of the furth -- est star,
  Thou art ev -- er stretch -- ing
  In -- fi -- nite -- ly far.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Yet the hearts of chil -- dren
  Hold what worlds can not,
  And the God of won -- ders
  Loves the low -- ly spot.
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
