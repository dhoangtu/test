\version "2.18.2"

\header {
  title = "There Is A Green Hill Far Away"
  composer = "Horsley C.M, Cecil Frances Alexander"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
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
                    \partial 4 d4 |
  %{	01	%} e fis g fis |
  %{	02	%} a g8 (fis) e4 a |
  %{	03	%} fis d' cis b |
  %{	04	%} a2. e8 (fis) |
  %{	05	%} g4 g g fis |
  %{	06	%} b b gis gis |
  %{	07	%} b g fis e |
                    d2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  There is a green hill far a -- way,
  out -- side a ci -- tu wall,
  where our dear Lord was cru -- ci -- fied
  who died to save us all.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  We may not know, we can -- not tell,
  what pains he had to bear,
  but we be -- lieve it was for us He hung and suf -- fered there.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  He died that we might be for -- given,
  He died to make us good,
  that we might go at last to heaven,
  saved by his pre -- cious blood.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  There was no oth -- er good e -- nough
  to pay the price of sin,
  He on -- ly could un -- lock the gate of heaven and let us in.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  O dear -- ly, dear -- ly has He loved!
  And we must love him too,
  And trust in his re -- deem -- ing blood,
  and try his works to do.
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
