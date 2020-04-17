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
  title = "Từ Lòng Đất"
  composer = "Jesus is risen today"
  tagline = ##f
}

global= {
  \key d \major
  \time 4/4
}

\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  page-count = 1
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Nhạc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicOne =   \relative c' {
  %{	01	%} d4 fis4 a4 d,4 |
  %{	02	%} g4 b4 b4 a4 \breathe |
  %{	03	%} fis8(g8 a8 d,8 g4) fis8(g8) |
  %{	04	%} fis4(e4) d2 \breathe \break |
  %{	05	%} g4 a4 b4 a4 |
  %{	06	%} g4 fis4 fis4 e4 \breathe |
  %{	07	%} fis8(g8 a8 d,8 g4) fis8(g8) |
  %{	08	%} fis4( e4) d2 \breathe \break |
  %{	09	%} cis'4 d4 e4 a,4 |
  %{	10	%} d4(e4) fis2 \breathe |
  %{	11	%} cis8(d8 e8 a,8 d4) cis8(d8) |
  %{	12	%} cis4(b4) a2 \breathe \break |
  %{	13	%} a8(b8) cis8(a8) d4 fis,4 |
  %{	14	%} g4 b4 b4 a4 \breathe |
  %{	15	%} d8(cis8 d8 a8 b8 cis8) d8(e8) |
  %{	16	%} d4(cis4) d2 \breathe \bar "|."
}

musicTwo =    \relative c' {
  %{	01	%} d4 d4 e4 d4 |
  %{	02	%} d4 g4 g4 fis4 \breathe |
  %{	03	%} d2(d8 cis8) d4 |
  %{	04	%} d4(cis4) d2 \breathe \break |
  %{	05	%} d4 d4 d4 d4 |
  %{	06	%} d8(cis8) d4 d4 cis4 |
  %{	07	%} d2(d8 cis8) d4 |
  %{	08	%} d4(cis4) d2 \breathe \break |
  %{	09	%} cis'4. gis8 a4 a4 |
  %{	10	%} a4(g4) fis2 \breathe |
  %{	11	%} a2(a8 gis8) a4 |
  %{	12	%} a4(gis4) a2 \breathe \break % 12
  %{	13	%} cis,8(d8) e8(cis8) d4 d4 |
  %{	14	%} d4 g4 g4 fis4 \breathe |
  %{	15	%} fis8(g8 a8 fis8 g4) a8(g8) |
  %{	16	%} fis4(e4) fis2 \breathe \bar "|."
}

musicThree =  \relative c {
  %{	01	%} fis4 a4 g4 fis4 |
  %{	02	%} g4 d'4 d4 d4 \breathe |
  %{	03	%} a2( b8 a8) a8(g8) |
  %{	04	%} a4.(g8) fis2  \breathe \break |
  %{	05	%} g4 fis4 g4 a4 |
  %{	06	%} b8(g8) a4 a4 a4 \breathe |
  %{	07	%} a2( b8 g8) a8(g8) |
  %{	08	%} a4.(g8) fis2 \breathe \break |
  %{	09	%} e'4 d4 cis4 cis4 |
  %{	10	%} d4.(cis8) d2 \breathe |
  %{	11	%} e2. e8(d8) |
  %{	12	%} e4.(d8) cis2 % \breathe \break |
  %{	13	%} a4 a4 a4 a4 |
  %{	14	%} g4 d'4 d4 d4 \breathe |
  %{	15	%} a4.(d8 d8 e8) d8(b8) |
  %{	16	%} a2 a2 \breathe \bar "|."
}

musicFour =    \relative c {
  %{	01	%} d4 d4 cis4 d4 |
  %{	02	%} b4 g4 d'4 d4 \breathe |
  %{	03	%} d8(e8 fis4 e4) d8(b8) |
  %{	04	%} a2 d2 \breathe \break |
  %{	05	%} b4 d4 g4 fis4 |
  %{	06	%} e4 d4 a4 a4 \breathe |
  %{	07	%} d8(e8 fis4 e4) d8(b8) |
  %{	08	%} a2 d2 \breathe \break |
  %{	09	%} a4 b4 cis4 a'8(g8) |
  %{	10	%} fis4(e4) d2 \breathe |
  %{	11	%} a'8(b8 cis4 b4) a8(fis8) |
  %{	12	%} e2 a,2 \breathe \break |
  %{	13	%} a'4. g8 fis4 d8(cis8) |
  %{	14	%} b4 g4 d'4 d4 \breathe |
  %{	15	%} d8(e8 fis8 d8 g8 e8) fis8(g8) |
  %{	16	%} a4(a,4) d2 \breathe \break \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Lời
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tiengVietMot = \lyricmode {
  \set stanza = #"1."
  Từ lòng đất Người ly thoát hôm nay Al -- le -- lu -- ia!
  Chúa Cứu Thế sức mạnh của muôn loài Al -- le -- lu -- ia!
  Từ lòng đất Người ly thoát Al -- le -- lu -- ia!
  Trời đất hát mừng khen Chúa an bài Al -- le -- lu -- ia!
}

tiengVietHai = \lyricmode {
  \set stanza = #"2."
  Từ đêm tối Người vinh thắng hôm nay Al -- le -- lu -- ia!
  Chúa Cứu Thế ánh sáng của muôn loài Al -- le -- lu -- ia!
  Từ đêm tối Người vinh thắng Al -- le -- lu -- ia!
  Đoàn con quyết tìm ánh sáng bởi trời Al -- le -- lu -- ia!
}

tiengVietBa = \lyricmode {
  \set stanza = #"3."
  Từ cõi chết Người phục sinh hôm nay Al -- le -- lu -- ia!
  Chúa Cứu Thế hy vọng của muôn loài Al -- le -- lu -- ia!
  Từ cõi chết Người phục sinh Al -- le -- lu -- ia!
  Đoàn con hết lòng tìm bước theo Thầy Al -- le -- lu -- ia!
}

tiengVietBon = \lyricmode {
  \set stanza = #"4."
  Từ kẻ dữ Người toàn thắng hôm nay Al -- le -- lu -- ia!
  Chúa Cứu Thế cứu tinh của muôn loài Al -- le -- lu -- ia!
  Từ kẻ dữ Người toàn thắng Al -- le -- lu -- ia!
  Đoàn con hát mừng khen Chúa đêm ngày Al -- le -- lu -- ia!
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
