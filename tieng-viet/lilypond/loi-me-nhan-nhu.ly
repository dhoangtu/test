%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nội dung tài liệu
% 1. Cài đặt chung
% 2. Nhạc phiên khúc
% 3. Nhạc điệp khúc
% 4. Lời phiên khúc
% 5. Lời điệp khúc
% 6. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Cài đặt chung
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

\header {
  title = "Lời Mẹ Nhắn Nhủ"
  composer = "Lê Huy (LM Huyền Linh)"
  tagline = ##f
}

global = {
  \key a \minor
  \time 4/4
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Nhạc phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseMusic = \relative c' {
                    \partial 2 a'8 a8 a8 a8
  %{ 01 %} e4. e8 a8 a8 a8 a8 |
  %{ 02 %} a2 \breathe c8 c8 b8 c8 |
  %{ 03 %} a4. a8 c8 c8 c8 e8 |
  %{ 04 %} e2 \breathe c8 e8 c8 a8 |
  %{ 05 %} a4. a8 g8 g8 \acciaccatura g8 a8 e8 |
  %{ 06 %} e2 \breathe c'8 b8 a8 e'8 |
  %{ 07 %} d4. c8 a8 g8 g8 a8 |
                    a2 \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Nhạc điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sopChorus = \relative c' {
  \set Score.currentBarNumber = #8
                    \partial 2 c'8.^\f e16 e8 e8
  %{ 08 %} e4.(d8) c8. d16 c8 b8 |
  %{ 09 %} a2 g8^\p g8 \acciaccatura g8 a8 e8 |
  %{ 10 %} e4. c'8 a8 a8 c8 e8 |
  %{ 11 %} e2 c8.^\f e16 e8 e8 |
  %{ 12 %} e4. d8 c8 d8 c8 b8 |
  %{ 13 %} a2 g8 a8 e8 g8 |
  %{ 14 %} a4. c8 b4 c8(b8) |
                    a2 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Lời phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseOne = \lyricmode {
  \set stanza = #"1."
  Năm xưa trên cây sồi làng Fa -- ti -- ma xa xôi, có Ðức Mẹ Chúa Trời hiện ra uy linh sáng chói.
  Mẹ nhắn nhủ người đời: hãy mau ăn năn đền bồi, hãy tôn sùng Mẫu Tâm, hãy năng lần hạt Mân Côi.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Ðôi môi như hoa cười, Mẹ Ma -- ri -- a vui tươi. Có biết bao lớp người gần xa đua nhau bước tới,
  lòng trút khỏi ngậm ngùi, mắt khô đôi suối lệ đời, ngước trông về Mẫu Tâm, sống bên tình Mẹ yên vui.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Qua bao năm lưu đày ngược xuôi khi hôm khi mai. Có những năm tháng dài tình xuân miên man bốc cháy.
  Dừng bước ngửa nhìn trời, trái tim xao xuyến rụng rời. Tháng năm kìa đã trôi, hỡi bao lầm lạc than ôi!
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Lời điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
choruslyric = \lyricmode {
  \set stanza = #"ĐK:"
  Mẹ Ma -- ri -- a ơi, Mẹ Ma -- ri -- a ơi, con vâng nghe Mẹ rồi, sớm chiều từ nay thống hối.
  Mẹ Ma -- ri -- a ơi! Xin Mẹ đoái thương nhận lời: cho nước Việt xinh tươi Ðức Tin sáng ngời.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new ChoirStaff <<
    \new Staff = verses <<
      \new Voice = "verse" {
        \global \stemNeutral \verseMusic
      }
    >>
    \new Lyrics \lyricsto verse \verseOne
    \new Lyrics \lyricsto verse \verseTwo
    \new Lyrics \lyricsto verse \verseThree
  >>
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = ##f
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
     (minimum-distance . 1)
     (padding . 1))
    }
    \context {
      \Staff
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
     (minimum-distance . 1)
     (padding . 1))
    }
  }
}

\score {
  \new ChoirStaff <<
    \new Staff = chorus <<
      \new Voice = "sopranos" {
        \global \stemNeutral \sopChorus
      }
    >>
    \new Lyrics = sopranos
    \context Lyrics = sopranos \lyricsto sopranos \choruslyric
  >>
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = ##f
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
	   (minimum-distance . 1)
	   (padding . 1))
    }
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
	   (minimum-distance . 1)
	   (padding . 1))
    }
  }
}
