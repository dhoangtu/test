\version "2.18.2"

\header {
  title = "Look, Ye Saints"
  composer = "Thomas Kelley"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
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
  %{	01	%} b2 d4 |
  %{	02	%} b2 g4 |
  %{	03	%} c2 a4 |
  %{	04	%} fis2 d4 |
  %{	05	%} g2 a4 |
  %{	06	%} b4. (a8) g4 |
  %{	07	%} fis e2 |
  %{	08	%} d2. |
  %{	09	%} fis2 a4 |
  %{	10	%} fis2 d4 |
  %{	11	%} g2 a4 |
  %{	12	%} b2 g4 |
  %{	13	%} c2 b4 |
  %{	14	%} a4. (b8) g4 |
  %{	15	%} g8 (fis) fis2 |
  %{	16	%} e2. |
  %{	17	%} gis2 gis4 |
  %{	18	%} a2 a4 |
  %{	19	%} fis2 fis4 |
  %{	20	%} g2 g4 |
  %{	21	%} e2 e4 |
  %{	22	%} fis2 g4 |
  %{	23	%} g2 fis4 |
  %{	24	%} g2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Look, ye saints; the sight is glo -- rious;
  See the ''Man of sor -- rows'' now;
  From the fight re -- turned vic to -- rious,
  Eve -- ry knee to Him shall bow;
  Crown - Him! - Crown - Him! -
  Crowns be -- come the Vic -- tor's brow.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Crown the Sav -- ior, an -- gels crown Him;
  Rich the tro -- phies Je -- sus brings;
  On the seat of pow'r en -- throne Him,
  While the vault of heav -- en rings;
  Crown - Him! - Crown - Him! -
  Crown the Sav -- ior King of kings.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Sin -- ners in de -- ri -- sion crowned Him,
  Mock -- ing thus Mes -- si -- ah's claim;
  Saints and an -- gels crowd a -- round Him,
  Own his ti --tle, praise his name;
  Crown - Him! - Crown - Him! -
  Spread a -- broad the Vic -- tor's fame!
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Hark! Those bursts of ac -- cla -- ma -- tion!
  Hark! Those loud tri -- um -- phant chords!
  Je -- sus takes the high -- est sta -- tion;
  O what joy the sight af -- fords!
  Crown - Him! - Crown - Him! -
  King of kings, and Lord of lords.
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
