%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nội dung tài liệu
% 1. Cài đặt chung
% 2. Nhạc điệp khúc
% 3. Nhạc phiên khúc
% 4. Lời điệp khúc
% 5. Lời phiên khúc
% 6. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Cài đặt chung
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

\header {
  title = "Lạy Mẹ xin yên ủi"
  composer = "LM Nguyễn Khắc Xuyên"
  tagline = ##f
}

global = {
  \key g \major
  \time 6/8
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
% 2. Nhạc điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sopChorus = \relative c' {
  %{ 01 %} d4 d8 g4 g8 |
  %{ 02 %} b4 b8 a8(b8) a8 |
  %{ 03 %} a4.(a4) r8 |
  %{ 04 %} d,4 d8 a'4 a8 |
  %{ 05 %} b4 b8 a8(b8) a8 |
  %{ 06 %} g4.(g4) r8 |
  %{ 07 %} b4 b8 d4 d8 |
  %{ 08 %} e4 e8 d8(e8) d8 |
  %{ 09 %} b4.(b4) r8 |
  %{ 10 %} g4 g8 a4 a8 |
  %{ 11 %} b4 b8 a8(b8) a8 |
  %{ 12 %} g4. g4 r8 \bar "|." \break
}

bassChorus = \relative c' {
	\override NoteHead.font-size = #-2
  %{ 01 %} d4 d8 b4 d8 |
  %{ 02 %} g4 g8 fis8(g8) fis8 |
  %{ 03 %} fis4.(fis4) r8 |
  %{ 04 %} b,4 b8 c4 c8 |
  %{ 05 %} d4 d8 c8(d8) c8 |
  %{ 06 %} b4.(b4) r8 |
  %{ 07 %} g'4 g8 b4 b8 |
  %{ 08 %} c4 c8 b8(c8) b8 |
  %{ 09 %} g4.(g4) r8 |
  %{ 10 %} b,4 b8 c4 c8 |
  %{ 11 %} d4 d8 c8(d8) c8 |
  %{ 12 %} b4.(b4) r8 \bar "|." \break
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Nhạc phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseMusic = \relative c' {
  \bar "" \set Score.currentBarNumber = #13
	%{	13	%} b'4. g8 b8 g8 |
  %{	14	%} d4. d8 g8 d8 |
	%{	15	%} b4 d8 d4 r8 |
	%{	16	%} d4. g8(a8) b8 |
	%{	17	%} a8(b8) b8 a8(b8) b8 |
	%{	18	%} a4.(a4) r8 |
	%{	19	%} b4. g8 b8 g8 |
	%{	20	%} d4. d8 g8 d8 |
	%{	21	%} b4 d8 d4 r8 |
	%{	22	%} d4. g8(b8) b8 |
	%{	23	%} a8(b8) b8 a8(b8) b8 |
	%{	24	%} g4.(g4) r8 \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Lời điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
choruslyric = \lyricmode {
  \set stanza = #"ĐK:"
  Lạy Mẹ xin yên ủi chúng con luôn luôn. Mẹ từ bi xin phá những nỗi u buồn.
  Vì đời con reo rắc biết bao đau thương, Và tràn lan gai góc vương trên con đường.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Lời phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseOne = \lyricmode {
  \set stanza = #"1."
  Ớ Mẹ rất nhân từ! Mẹ quên sao được hôm xưa! Lời Mẹ hứa khi ở trên núi kia.
  Lúc mà Chúa sinh thì, Mẹ đứng âu sầu lặng yên. Là Mẹ chúng con Mẹ xin lĩnh quyền.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Khấn Mẹ giữ linh hồn và xác con được trinh trong! Lòng luôn hớn hở hát khen Nữ Vương.
  Quyết còn sống ngày nào thờ kính Con Mẹ khoan nhân. Và không quyến luyến thú vui thế trần.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Đến giờ chết xin Mẹ ngự đến bên giường khuyên con. Và ban xuống cho chúng con những ơn.
  Ước gì chúng con được hầu sát ngay cạnh Mẹ liên. Từ nay hết lo lắng hết chán phiền.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
	   (minimum-distance . 1)
	   (padding . 1))
    }
  }
}

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
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
     (minimum-distance . 1)
     (padding . 1))
    }
  }
}
