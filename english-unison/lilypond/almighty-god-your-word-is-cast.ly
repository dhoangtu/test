\version "2.18.2"

\header {
  title = "Almighty God, Your Word Is Cast"
  composer = "John Cawood"
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
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  system-system-spacing = #'((basic-distance . 3) (padding . 5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

minorNote = #(define-music-function
  (parser location note)
  (ly:music?)
  #{
    \tweak font-size #-3
    #note
  #}
)

% Verse music
musicVerseSoprano = \relative c' {
                  \partial 4 ees4 |
  %{	01	%} g4 aes bes ees, |
  %{	02	%} f g aes g |
  %{	03	%} f ees ees d |
  %{	04	%} ees2. bes'4 |
  %{	05	%} ees d c bes |
  %{	06	%} bes a! bes \breathe g |
  %{	07	%} f ees ees d |
                    ees2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Al -- migh -- ty God, your Word is cast like seed in -- to the ground;
  Now let the dew of Heav'n de -- scend and right -- eous fruits a -- bound.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Nor let your Word so kind -- ly sent to raise us to your throne re -- turn to You,
  and sad -- ly tell that we re -- ject your Son.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Great God, come down and on your Word, your migh -- ty power be -- stow,
  that all who hear the joy -- ful sound, your sav -- ing grace may know.
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
