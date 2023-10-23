package kopo.poly.dto;

public class UserInfoDTO {
    private String noticeSeq; //기본키, 순번
    private String title; //제목
    private String noticeYn; //공지글 여부
    private String contents; //글 내용
    private String userId; //작성자
    private String readCnt; //조회수
    private String regId; //등록자 아이디
    private String regDt; //글 등록 날짜
    private String chgId; //수정자 아이디
    private String chgDt; //글 수정 날짜

    private String userName; //등록자명
}
