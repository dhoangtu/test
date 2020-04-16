\version "2.18.2"

\header {
  title = "Jesus, Let Me Come To You"
  composer = "Kathleen Pluth, Colin Brumby"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Colin Brumby & Kathleen Pltuh 2009" } }
}

global= {
  \key bes \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
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
  %{	01	%} d4 d c c |
  %{	02	%} ees ees d d |
  %{	03	%} g a bes g |
  %{	04	%} f2. r4 |
  %{	05	%} fis4. g8 a4 f |
  %{	06	%} g a bes g |
  %{	07	%} a4. bes8 c4 a |
  %{	08	%} bes c d bes |
  %{	09	%} d c bes bes |
  %{	10	%} c bes a a |
  %{	11	%} bes a8 (g) f4. ees8 |
  %{	12	%} d1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Je -- sus, let me come to you as simp -- ly as a child.
  Chast -- en those who would pre -- vent me.
  Let all ev -- il cir -- cum -- vent me.
  Je -- sus, let me come to you.
  Ac -- cept me as a chile.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Je -- sus, look with pit -- y on the sor -- rows of the world.
  Let the poor be safe and sat -- ed, 
  in -- no -- cence be vin -- di -- cat -- ed.
  Je -- sus, bring your mer -- cy to the sor -- rows of this world.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Je -- sus, come to meet me in the bless -- ed sac -- ra -- ment:
  Joy be -- yond my fin -- est pleas -- ure,
  hid -- den, last -- ing, price -- less treas -- ure.
  Je -- sus, _ be with me in your bless -- ed sac -- ra -- ment.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Je -- sus, take me up in -- to the Trin -- i -- ty of life.
  God the Fath -- er, strong and spac -- ious,
  God the Spi -- rit, swift and gra -- cious,
  Je -- sus, bring me home in -- to your Trin -- i -- ty of life.
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
