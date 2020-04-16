\version "2.18.2"

\header {
  title = "O Bread Of Heaven"
  composer = "G. Herbert, St. Alphonsus"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

\paper {
  #(set-paper-size "a5")
  top-margin = 5\mm
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
  print-page-number = #f
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} a4 fis e |
  %{	02	%} d2 d4 |
  %{	03	%} b'2 b4 |
  %{	04	%} b (a2) |
  %{	05	%} b4 g e |
  %{	06	%} a2 d,4 |
  %{	07	%} e8 (fis g4) fis |
  %{	08	%} fis (e2) |
  %{	09	%} a4 fis e |
  %{	10	%} d2 d4 |
  %{	11	%} c'! (b) a |
  %{	12	%} b2. |
  %{	13	%} a4 b cis |
  %{	14	%} d (a) b |
  %{	15	%} fis2 e4 |
  %{	16	%} d2. |
  %{	17	%} fis4 fis g |
  %{	18	%} a2. |
  %{	19	%} a4 a b |
  %{	20	%} cis2. |
  %{	21	%} d4 cis b |
  %{	22	%} a2 d,4 |
  %{	23	%} fis2 e4 |
  %{	24	%} d2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O bread of heav'n, be -- neath this veil,
  Thou dost my ver -- y God con -- ceal.
  My Je -- sus, dear -- est treas -- ure hail!
  I love Thee and a -- dor -- ing kneel.
  Each lov -- ing soul by Thee is fed
  With thine own self in form of bread.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O food of live, Thou who dost give
  The pledge of im -- mor -- tal -- i -- ty:
  I live; no, 'tis not I that live.
  God gave me life, God lives in me.
  He feeds my soul, He guides me ways,
  And with joy ev -- 'ry grief re -- pays.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  My dear -- est God! Who dost so bind
  My heart with count -- less chains to Thee!
  O sweet -- est love, my soul shall find
  In thy dear bonds true lib -- er -- ty;
  Thy -- self Thou hast be -- stowed on me,
  Thine, thine for ev -- er I will be.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  O Bond of love that dost u -- nite
  The ser -- vant to his liv -- ing Lord;
  Could I dare live and not re -- quite
  Such love then death were meet re -- ward:
  I can -- not live un -- less to prove
  Some love for such un -- mea -- sured love.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  O Might -- y Fire, Thou that dost burn
  To kin -- dle ev -- ery mind and heart!
  For Thee my fro -- zen soul doth yearn;
  Come, Lord of love, thy warmth im -- part;
  If thus to speak too bold ap -- pear,
  'Tis love like thine has ban -- ished fear.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  O Sweet -- est dart of live di -- vine!
  If I have sinned, then venge -- ance take;
  Come pierce this guilt -- y heart of mine,
  And let it die for his dear sake
  Who once ex -- pired on Cal -- va -- ry,
  His heart pierced through for love of me.
}

verseSeven = \lyricmode {
  \set stanza = #"7."
  Be -- loved Lord, in heaven a -- bove
  There, Je -- sus, Thou a -- wait -- est me,
  To gaze on Thee with and -- less love;
  Yes, thus I hope, thus shall it be:
  For how can He de -- ny me heaven,
  Who here on earth him -- self hath giv -- en?
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
