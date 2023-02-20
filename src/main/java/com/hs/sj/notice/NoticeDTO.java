package com.hs.sj.notice;

import java.sql.Date;

public class NoticeDTO {
	private Long noticeNumber;
	private String noticeTitle;
	private String noticeDetail;
	private String noticeWriter;
	private Date noticeDate;
	private Long noticeHit;
	private NoticeImgDTO noticeImgDTO;
	
	public NoticeImgDTO getNoticeImgDTO() {
		return noticeImgDTO;
	}
	public void setNoticeImgDTO(NoticeImgDTO noticeImgDTO) {
		this.noticeImgDTO = noticeImgDTO;
	}
	public Long getNoticeNumber() {
		return noticeNumber;
	}
	public void setNoticeNumber(Long noticeNumber) {
		this.noticeNumber = noticeNumber;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeDetail() {
		return noticeDetail;
	}
	public void setNoticeDetail(String noticeDetail) {
		this.noticeDetail = noticeDetail;
	}
	public String getNoticeWriter() {
		return noticeWriter;
	}
	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public Long getNoticeHit() {
		return noticeHit;
	}
	public void setNoticeHit(Long noticeHit) {
		this.noticeHit = noticeHit;
	}
}
