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
  title = "Cung chúc Trinh Vương"
  composer = "LM Hoài Đức"
  tagline = ##f
}

global = {
  \key d \minor
  \time 2/4
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
  %{ 01 %} a'4 c8 a8 |
  %{ 02 %} a4. g8 |
  %{ 03 %} f8(e8) g8 f8 |
  %{ 04 %} d4. d8 |
  %{ 05 %} a'8 g8 a8 c8 |
  %{ 06 %} d4 c8 f8 |
  %{ 07 %} d4 c8(d16 c16) |
  %{ 08 %} a2 \breathe |
  %{ 09 %} d,4 f8 d8 |
  %{ 10 %} d4. c8 |
  %{ 11 %} d8(f8) c'8 a8 |
  %{ 12 %} a4 a8(c8) |
  %{ 13 %} d8 c8 a8 f8 |
  %{ 14 %} a4 g8 a8 |
  %{ 15 %} f4 e4 |
  %{ 16 %} d2 \bar "|" % 16
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Nhạc điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sopChorus = \relative c' {
  %{	17	%} d4 f8 g8 |
  %{	18	%} a4 g8 f8 |
  %{	19	%} g8 f8 a8 c8 |
  %{	20	%} d2 |
  %{	21	%} d4 a8 g8 |
  %{	22	%} f4 g8 a8 |
  %{	23	%} g4 c8(d8) |
  %{	24	%} a2 |
  %{	25	%} d,4 f8 g8 |
  %{	26	%} a4 g8 f8 |
  %{	27	%} g8 f8 a8 c8 |
  %{	28	%} d2 |
  %{	29	%} d4 a8 g8 |
  %{	30	%} f4 g8 a8 |
  %{	31	%} f4 e 8 f8 |
  %{	32	%} d2 \bar "|." |
}

bassChorus = \relative c' {
	\override NoteHead.font-size = #-2
  \bar "" \set Score.currentBarNumber = #17
  %{	17	%} d4 f8 e8 |
  %{	18	%} f4 e8 d8 |
  %{	19	%} e8 d8 f8 e8 |
  %{	20	%} f2 |
  %{	21	%} f4 f8 e8 |
  %{	22	%} d4 e8 f8 |
  %{	23	%} e4 a8(bes8) |
  %{	24	%} f2 |
  %{	25	%} d4 f8 e8 |
  %{	26	%} f4 e8 d8 |
  %{	27	%} e8 d8 f8 e8 |
  %{	28	%} f2 |
  %{	29	%} f4 f8 e8 |
  %{	30	%} d4 e8 f8 |
  %{	31	%} d4 cis8 cis8 |
  %{	32	%} d2 \bar "|." |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Lời phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseOne = \lyricmode {
  \set stanza = #"1."
  Cung chúc Trinh Vương không hề nhiễm tội truyền. Thật Mẹ là Mẹ Thiên Chúa, Mẹ khiết trinh trọn đời.
  Cung chúc Trinh Vương là kho tích ơn thiêng. Mẹ đã hy sinh hiệp thông để cứu chuộc nhân loại.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Cung chúc Trinh Vương Mẹ quyền phép khôn lường. Vì Mẹ đầy ơn Thiên Chúa Mẹ Nữ Vương muôn loài.
  Cung chúc Trinh Vương Mẹ nhân ái yêu đương. Mẹ cứu giúp ai lạc bước, ai khốn khổ trên đời.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Nhưng đang thương thay nhân loại đã trờ lòng. Làm nên mạo gai nhọn sắc rách nát tim Mẹ lành.
  Mong ước Trinh Vương lượng tha thứ bao dung. Cho thế nhân bao tội lỗi xin Đức Mẹ thương tình.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Con muốn vang cung với thần thánh trên trời. Và bao người lành dưới thế ngợi chúc Mẹ Thiên Đình.
  Cung chúc Trinh Vương chiều hoom với ban mai. Con muốn mến yêu Mẹ mãi, con mế yêu tận tình.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Lời điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
choruslyric = \lyricmode {
  \set stanza = #"ĐK:"
  Mẹ Ma -- ri -- a ai là không được Mẹ thương đến. Khốn thay nhân loại mê đắm nên lãng quên.
  Mẹ Fa -- ti -- ma! Con nguyện xin đền tạ yêu mến. Muốn hy sinh nhiều yên ủi Mẹ khỏi ưu phiền.
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
        \voiceOne \global \stemUp \sopChorus
      }
      \new Voice = "basses" {
        \voiceTwo \global \stemDown \bassChorus
      }
    >>
    \new Lyrics = basses
    \context Lyrics = basses \lyricsto basses \choruslyric
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
