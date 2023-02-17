package com.hs.sj.notice;

public class NoticeImgDTO {
	private Long fileNum;
	private Long noticeNumber;
	private String fileName;
	private String oriName;
	
	public Long getFileNum() {
		return fileNum;
	}
	public void setFileNum(Long fileNum) {
		this.fileNum = fileNum;
	}
	public Long getNoticeNumber() {
		return noticeNumber;
	}
	public void setNoticeNumber(Long noticeNumber) {
		this.noticeNumber = noticeNumber;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getOriName() {
		return oriName;
	}
	public void setOriName(String oriName) {
		this.oriName = oriName;
	}
}
