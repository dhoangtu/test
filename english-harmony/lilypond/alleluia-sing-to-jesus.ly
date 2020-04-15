\version "2.18.2"

\header {
  title = "Alleluia, Sing To Jesus"
  arranger = "M: Rowland H. Prichard, W: William Chatterton Dix"
  tagline = ##f
  copyright = "Public Domain"
}

global= {
  \key f \major
  \time 3/4
  % \override Score.BarNumber.break-visibility = ##(#t #t #t)
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-marign = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
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

minorNote = #(define-music-function
  (parser location note)
  (ly:music?)
  #{
    \tweak font-size #-3
    #note
  #}
)

% Soprano verse music
musicVerseSoprano = \relative c' {
  %{	01	%} f2 g4
  %{	02	%} f4. (g8) a4
  %{	03	%} bes2 a4
  %{	04	%} g (f) g
  %{	05	%} c2 bes4
  %{	06	%} a2 a4
  %{	07	%} g (f) g
  %{	08	%} f2.
  %{	09	%} f2 g4
  %{	10	%} f4. (g8) a4
  %{	11	%} bes2 a4
  %{	12	%} g (f) g
  %{	13	%} c2 bes4
  %{	14	%} a2 a4
  %{	15	%} g (f) g
  %{	16	%} f2.
  %{	17	%} c'2 c4
  %{	18	%} c (bes) a
  %{	19	%} bes2 bes4
  %{	20	%} bes (a) g
  %{	21	%} a2 a4
  %{	22	%} a (bes) c
  %{	23	%} c (bes) a
  %{	24	%} g2.
  %{	25	%} c4 (a) c
  %{	26	%} bes (g) bes
  %{	27	%} a (f) a
  %{	28	%} g8 (a bes a) g4
  %{	29	%} c2 c4
  %{	30	%} d (c) bes
  %{	31	%} a2 g4
                    f2. \bar "|."
}

% Alto verse music
musicVerseAlto = \relative c' {
  %{	01	%} c2 e4
  %{	02	%} f2 f4
  %{	03	%} g2 f4
  %{	04	%} e (d) e
  %{	05	%} f (c) d8 e
  %{	06	%} f2 f8 e
  %{	07	%} d4 (d) e
  %{	08	%} f2.
  %{	09	%} c2 e4
  %{	10	%} f2 f4
  %{	11	%} g2 f4
  %{	12	%} e (d) e
  %{	13	%} f (c) d8 (e)
  %{	14	%} f2 f8 e
  %{	15	%} d4 (d) e
  %{	16	%} f2.
  %{	17	%} e2 e4
  %{	18	%} f2 f4
  %{	19	%} f (e) d
  %{	20	%} e (f) c
  %{	21	%} c2 f4
  %{	22	%} f (g) a
  %{	23	%} a (g) f
  %{	24	%} f2 (f4)
  %{	25	%} f2 a4
  %{	26	%} g2 g4
  %{	27	%} f (c) f
  %{	28	%} g8 (e f4) c
  %{	29	%} c (f) ees
  %{	30	%} d (f) f
  %{	31	%} f2 e4
                    f2. \bar "|."
}

% Tenor verse music
musicVerseTenor = \relative c {
  %{	01	%} <\minorNote f a>2 g4
  %{	02	%} a4. (bes8) c4
  %{	03	%} d (c) c
  %{	04	%} c (a) c
  %{	05	%} c2 c4
  %{	06	%} c2 c4
  %{	07	%} bes (a) c
  %{	08	%} a2.
  %{	09	%} <\minorNote f a>2 g4
  %{	10	%} a4. (bes8) c4
  %{	11	%} d (c) c
  %{	12	%} c (a) c
  %{	13	%} c2 c4
  %{	14	%} c2 c4
  %{	15	%} bes (a) c
  %{	16	%} a2.
  %{	17	%} c2 c4
  %{	18	%} f, (g) a
  %{	19	%} g2 g4
  %{	20	%} g (c) bes
  %{	21	%} a2 c4
  %{	22	%} d2 c4
  %{	23	%} d2 d4
  %{	24	%} g,2.
  %{	25	%} c2 d4
  %{	26	%} d2 c4
  %{	27	%} c (a) b!
  %{	28	%} c (bes) bes
  %{	29	%} a2 c4
  %{	30	%} bes (c) d
  %{	31	%} c2 bes4
                    f2. \bar "|." %32
}

% Basso verse music
musicVerseBasso = \relative c {
  %{	01	%} f,4 (a) c
  %{	02	%} f2 f4
  %{	03	%} f (e) f
  %{	04	%} c (d) c
  %{	05	%} a'2 g4
  %{	06	%} f2 a,4
  %{	07	%} bes (d) c
  %{	08	%} f2.
  %{	09	%} f,4 (a) c
  %{	10	%} f2 f4
  %{	11	%} f (e) f
  %{	12	%} c (d) c
  %{	13	%} a'2 g4
  %{	14	%} f2 a,4
  %{	15	%} bes (d) c
  %{	16	%} f2.
  %{	17	%} a2 a4
  %{	18	%} d,2 d4
  %{	19	%} g2 g4
  %{	20	%} c, (d) e
  %{	21	%} f2 e4
  %{	22	%} d2 a4
  %{	23	%} g2 bes4
  %{	24	%} c2.
  %{	25	%} a'2 f4
  %{	26	%} f (e8 d) e4
  %{	27	%} f (e) d
  %{	28	%} e8 (c d4) e
  %{	29	%} f2 a,4
  %{	30	%} bes (a) bes
  %{	31	%} c2 c4
                    f,2. \bar "|." %32
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Al -- le -- lu -- ia! sing to Je -- sus,
  His the scep -- ter, His the throne;
  Al -- le -- lu -- ia! His the tri -- umph,
  His the vic -- to -- ry a -- lone.
  Hear the songs of ho -- ly Zi -- on
  thun -- der like a might -- y flood:
  Je -- sus out of ev -- ery na -- tion
  has re -- deemed us by His blood.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Al -- le -- lu -- ia! not as or -- phans
  are we left in sor -- row now:
  Al -- le -- lu -- ia! he is near us;
  faith be -- lieves, but knows not how.
  Though the cloud from sight re -- ceived him
  whom the an -- gels now a -- dore,
  shall our hearts for -- get his pro -- mise,
  'I am with you ev -- er -- more'?
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Al -- le -- lu -- ia! bread of hea -- ven,
  here on earth our food, our stay:
  Al -- le -- lu -- ia! here the sin -- ful
  come to you from day to day.
  In -- ter -- ces -- sor, friend of sin -- ners,
  earth's re -- deem -- er, plead for me,
  where the songs of all the sin -- less
  sweep ac -- ross the crys -- tal sea.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Al -- le -- lu -- ia! King e -- ter -- nal,
  you, the Lord of lords we own;
  Al -- le -- lu -- ia! born of Mary,
  earth your foot -- stool, hea -- ven your throne:
  you, with -- in the veil have en -- tered,
  robed in flesh, our great high priest;
  yours the blood and yours the bo -- dy,
  in our eu -- char -- ist -- ic feast.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \voiceOne \global \stemUp \slurUp \musicVerseSoprano }
        \new Voice = "alto" { \voiceTwo \global \stemDown \slurDown \musicVerseAlto }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
      \new Lyrics \lyricsto sopranos \verseThree
      \new Lyrics \printItalic \lyricsto sopranos \verseFour
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" { \voiceThree \global \stemUp \slurUp \musicVerseTenor }
        \new Voice = "bass" { \voiceThree \global \stemDown \slurDown \musicVerseBasso }
      >>
    >>
}
