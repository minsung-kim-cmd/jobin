package com.fn.jobin.service;

import java.util.Collection;

import com.fn.jobin.model.Qna;

public interface QnaService {

	int getTotal(Qna qna);

	Collection<Qna> list(Qna qna);

	Qna select(int qnaCode);

	int maxNum();

	void updateStep(Qna qna);

	int insert(Qna qna);

	int update(Qna qna);

	void updateqReadcount(int qnaCode);

	int delete(int qnaCode);

}
