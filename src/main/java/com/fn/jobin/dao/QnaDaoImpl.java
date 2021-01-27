package com.fn.jobin.dao;

import java.util.Collection;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Qna;

@Repository
public class QnaDaoImpl implements QnaDao {
	@Autowired
	private SqlSessionTemplate sst;
	
	public int getTotal(Qna qna) {
		return sst.selectOne("qnans.getTotal2", qna);
	}
	public Collection<Qna> list(Qna qna) {
		return sst.selectList("qnans.list2", qna);
	}
	public Qna select(int qnaCode) {
		return sst.selectOne("qnans.select2", qnaCode);
	}
	public int maxNum() {
		return sst.selectOne("qnans.maxNum2");
	}
	public void updateStep(Qna qna) {
		sst.update("qnans.updateStep2", qna);
	}
	public int insert(Qna qna) {
		return sst.insert("qnans.insert2", qna);
	}
	public int update(Qna qna) {
		return sst.update("qnans.update2", qna);
	}
	public void updateqReadcount(int qnaCode) {
		sst.update("qnans.updateqReadcount2", qnaCode);
	}
	public int delete(int qnaCode) {
		return sst.update("qnans.delete2", qnaCode);
	}
	@Override
	public int qnaInsert(Qna qna) {
		return sst.insert("qnans.qnainsert1", qna);
	}

	@Override
	public List<Qna> qnaList() {
		return sst.selectList("qnans.qnaList1");
	}
	@Override
	public Qna qnaForm(int qnaCode) {return sst.selectOne("qnans.qnaForm1", qnaCode);	}
}
