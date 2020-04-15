%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CONTENTS OF THIS DOCUMENT
% 1. Common settings
% 2. Soprano music
% 3. Alto music
% 4. Tenor  music
% 5. Basso music
% 6. Lyrics
% 7. Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Common settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

\header {
  title = "002. E'en So, Lord Jesus, Quickly Come"
  subtitle = "(Advent or General)"
  subsubtitle = "For SATB a cappella"
  piece = "Revelation 22, Adapted P.O.M."
  arranger = "PAUL O. MANZ"
  tagline = ##f
  copyright = "Copyright 1954, by Concordia Publishing House, St. Louis, Mo."
}

globalSettings= {
  \key des \major
  \override Staff.TimeSignature #'style = #'()
  %\override Score.BarNumber.break-visibility = ##(#t #t #t)
  %\override Score.BarNumber.break-visibility = ##(#f #f #f)
  \tempo "Adagio" 4 = 116
}

verseSettings = {
  \phrasingSlurDashed
}

\paper {
  #(set-paper-size "a4")
  top-margin = 5\mm
  bottom-marign = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  %indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))

  print-page-number = #f
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Soprano music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicSoprano = \relative c' {
  \time 4/4
  \partial 4 f4 ^\mp |
  %{	1  %} bes c des2 ( |
  %{	2  %} des4) c bes aes |
  %{	3  %} f2. \breathe aes4 |
  \time 6/4
  %{	4  %} bes aes f2 ees2 |
  \time 4/4
  %{	5  %} f2. \breathe f4 |
  %{	6  %} bes c des2 ( |
  %{	7  %} des4) f ees c |
  %{	8  %} aes2. c4 |
  \time 6/4
  %{	9  %} bes aes f2 ees |
  \time 4/4
  %{	10 %} f2. r4 |
  %{	11 %} r f ^\f  ^\cresc bes c |
  %{	12 %} des ees des c |
  %{	13 %} aes2. \! \breathe aes4 |
  \time 6/4
  %{	14 %} bes aes des2 c |
  \time 4/4
  %{	15 %} bes2. \breathe f4 |
  %{	16 %} bes c des2 ( |
  %{	17 %} des4) f ees c |
  %{	18 %} aes2. \breathe c4 |
  \time 6/4
  %{	19 %} bes aes f2 ees |
  %{	20 %} f2. \breathe f'4^\f ^\markup { \italic "(accel. slightly)" } f f |
  %{	21 %} f (ees8 des) c4 c c c |
  %{	22 %} c des8 (ees) des4 \breathe des des des |
  %{	23 %} des (c8 bes a4) a bes c |
  %{	24 %} c (des8 ees f4 ^\ff) \breathe bes aes! ges |
  %{	25 %} f -> ees2 -> bes'4 aes f |
  %{	26 %} ees2. \breathe ges4 f ees |
  %{	27 %} \override TextSpanner.bound-details.left.text = "rit."
                  des2 ^\startTextSpan (c) bes |
  \time 4/4
  %{	28 %} a!2. \stopTextSpan f4 ^\p |
  %{	29 %} bes c des2 ( |
  %{	30 %} des4) c bes aes |
  %{	31 %} f2. \breathe aes4 |
  \time 6/4
  %{	32 %} bes aes f2 ees |
  \time 4/4
  %{	33 %} f2. \breathe f4 |
  %{	34 %} bes c des2 ( |
  %{	35 %} des4) f ees c |
  %{	36 %} aes2. \breathe c4 |
  \time 6/4
  %{	37 %} bes ^"rit." aes f2 ees |
  \time 4/4
  %{	38 %} f2. ^\pp \fermata r4 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Alto music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicAlto = \relative c' {
  \time 4/4
  \partial 4 f4 |
  %{	1  %} bes c des2 ( |
  %{	2  %} des4) c bes aes |
  %{	3  %} f (ees des) \breathe c |
  \time 6/4
  %{	4  %} des c des2 ees |
  \time 4/4
  %{	5  %} f2. \breathe f4 |
  %{	6  %} e! f f (aes! |
  %{	7  %} ges) bes aes ges |
  %{	8  %} f2. aes4 |
  \time 6/4
  %{	9  %} f ees des (c) bes (c) |
  \time 4/4
  %{	10 %} des2. r4 |
  %{	11 %} r f ^\cresc bes f |
  %{	12 %} bes aes ges f |
  %{	13 %} ees (des c) \! \breathe f |
  \time 6/4
  %{	14 %} ges f ges (f) ees (aes) |
  \time 4/4
  %{	15 %} f2. \breathe f4 |
  %{	16 %} e! f f (aes! |
  %{	17 %} ges) bes aes ges |
  %{	18 %} f2. \breathe aes4 |
  \time 6/4
  %{	19 %} f ees des (c) bes (c) |
  %{	20 %} d!2. \breathe bes'4 ^\f ^\markup { \italic "(accel. slightly)" } bes bes |
  %{	21 %} bes2 bes4 bes aes ges |
  %{	22 %} aes aes bes \breathe bes bes bes |
  %{	23 %} bes (ges f) f f f |
  %{	24 %} f2 (bes4 ^\ff) \breathe des c bes |
  %{	25 %} aes -> ges -> (aes) des c bes |
  %{	26 %} aes (ges aes) \breathe bes aes ges |
  %{	27 %} \override TextSpanner.bound-details.left.text = "rit."
                  f ^\startTextSpan (ges2 f) e!4 |
  \time 4/4
  %{	28 %} f2. \stopTextSpan f4 ^\p |
  %{	29 %} bes c des2 ( |
  %{	30 %} des4) c bes aes |
  %{	31 %} f (ees des) \breathe c |
  \time 6/4
  %{	32 %} des c des2 ees |
  \time 4/4
  %{	33 %} f2. \breathe f4 |
  %{	34 %} e! f f (aes! |
  %{	35 %} ges) bes aes ges |
  %{	36 %} f2. \breathe aes4 |
  \time 6/4
  %{	37 %} f ^"rit." ees des (c) bes (c) |
  \time 4/4
  %{	38 %} aes2. ^\pp \fermata r4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Tenor  music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicTenor = \relative c {
  \time 4/4
  \partial 4 r4 |
  %{	1  %} r f bes c |
  %{	2  %} des ees f ees |
  %{	3  %} des (c bes) \breathe aes |
  \time 6/4
  %{	4  %} ges aes bes2 c |
  \time 4/4
  %{	5  %} des4 (c bes) \breathe c |
  %{	6  %} bes a! bes (c |
  %{	7  %} bes) des c ees |
  %{	8  %} ees (des c) ees |
  \time 6/4
  %{	9  %} des c aes2 ges4 (aes) |
  \time 4/4
  %{	10 %} aes2. \breathe f4 ^\f |
  %{	11 %} bes ^\cresc c des2 ( |
  %{	12 %} des4) c bes aes |
  %{	13 %} f2. \! \breathe c'4 |
  \time 6/4
  %{	14 %} des c bes2 aes4 (ees') |
  \time 4/4
  %{	15 %} ees (des c) \breathe des |
  %{	16 %} bes a! bes (c |
  %{	17 %} bes) des c ees |
  %{	18 %} ees (des c) \breathe ees |
  \time 6/4
  %{	19 %} des c aes2 ges4 (aes) |
  %{	20 %} bes2. \breathe d!4 ^\f ^\markup { \italic "(accel. slightly)" } ees f |
  %{	21 %} ges2 ges4 ges f ees |
  %{	22 %} f f f \breathe f ges aes |
  %{	23 %} ges (ees8 des c4) c des ees |
  %{	24 %} ees (c des ^\ff) \breathe ges ees des |
  %{	25 %} c -> des -> (c) ges' ees des |
  %{	26 %} c (des c) \breathe des c bes |
  %{	27 %} \override TextSpanner.bound-details.left.text = "rit."
                  des2 \startTextSpan (c) bes |
  \time 4/4
  %{	28 %} c2. \stopTextSpan r4 |
  %{	29 %} r f, ^\p bes c |
  %{	30 %} des ees f ees |
  %{	31 %} des (c bes) \breathe aes |
  \time 6/4
  %{	32 %} ges aes bes2 c |
  \time 4/4
  %{	33 %} des4 (c bes) \breathe c |
  %{	34 %} bes a! bes (c |
  %{	35 %} bes) des c ees |
  %{	36 %} ees (des c) \breathe ees |
  \time 6/4
  %{	37 %} des ^"rit." c aes2 (aes4) ges |
  \time 4/4
  %{	38 %} f2. ^\pp \fermata r4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Basso music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicBasso = \relative c {
  \time 4/4
  \partial 4 r4 |
  %{	1  %} r2. f4 |
  %{	2  %} bes c des c |
  %{	3  %} bes (aes ges) \breathe f |
  \time 6/4
  %{	4  %} ees f ges2 aes |
  \time 4/4
  %{	5  %} bes4 (f des) \breathe f |
  %{	6  %} ges f bes,2 ( |
  %{	7  %} ees4) ees aes aes |
  %{	8  %} des,2 (f4) f |
  \time 6/4
  %{	9  %} bes, c des2 ees4 (aes,)
  \time 4/4
  %{	10 %} des2. \breathe f4 |
  %{	11 %} bes ^\cresc c des2 ( |
  %{	12 %} des4) c bes aes |
  %{	13 %} f2. \! \breathe f4 |
  \time 6/4
  %{	14 %} ees f ges2 aes2 |
  \time 4/4
  %{	15 %} bes2. \breathe bes4 |
  %{	16 %} ges f bes,2 ( |
  %{	17 %} ees4) ees aes aes |
  %{	18 %} des,2 (f4) \breathe f |
  \time 6/4
  %{	19 %} bes, c des2 ees |
  %{	20 %} f2. \breathe bes4 ^\f ^\markup { \italic "(accel. slightly)" } c d! |
  %{	21 %} ees (ees,) aes aes aes aes |
  %{	22 %} des c bes \breathe bes8 (aes) ges4 f |
  %{	23 %} ees2 (f4) f ges a! |
  %{	24 %} bes2 (bes4) ^\ff \breathe ees, f ges |
  %{	25 %} aes -> bes -> (aes) ees f ges |
  %{	26 %} aes (bes aes) \breathe ees f ges |
  %{	27 %} \override TextSpanner.bound-details.left.text = "rit."
                  bes2 ^\startTextSpan (aes) ges |
  \time 4/4
  %{	28 %} f2. \stopTextSpan r4 |
  %{	29 %} r2. f4 ^\p |
  %{	30 %} bes c des c |
  %{	31 %} bes (aes bes) \breathe f |
  \time 6/4
  %{	32 %} ees f ges2 aes |
  \time 4/4
  %{	33 %} bes4 (f des) \breathe f |
  %{	34 %} ges f bes,2 ( |
  %{	35 %} ees4) ees aes aes |
  %{	36 %} des,2 (f4) \breathe f |
  \time 6/4
  %{	37 %} bes, ^"rit." c des2 ees4 (aes,) |
  \time 4/4
  %{	38 %} des,2. ^\pp \fermata r4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Lyrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lyricsSoprano = \lyricmode {
  Peace be to you and grace from Him
  Who freed us from our sin,
  Who loved us all and shed His blood
  That we might sav -- ed be.
  Sing Ho -- ly, Ho -- ly to our Lord,
  The Lord, Al -- might -- y God,
  Who was and is and is to come;
  Sing Ho -- ly, Ho -- ly, Lord!
  Re -- joice in heav -- en, all ye that dwell there -- in,
  Re -- joice on earth, ye saints be -- low,
  For Christ is com -- ing, is com -- ing soon,
  For Christ is com -- ing soon!
  E'en so, Lord Je -- sus, quick -- ly come,
  And night shall be no more;
  They need no light nor lamp nor son,
  For Christ will be their All!
}

lyricsAlto = \lyricmode {
  Peace be to you and grace from Him
  Who freed us from our sin,
  Who loved us all and shed His blood
  That we might sav -- ed be.
  Sing Ho -- ly, Ho -- ly to our Lord,
  The Lord, Al -- might -- y God,
  Who was and is and is to come;
  Sing Ho -- ly, Ho -- ly, Lord!
  Re -- joice in heav -- en, all ye that dwell there -- in,
  Re -- joice on earth, ye saints be -- low,
  For Christ is com -- ing, is com -- ing soon,
  For Christ is com -- ing soon!
  E'en so, Lord Je -- sus, quick -- ly come,
  And night shall be no more;
  They need no light nor lamp nor sun,
  For Christ will be their All!
}

lyricsTenor = \lyricmode {
  Peace be to you and grace from Him
  Who freed us from our sin,
  Who loved us all and shed His blood
  That we might sav -- ed be.
  Sing Ho -- ly, Ho -- ly to our Lord,
  The Lord, Al -- might -- y God,
  Who was and is and is to come;
  Sing Ho -- ly, Ho -- ly, Lord!
  Re -- joice in heav -- en, all ye that dwell there -- in,
  Re -- joice on earth, ye saints be -- low,
  For Christ is com -- ing, is com -- ing soon,
  For Christ is com -- ing soon!
  E'en so, Lord Je -- sus, quick -- ly come,
  And night shall be no more;
  They need no light nor lamp nor son,
  For Christ will be their All!
}

lyricsBasso = \lyricmode {
  Oh, peace and grace from Him
  Who freed us from our sin,
  Who loved us all and shed His blood
  That we might sav -- ed be.
  Sing Ho -- ly, Ho -- ly to our Lord,
  The Lord, Al -- might -- y God,
  Who was and is and is to come;
  Sing Ho -- ly, Ho -- ly, Lord!
  Re -- joice in heav -- en, all ye that dwell there -- in,
  Re -- joice on earth, ye saints be -- low,
  For Christ is com -- ing, is com -- ing soon,
  For Christ is com -- ing soon!
  Lord Je -- sus, quick -- ly come,
  And night shall be no more;
  They need no light nor lamp nor son,
  For Christ will be their All!
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S." } <<
      \new Voice = "Soprano" { \clef treble \globalSettings \musicSoprano }
      \new Lyrics \lyricsto Soprano \lyricsSoprano
    >>
    \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A." } <<
      \new Voice = "Alto" { \clef treble \globalSettings \musicAlto }
      \new Lyrics \lyricsto Alto \lyricsAlto
    >>
    \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T." } <<
      \new Voice = "Tenor" { \clef "violin_8" \globalSettings \musicTenor }
      \new Lyrics \lyricsto Tenor \lyricsTenor
    >>
    \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B." } <<
      \new Voice = "Bass" { \clef bass \globalSettings \musicBasso }
      \new Lyrics \lyricsto Bass \lyricsBasso
    >>
  >>
}