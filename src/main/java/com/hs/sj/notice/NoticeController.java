package com.hs.sj.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/notice/*")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView getNoticeList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<NoticeDTO> ar = noticeService.getNoticeList();
		
		mv.addObject("list", ar);
		mv.setViewName("notice/list");
		
		return mv;
	} 
	
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public ModelAndView getNoticeDetail(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		noticeDTO = noticeService.getNoticeDetail(noticeDTO);
		
		mv.addObject("detail", noticeDTO);
		mv.setViewName("notice/detail");
		
		return mv;
		
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public ModelAndView setNoticeAdd() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("notice/add");
		
		return mv;
	}
	
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public ModelAndView setNoticeAdd(NoticeDTO noticeDTO, MultipartFile pic, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		// File Upload
		int result = noticeService.setNoticeAdd(noticeDTO, pic);
		
		mv.setViewName("redirect:./list");
		
		return mv;
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public ModelAndView setNoticeUpdate(ModelAndView mv, NoticeDTO noticeDTO) throws Exception {
		noticeDTO = noticeService.getNoticeDetail(noticeDTO);
		
		mv.addObject("dto", noticeDTO);
		mv.setViewName("notice/update");
		
		return mv;
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView setNoticeUpdate(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = noticeService.setNoticeUpdate(noticeDTO);
		
		mv.setViewName("redirect:./list");
		
		return mv;
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public ModelAndView setNoticeDelete(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = noticeService.setNoticeDelete(noticeDTO);
		
		mv.setViewName("redirect:./list");
		
		return mv;
	}
}
