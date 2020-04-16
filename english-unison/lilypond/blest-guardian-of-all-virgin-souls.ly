\version "2.18.2"

\header {
  title = "Blest Guardian Of All Virgin Souls"
  composer = "H. Farmer, SJ"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
  \time 3/4
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
  %{	01	%} ees4 bes g |
  %{	02	%} aes g f |
  %{	03	%} f ees ees |
  %{	04	%} aes g c |
  %{	05	%} bes ees4. ees8 |
  %{	06	%} d4 ees bes |
  %{	07	%} g aes g |
  %{	08	%} f4. c8 b!4 |
  %{	09	%} b! c4. d8 |
  %{	10	%} ees4 a! bes |
  %{	11	%} aes8 f ees4 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Blest guar -- dian of all vir -- gin souls!
  Por -- tal of bliss to main for -- given!
  Pure Mo -- ther of al -- might -- y God!
  Thou hope of earth, and jou of _ heaven!
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Fair Li -- ly found a -- mid the thorns!
  Most bea -- teous dove with wings of gold!
  Rod from whose ten -- der root up -- spring
  That heal -- ing flower long since for - told.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Thou tower, a -- gainst the dra -- gon proof!
  Thou star, to storm -- tossed voy' -- gers dear!
  Our course lies o'er a treach -- 'rous deep,
  Thine be the light by which we _ steer.
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
