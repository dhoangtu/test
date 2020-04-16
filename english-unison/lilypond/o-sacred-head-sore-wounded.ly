\version "2.18.2"

\header {
  title = "O Sacred Head, Sore Wounded"
  composer = "J.S. Bach, Tr. Robert Bridges, St. Bernard of Clairvaux"
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
  system-system-spacing = #'((basic-distance . 2.5) (padding . 2.5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
                    \partial 4 fis4 |
  %{	01	%} b a g fis |
  %{	02	%} e2 fis4 \fermata cis' |
  %{	03	%} d d cis8 (b) cis4 |
  %{	04	%} b2. fis4 |
  %{	05	%} b a g fis |
  %{	06	%} e2 fis4 \fermata cis' |
  %{	07	%} d d cis8 (b) cis4 |
  %{	08	%} b2. d4 |
  %{	09	%} cis8 (b) a4 b cis |
  %{	10	%} d2 d4 \fermata \bar "" \break
                    a |
  %{	11	%} b a g g |
  %{	12	%} fis2. d'4 |
  %{	13	%} cis8 (d) e4 b cis |
  %{	14	%} b2 cis4 \fermata fis, |
  %{	15	%} g fis e a |
                    fis2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O sac -- red head, sore wound -- ed,
  De -- field and put to scorn;
  O king -- ly head, sur -- round -- ed
  With mock -- ing crown of thorn:
  What sor -- row mars thy grand -- eur?
  Can death thy bloom de -- flower?
  O coun -- te -- nance whose splen -- dor
  The hosts of heav'n a -- dore!
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Thy beau -- ty, long -- de -- si -- red,
  Hath van -- ished from our sight;
  Thy power is all ex -- pi -- red,
  And quenched the light of light.
  Ah me! For whom thou di -- est,
  Hide not so far thy grace;
  Show me, O love most high -- est,
  The bright -- ness of thy face.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  In thy most bit -- ter pas -- sion
  My heart to share doth cry,
  With thee for thy sal -- va -- tion
  Up -- on the cross to die.
  An, keep my heart thus mov -- ed
  To stand thy cross be -- neath,
  To mourn thee, well -- be -- lov -- ed,
  Yet thank thee for thy death.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  My days are few, O fail not,
  With thine im -- mor -- tal power,
  To hold me that I quail not
  In death's most fear -- ful hour:
  That I may fight be -- friend -- ed,
  And see in my last strife
  To me thine arms ex -- tend -- ed
  Up -- on the cross of life.
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
