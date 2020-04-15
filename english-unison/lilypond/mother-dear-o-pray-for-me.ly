\version "2.18.2"

\header {
  title = "Mother Dear, O Pray For Me"
  composer = "Isaac B. Woodbury"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

globalSettings = {
  \key bes \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

verseSettings = {
  \phrasingSlurDashed
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
  %{	01	%} d4 bes8 c (bes) g |
  %{	02	%} f4 d8 f4 bes8 |
  %{	03	%} c4 c8 c bes c |
  %{	04	%} d4. (d4) f,8 |
  %{	05	%} d'4 bes8 c (bes) g |
  %{	06	%} f4 d8 f4 bes8 |
  %{	07	%} c4 c8 c (d) c |
  %{	08	%} bes4. (bes4) d8 |
  %{	09	%} c4 c8 c (d) e! |
  %{	10	%} f4 c8 c4 c8 |
  %{	11	%} c4 bes8 bes4 a8 |
  %{	12	%} a4. (g4) g8 |
  %{	13	%} a4 a8 bes (a) bes |
  %{	14	%} c4 c8 d4 \fermata c16 (bes) |
  %{	15	%} f4 f8 g4 g8 |
  %{	16	%} f4. (f4) r8 \bar "||"
}

% Chorus music
musicChorusSoprano = \relative c'' {
  \set Score.currentBarNumber = #17
  %{	17	%} d4 bes8 c (bes) g |
  %{	18	%} f4 d8 f4 bes8 |
  %{	19	%} c4 c8 c (bes) c |
  %{	20	%} d4. (d4) r8 |
  %{	21	%} d4 bes8 c bes g |
  %{	22	%} f4 d8 f4 bes8 |
  %{	23	%} c4 c8 c (d) c |
  %{	24	%} bes4. (bes4) r8 \bar "|."
}

% Verse lyrics
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  Moth -- er dear, O pray for me
  Whilst far from heav -- en and thee,
  I wan -- der in a fra -- gile barque, o'er lifes tem -- pes -- tuous sea.
  O Vir -- gin Moth -- er, from thy throne,
  So bright in bliss a -- bove
  Pro -- tect thy child and cheer my path with thy sweet smile of love.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  Moth -- er dear, O pray for me! Should plea -- sure's si -- ren lay.
  E'er tempt thy child to wan -- der far
  From vir -- tue's path _ a -- way.
  When thorns be -- set life's de -- vious way,
  And dark -- ling wa -- ters flow.
  Then Ma -- ry aid thy weep -- ing child, thy -- self a moth -- er show.
}

% Chorus lyrics
lyricChorus = \lyricmode {
  Moth -- er dear, re -- mem -- ber me, and ne -- ver cease thy care,
  Till in heav -- en e -- ter -- nal -- ly, thy love and bliss I share.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \voiceOne \globalSettings \verseSettings \stemUp \slurUp \musicVerseSoprano
        }
      >>
      \new Lyrics \lyricsto soprano \lyricVerseOne
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseTwo
    >>
}

\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \override Staff.TimeSignature #'stencil = ##f
        \new Voice = "soprano" {
          \globalSettings \stemUp \slurUp \musicChorusSoprano
        }
      >>
      \new Lyrics \lyricsto soprano \lyricChorus
    >>
}
