\version "2.18.2"

\header {
  title = "O Love Of God, How Strong And True"
  composer = "Deo Gracias, Horatius Bonar"
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
                    \partial 4 c4 |
  %{	01	%} c2 bes4 |
  %{	02	%} c2 bes4 |
  %{	03	%} bes a!2 |
  %{	04	%} g2 c4 |
  %{	05	%} c (bes) g |
  %{	06	%} f (g) f8 (c) |
  %{	07	%} ees4 d2 |
  %{	08	%} c g'4 |
  %{	09	%} bes2 bes4 |
  %{	10	%} c (bes) aes |
  %{	11	%} g f2 |
  %{	12	%} ees2 ees4 |
  %{	13	%} g2 g4 |
  %{	14	%} f2 ees4 |
  %{	15	%} ees d2 |
                    c2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O love of God, how strong and true!
  E -- ter -- nal, and yet ev -- er new;
  Un -- com -- pre -- hen -- ded and un -- bought,
  Be -- yond all know -- ledge and all thought.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O love of God, how deep and great!
  Far deep -- er than man's deep -- est hate;
  Self  fed, self kind -- led, like the light,
  Change -- less, e -- ter -- nal, in -- fi -- nite.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  O heav'n -- ly love, how pre -- cious still,
  In days of wea -- ri -- ness and ill,
  In nights of pain and help -- less -- ness,
  To heal, to com -- fort, and to bless!
}

verseFour = \lyricmode {
  \set stanza = #"4."
  O love of God, our shield and stay
  Through all the per -- ils of our way!
  E -- ter -- nal love, in Thee we rest
  For -- ev -- er safe, for -- ev -- er blest.
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
