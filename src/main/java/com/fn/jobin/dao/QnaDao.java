package com.fn.jobin.dao;

import java.util.Collection;
import java.util.List;

import com.fn.jobin.model.Qna;

public interface QnaDao {

	int qnaInsert(Qna qna);

	List<Qna> qnaList();
	
	int getTotal(Qna qna);

	Collection<Qna> list(Qna qna);

	Qna select(int qnaCode);

	int maxNum();

	int insert(Qna qna);

	void updateStep(Qna qna);

	int update(Qna qna);

	void updateqReadcount(int qnaCode);

	int delete(int qnaCode);

	Qna qnaForm(int qnaCode);

}
