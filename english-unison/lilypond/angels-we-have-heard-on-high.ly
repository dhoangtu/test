\version "2.18.2"

\header {
  title = "Angels We have Heard On High"
  composer = "French Folk Song, 18th Century"
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
  bottom-marign = 10\mm
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
  %{	01	%} a4 a bes c |
  %{	02	%} c4. bes8 a2 |
  %{	03	%} a4 g a c |
  %{	04	%} a4. g8 f2 |
  %{	05	%} a4 a a c |
  %{	06	%} c4. bes8 a2 |
  %{	07	%} a4 g a c |
  %{	08	%} a4. g8 f2 \bar "||"
}

% Chorus music
musicChorusSoprano = \relative c'' {
  \set Score.currentBarNumber = #9
  %{	09	%} c2 \melisma d8 c bes a |
  %{	10	%} bes2 c8 bes a g |
  %{	11	%} a2 bes8 a g f |
  %{	12	%} g4. \melismaEnd c8 c2 |
  %{	13	%} f,4 g a bes |
  %{	14	%} a2 g4 r |
  %{	15	%} c2 \melisma d8 c bes a |
  %{	16	%} bes2 c8 bes a g |
  %{	17	%} a2 bes8 a g f |
  %{	18	%} g4. \melismaEnd c,8 c2 |
  %{	19	%} f4 g a bes |
  %{	20	%} a2 g |
  %{	21	%} f2. r4 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  An -- gels we have heard on high, sweet -- ly sing -- ing o'er the plains,
  and the moun -- tains in re -- ply e -- cho back their joy -- ous strains.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  She -- pherds, why this ju -- bi -- lee? Why your joy -- ous strains pro -- long?
  Say what may the tid -- ings be, which in -- spire your heav'n -- ly song.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Come to Beth -- le -- hem and see Him whose birth the an -- gels sing;
  Come a -- dore, on bend -- ed knee, Chirst, the Lord, the new -- born King.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  See him in a man -- ger laid, whom the choirs of an -- gels praise;
  Mar -- y, Jo -- seph, lend your aid, while our hearts in love we raise.
}

% Chorus lyrics
lyricChorus = \lyricmode {
  \set stanza = #"Refrain."
  Glo -- ri -- a in ex -- cel -- sis De -- o, Glo -- ri -- a in ex -- cel -- sis De - o.
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

\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \override Staff.TimeSignature #'stencil = ##f
        \new Voice = "soprano" {
          \global \stemUp \slurUp \musicChorusSoprano
        }
      >>
      \new Lyrics \lyricsto soprano \lyricChorus
    >>
}

