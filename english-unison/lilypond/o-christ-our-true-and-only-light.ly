\version "2.18.2"

\header {
  title = "O Christ, Our True And Only Light"
  composer = "Noel Jones, Johan Heerman, Tr. Catherine Winkworth"
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
musicVerseSoprano = \relative c' {
                    \partial 2 r8 d g fis |
  %{	01	%} g4. d8 f! e |
  %{	02	%} d4. d8 g fis |
  %{	03	%} g4. a16 (b) c8 b |
  %{	04	%} a4. g8 a d |
  %{	05	%} d4 c8 (b) a d, |
  %{	06	%} g4. g8 a b |
  %{	07	%} a4. e8 d d |
                    d4 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O Christ, our true and on -- ly light,
  Il -- lu -- mine those who sit in night;
  Let those a -- far now hear your voice,
  And in your fold with us re -- joice.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Lord, gent -- ly seek _ gone a -- stray,
  That they may fol -- low in your way.
  Your heal -- ing grace let them be giv'n,
  That they may one day share your heav'n.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Make those in doubt, now share your word,
  And teach them to pro -- fess it, Lord,
  Who dare not yet the faith a -- vow,
  Though se -- cret -- ly they hold it now.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Shine on the dark -- ened and the cold,
  Re -- call the wan -- d'rers from your fold,
  Those now u -- nite who walk a -- part
  Con -- firm the weak and doubt -- ing heart.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  So they with us may ev -- er -- more
  Such grace with won -- d'ring -- thanks a -- dore;
  And end -- less praise to you be giv'n
  By all your Church in earth and heav'n.
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
