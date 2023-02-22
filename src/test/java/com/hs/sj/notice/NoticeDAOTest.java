package com.hs.sj.notice;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hs.sj.MyTestCase;

public class NoticeDAOTest extends MyTestCase {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
//	@Test
//	public void getNoticeList() throws Exception {
//		List<NoticeDTO> ar = noticeDAO.getNoticeList();
//		
//		assertNotEquals(0, ar.size());
//	}
//	
//	@Test
//	public void setNoticeAdd() throws Exception {
//		NoticeDTO noticeDTO = new NoticeDTO();
//		
//		noticeDTO.setNoticeTitle("TITLE4");
//		noticeDTO.setNoticeDetail("DETAIL4");
//		noticeDTO.setNoticeWriter("WRITER4");
//		
//		int result = noticeDAO.setNoticeAdd(noticeDTO);
//		
//		assertEquals(1, result);		
//	}
	
//	@Test
//	public void setNoticeUpdate() throws Exception {
//		NoticeDTO noticeDTO = new NoticeDTO();
//		
//		noticeDTO.setNoticeNumber(5L);
//		noticeDTO.setNoticeTitle("TITLE5");
//		noticeDTO.setNoticeDetail("DETAIL5");
//		noticeDTO.setNoticeWriter("WRITER5");
//		
//		int result = noticeDAO.setNoticeUpdate(noticeDTO);
//		
//		assertEquals(1, result);	
//	}
	
//	@Test
//	public void setNoticeDelete() throws Exception {
//		NoticeDTO noticeDTO = new NoticeDTO();
//		
//		noticeDTO.setNoticeNumber(5L);
//		int result = noticeDAO.setNoticeDelete(noticeDTO);
//		
//		assertEquals(1, result);
//	}
}
