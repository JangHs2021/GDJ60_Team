package com.hs.sj.notice;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hs.sj.util.FileManager;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	// FileUpload	
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	public List<NoticeDTO> getNoticeList() throws Exception {
		return noticeDAO.getNoticeList();
	}
	
	public NoticeDTO getNoticeDetail(NoticeDTO noticeDTO) throws Exception {
		return noticeDAO.getNoticeDetail(noticeDTO);
	}
	
	// FileUpload
	public int setNoticeAdd(NoticeDTO noticeDTO, MultipartFile pic) throws Exception {
		int result = noticeDAO.setNoticeAdd(noticeDTO);
		
		if(!pic.isEmpty()) {
			String realPath = servletContext.getRealPath("resources/upload/notice");
			String fileName = fileManager.fileSave(pic, realPath);
			
			NoticeImgDTO noticeImgDTO = new NoticeImgDTO();
			noticeImgDTO.setFileName(fileName);
			noticeImgDTO.setOriName(pic.getOriginalFilename());
			noticeImgDTO.setNoticeNumber(noticeDTO.getNoticeNumber());
			
			result = noticeDAO.setNoticeImgAdd(noticeImgDTO);
		}
		return result;
	}
	
	public int setNoticeUpdate(NoticeDTO noticeDTO) throws Exception {
		return noticeDAO.setNoticeUpdate(noticeDTO);
	}
	
	public int setNoticeDelete(NoticeDTO noticeDTO) throws Exception {
		return noticeDAO.setNoticeDelete(noticeDTO);
	}
}
