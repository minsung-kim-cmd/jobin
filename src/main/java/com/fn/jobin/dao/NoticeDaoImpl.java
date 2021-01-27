package com.fn.jobin.dao;
import java.util.Collection;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Notice;
@Repository
public class NoticeDaoImpl implements NoticeDao{
	@Autowired
	private SqlSessionTemplate sst;

	public int getTotal(Notice notice) {
		return sst.selectOne("noticens.getTotal2", notice);
	}

	public Collection<Notice> list(Notice notice) {
		return sst.selectList("noticens.list2", notice);
	}
	public int insert(Notice notice) {
		return sst.insert("noticens.insert2", notice);
	}

	/*
	 * public void updateReadCount(int num) { sst.update("noticens.updateReadCount",
	 * num);
	 * 
	 * }
	 */
	public Notice select(int noticeCode) {
		return sst.selectOne("noticens.select2", noticeCode);
	}
	public int update(Notice notice) {
		return sst.update("noticens.update2", notice);
	}
	public void updatenReadCount(int noticeCode) {
		sst.update("noticens.updatenReadCount2", noticeCode);
	}
	public int delete(int noticeCode) {
		return sst.delete("noticens.delete2", noticeCode);
	}
}
