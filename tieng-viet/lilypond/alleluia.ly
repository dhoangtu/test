%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nội dung tài liệu
% 1. Cài đặt chung
% 2. Nhạc
% 3. Lời
% 4. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Cài đặt chung
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

\header {
  title = "Alleluia"
  arranger = "O Filii et Filie, Nhạc: Jean Tisserand, Lời Việt: Duy Tân"
  tagline = ##f
}

global= {
  \key c \major
  \time 3/4
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Nhạc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicOne = \relative c' {
                  \partial 4 a'4
  %{ 01 %} c2 d4 |
  %{ 02 %} e2 c4 |
  %{ 03 %} d4(c4) b4 |
  %{ 04 %} a2 a4 |
  %{ 05 %} c2 d4 |
  %{ 06 %} e2 c4 |
  %{ 07 %} d4(c4) b4 |
  %{ 08 %} a2 a4 |
  %{ 09 %} a2 b4 |
  %{ 10 %} a4(gis4) a4 |
  %{ 11 %} b2 b4 |
  %{ 12 %} e,2 b'4 |
  %{ 13 %} c4 b2 |
                  a2 \fermata

  %{ 14 %} a4 |
  %{ 15 %} a2 b4 |
  %{ 16 %} a4(gis4) a4 |
  %{ 17 %} b2 b4 |
  %{ 18 %} e,2 b'4 |
  %{ 19 %} c2 b4 |
                  a2 \fermata \bar "|."
}

musicTwo = \relative c' {
                  \partial 4 a'4
  %{ 01 %} e2 g4 |
  %{ 02 %} g2 a4 |
  %{ 03 %} f4(e4) d4 |
  %{ 04 %} c2 e4 |
  %{ 05 %} e2 a4 |
  %{ 06 %} gis2 a4 |
  %{ 07 %} b4(a4) gis4 |
  %{ 08 %} a2 e4 |
  %{ 09 %} d4(e4) f4 |
  %{ 10 %} e2 e4 |
  %{ 11 %} e2 dis4 |
  %{ 12 %} e2 e4 |
  %{ 13 %} e4 e4.(d8) |
                   c2

  %{ 14 %} e4 |
  %{ 15 %} f2 f4 |
  %{ 16 %} e2 e4 |
  %{ 17 %} e2 dis4 |
  %{ 18 %} e2 gis4 |
  %{ 19 %} a2 gis4 |
                  e2 \bar "|."
}

musicThree = \relative c {
                    \partial 4 a'4
  %{ 01 %} c2 b4 |
  %{ 02 %} c2 a4 |
  %{ 03 %} a2 gis4 |
  %{ 04 %} a2 c4 |
  %{ 05 %} c2 b4 |
  %{ 06 %} c4(b4) a4 |
  %{ 07 %} f'4(e4) d4 |
  %{ 08 %} c2 c4 |
  %{ 09 %} d4(c4) d4 |
  %{ 10 %} c4(b4) a4 |
  %{ 11 %} gis2 fis4 |
  %{ 12 %} gis2 gis4 |
  %{ 13 %} a2 gis4 |
                    a2

  %{ 14 %} c4 |
  %{ 15 %} c2 d4 |
  %{ 16 %} c4(b4) a4 |
  %{ 17 %} fis4(gis4) a4 |
  %{ 18 %} gis2 e'4 |
  %{ 19 %} e4 e4.(d8) |
                    c2
}

musicFour = \relative c {
                    \partial 4 a'4
  %{ 01 %} a2 g4 |
  %{ 02 %} c,2 f4 |
  %{ 03 %} d4(e4) e4 |
  %{ 04 %} a,2 a'4 |
  %{ 05 %} a4(g4) f4 |
  %{ 06 %} e2 f4 |
  %{ 07 %} d4(e4) e4 |
  %{ 08 %} g,2 a'8(g8) |
  %{ 09 %} f4(e4) d4 |
  %{ 10 %} e4.(d8) c4 |
  %{ 11 %} b2 b4 |
  %{ 12 %} e2 e8(d8) |
  %{ 13 %} c8(d8) e2 |
                    a,2 _\fermata

  %{ 14 %} a'4 |
  %{ 15 %} fis4(e4) d4 |
  %{ 16 %} e4(d4) c4 |
  %{ 17 %} b2 b4 |
  %{ 18 %} e2 e4 |
  %{ 19 %} a,8(c8) e2 |
                  a,2 _\fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Lời
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
commonChorus = \lyricmode {
  \override LyricText.font-series = #'bold
  \override LyricText.font-size = #+3
  Al -- le -- lu -- ia
  Al -- le -- lu -- ia
  Al -- le -- lu -- ia
}

tiengVietMot = \lyricmode {
  \set stanza = #"1."
  Trần gian, Thiên Quốc cùng chung tâm hồn.
  Mừng con Thiên Chúa Phục Sinh khải hoàn.
  Hân hoan kính dâng cung hát tiếng đàn. Al -- le -- lu -- ia.
}

tiengVietHai = \lyricmode {
  \set stanza = #"2."
  Kìa Con Thiên Chúa toàn năng nhân lành.
  Vì yêu nhân thế đành chết khổ hình.
  Đem cho chúng sinh ơn sống thái bình. Al -- le -- lu -- ia.
}

tiengVietBa = \lyricmode {
  \set stanza = #"3."
  Từ nay Con Chúa dạy cho nhân trần.
  Đường lên Thiên Quốc hiển vinh vô ngần.
  Đau thương khói tan; vinh phúc: đá vàng. Al -- le -- lu -- ia.
  \commonChorus
}

tiengVietBon = \lyricmode {
  \set stanza = #"4."
  Đoàn con ghi nhớ hồng ân muôn đời.
  Từ trong u tối được ra sáng ngời.
  Tin yêu Chúa ban vinh phúc cõi trời. Al -- le -- lu -- ia.
}

latinh = \lyricmode {
  \set stanza = #"5."
  O fi -- li -- i et fi -- li -- ae,
  Rex cae -- les -- tis, Rex glo -- ri -- ae
  mor -- te sur -- rex -- it ho -- di -- e. Al -- le -- lu -- ia.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
    \new ChoirStaff <<
      \new Staff <<
        \global
        \clef "treble"
        \new Voice = "sopranos" {
          \voiceOne \global \stemUp \slurUp \musicOne
        }
        \new Voice = "alto" {
          \voiceTwo \global \stemDown \slurDown \musicTwo
        }
      >>

      \new Lyrics \lyricsto sopranos \tiengVietMot
      \new Lyrics \printItalic \lyricsto sopranos \tiengVietHai
      \new Lyrics \lyricsto sopranos \tiengVietBa
      \new Lyrics \printItalic \lyricsto sopranos \tiengVietBon
      \new Lyrics \lyricsto sopranos \latinh

      \new Staff <<
        \clef "bass"
        \global
        \new Voice = "tenor" {
          \voiceThree \global \stemUp \slurUp \musicThree
        }
        \new Voice = "bass" {
          \voiceThree \global \stemDown \slurDown \musicFour
        }
      >>
    >>
}
