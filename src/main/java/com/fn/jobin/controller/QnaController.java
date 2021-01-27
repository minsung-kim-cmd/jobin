package com.fn.jobin.controller;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fn.jobin.model.Qna;
import com.fn.jobin.service.CompanymemService;
import com.fn.jobin.service.PagingBean;
import com.fn.jobin.service.QnaService;
@Controller
public class QnaController {
	@Autowired
	private QnaService qs;
	
	@RequestMapping("/qList")
	public String qList(String pageNum, Qna qna, Model model, HttpSession session) {
		if (pageNum == null || pageNum.equals("")) pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10;
		int total = qs.getTotal(qna);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		int no = total - startRow + 1; // 페이지별 시작번호
		qna.setStartRow(startRow);
		qna.setEndRow(endRow);
		String mId = (String)session.getAttribute("mId");
		qna.setmId(mId);
		/* String cId = (String)session.getAttribute("cId"); */
		Collection<Qna> list = qs.list(qna);
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String tit[] = {"작성자","제목","내용","제목+내용"};
		model.addAttribute("list", list);
		model.addAttribute("no", no);
		model.addAttribute("pb", pb);
		model.addAttribute("qna", qna);
		model.addAttribute("tit", tit);
		model.addAttribute("mId", mId);
		/* model.addAttribute("cId", cId); */
		return "/qna/qList";
	}
	@RequestMapping("/qInsertForm")
	public String qInsertForm(String qnaCode1, String pageNum, Model model) {
		int qRef = 0, qRe_level = 0, qRe_step = 0, qnaCode = 0;
		if(qnaCode1 != null && !qnaCode1.equals("")) { //답변수
			qnaCode = Integer.parseInt(qnaCode1);
			Qna qna = qs.select(qnaCode);
			// 답변 글이 아니면 qnaCode과 qRef는 같다
			// 답변글은 읽은 글의 qRef 값을 답변 글의 qRef에 반영
			qRef = qna.getqRef();
			qRe_level = qna.getqRe_level();
			qRe_step = qna.getqRe_step();
		}
		model.addAttribute("qRef",qRef );
		model.addAttribute("qRe_level",qRe_level );
		model.addAttribute("qRe_step", qRe_step);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("qnaCode", qnaCode);
		return "/qna/qInsertForm";
	}
	@RequestMapping("/qInsert")
	public String qInsert(Qna qna, String pageNum, Model model,
				HttpSession session) {
		String mId = (String)session.getAttribute("mId");
		qna.setmId(mId);
		int qnaCode = qs.maxNum();
		if(qna.getQnaCode() != 0) {// 답변글
			// re_step 값을 정해
			qs.updateStep(qna);
			// 읽은 글이 re_step과 re_level보다 1씩 증가
			qna.setqRe_level(qna.getqRe_level()+1);
			qna.setqRe_step(qna.getqRe_step()+1);
		} else qna.setqRef(qnaCode); // 답변글이 아닐 때
		qna.setQnaCode(qnaCode);
		int result = qs.insert(qna);
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/qna/qInsert";
	}
	@RequestMapping("/qView")
	public String qView(int qnaCode, String pageNum, Model model) {
		qs.updateqReadcount(qnaCode);
		Qna qna = qs.select(qnaCode);
		model.addAttribute("qna", qna);
		model.addAttribute("pageNum", pageNum);
		return "/qna/qView";
	}
	@RequestMapping("/qUpdateForm")
	public String qUpdateForm(int qnaCode, String pageNum, Model model) {
		Qna qna = qs.select(qnaCode);
		String qContent = qna.getqContent();
		String st = qContent.replace("<br>","\r\n");
		qna.setqContent(st);
		model.addAttribute("qna", qna);
		model.addAttribute("pageNum", pageNum);
		return "/qna/qUpdateForm";
	}
	@RequestMapping("/qUpdate")
	public String qUpdate(Qna qna, String pageNum, Model model) {
		String st = qna.getqContent().replace("\r\n", "<br>");
		qna.setqContent(st);
		int result = qs.update(qna);
		model.addAttribute("result", result);
		model.addAttribute("qna", qna);
		model.addAttribute("pageNum", pageNum);
		return "/qna/qUpdate";
	}
	@RequestMapping("/qDeleteForm")
	public String qDeleteForm(int qnaCode, String pageNum, Model model) {
		Qna qna = qs.select(qnaCode);
		model.addAttribute("qna", qna);
		model.addAttribute("pageNum", pageNum);
		return "/qna/qDeleteForm";
	}
	@RequestMapping("/qDelete")
	public String qDelete(int qnaCode, String pageNum, Model model) {
		int result = qs.delete(qnaCode);
		model.addAttribute("resuslt", result);
		model.addAttribute("pageNum", pageNum);
		return "/qna/qDelete";
	}
}
