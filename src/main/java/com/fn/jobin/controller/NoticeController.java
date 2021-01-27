package com.fn.jobin.controller;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fn.jobin.model.Notice;
import com.fn.jobin.service.NoticeService;
import com.fn.jobin.service.PagingBean;
@Controller
public class NoticeController {
	@Autowired
	private NoticeService ns;
	
	@RequestMapping("/nList")
	public String nList(String pageNum, Notice notice, Model model, HttpSession session) {
		if (pageNum == null || pageNum.equals("")) pageNum="1";
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10;
		int total = ns.getTotal(notice);
		int startRow = (currentPage -1) * rowPerPage +1;
		int endRow = startRow + rowPerPage -1;
		int no = total - startRow +1; // 페이지별 시작번호
		notice.setStartRow(startRow);
		notice.setEndRow(endRow);
		String mId = (String)session.getAttribute("mId");
		Collection<Notice> list = ns.list(notice);
		/* System.out.println("mId="+mId); */
		PagingBean pb=new PagingBean(currentPage,rowPerPage,total);
		String tit[] = {"작성자","제목","내용","제목+내용"};
		model.addAttribute("list", list);
		model.addAttribute("no", no);
		model.addAttribute("pb", pb);
		model.addAttribute("notice", notice);
		model.addAttribute("tit", tit);
		model.addAttribute("mId", mId);
		return "/notice/nList";
	}
	@RequestMapping("/nInsertForm")
	public String nInsertForm(String pageNum, Model model) {
		model.addAttribute("pageNum", pageNum);
		return "/notice/nInsertForm";
	}
	@RequestMapping("/nInsert")
	public String nInsert(Notice notice, String pageNum, Model model,
			HttpServletRequest request) {
		int result = ns.insert(notice);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/notice/nInsert";
	}
	@RequestMapping("/nView")
	public String nView(int noticeCode, String pageNum, Model model) {
		ns.updatenReadCount(noticeCode);
		Notice notice = ns.select(noticeCode);
		model.addAttribute("notice", notice);
		model.addAttribute("pageNum", pageNum);
		return "/notice/nView";
	}
	@RequestMapping("/nUpdateForm")
	public String nUpdateForm(int noticeCode, String pageNum, Model model) {
		Notice notice = ns.select(noticeCode);
		String nContent = notice.getnContent();
		String st = nContent.replace("<br>", "\r\n");
		notice.setnContent(st);
		model.addAttribute("notice", notice);
		model.addAttribute("pageNum", pageNum);
		return "/notice/nUpdateForm";
	}
	@RequestMapping("/nUpdate")
	public String nUpdate(Notice notice, String pageNum, Model model) {
		String st = notice.getnContent().replace("\r\n", "<br>");
		notice.setnContent(st);
		int result = ns.update(notice);
		model.addAttribute("result", result);
		model.addAttribute("notice", notice);
		model.addAttribute("pageNum", pageNum);
		return "/notice/nUpdate";
	}
	@RequestMapping("/nDeleteForm")
	public String nDeleteForm(int noticeCode, String pageNum, Model model) {
		Notice notice = ns.select(noticeCode);
		model.addAttribute("notice", notice);
		model.addAttribute("pageNum", pageNum);
		return "/notice/nDeleteForm";
	}
	@RequestMapping("/nDelete")
	public String nDelete(int noticeCode, String pageNum, Model model) {
		int result = ns.delete(noticeCode);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/notice/nDelete";
	}
}
