\version "2.18.2"

\header {
  title = "O God, Thy Soldiers' Crown And Guard"
  composer = "Deus Tuorum Militum"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key bes \major
  \time 3/4
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
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
                    \partial 4 bes4 |
  %{	01	%} d2 f4 |
  %{	02	%} bes2 f4 |
  %{	03	%} ees (d) c |
  %{	04	%} bes2 bes'4 |
  %{	05	%} d2 bes4 |
  %{	06	%} g (a) bes |
  %{	07	%} f2 e!4 |
  %{	08	%} f2 f4 |
  %{	09	%} g2 a4 |
  %{	10	%} bes2 f4 |
  %{	11	%} ees4 (d) c |
  %{	12	%} d2 f4 |
  %{	13	%} g (a) bes |
  %{	14	%} f (ees) d |
  %{	15	%} c2 bes4 |
  %{	16	%} bes2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O God, thy sol -- diers' crown and guard,
  and their ex -- ceed -- ing great re -- ward;
  from all trans -- gres -- sions set us free,
  who sing thy mar -- tyr's vic -- to -- ry.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  The pleas -- ures of the world he spurned,
  from sin's per -- ni -- cious lures he turned;
  he knew their joys im -- bued with gall,
  and thus he reached thy heav' -- nly hall.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  For Thee through many a woe he ran,
  in man -- y_a -- fight he played the man;
  for Thee his blood he dared to pour,
  and thence hath joy for ev -- ver -- more.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  We there -- fore pray Thee, full of love,
  re -- gard us from thy throne a -- bove;
  on this thy mar -- tyr's tri -- umph day,
  wash eve -- ry stain of sin a -- way.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  O Christ, most lov -- ing King,
  to Thee, with God the Fath -- er, glo -- ry be;
  like glo -- ry as is ev -- er meet,
  to God the Ho -- ly Ad -- vo -- cate.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  All glo -- ry to our Lord an God
  For love so deep so high,
  so broad, the Tri -- ni -- ty
  whom we a -- dored for e -- ver
  and for ev -- er -- more.
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
      \new Lyrics \lyricsto sopranos \verseFour
      \new Lyrics \printItalic \lyricsto sopranos \verseFive
      \new Lyrics \lyricsto sopranos \verseSix
    >>
}
