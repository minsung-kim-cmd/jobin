package com.fn.jobin.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.jobin.dao.QnaDao;
import com.fn.jobin.model.Qna;

@Service
public class QnaServiceImpl implements QnaService{
	@Autowired
	private QnaDao qd;

	public int getTotal(Qna qna) {
		return qd.getTotal(qna);
	}
	public Collection<Qna> list(Qna qna) {
		return qd.list(qna);
	}
	public Qna select(int qnaCode) {
		return qd.select(qnaCode);
	}
	public int maxNum() {
		return qd.maxNum();
	}
	public void updateStep(Qna qna) {
		qd.updateStep(qna);
	}
	public int insert(Qna qna) {
		return qd.insert(qna);
	}
	public int update(Qna qna) {
		return qd.update(qna);
	}
	public void updateqReadcount(int qnaCode) {
		qd.updateqReadcount(qnaCode);
	}
	public int delete(int qnaCode) {
		return qd.delete(qnaCode);
	}
}
