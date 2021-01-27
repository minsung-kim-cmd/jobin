package com.fn.jobin.dao;

import java.util.Collection;

import com.fn.jobin.model.Notice;

public interface NoticeDao {

	int getTotal(Notice notice);

	Collection<Notice> list(Notice notice);

	int insert(Notice notice);

	/* void updateReadCount(int num); */

	Notice select(int noticeCode);

	int update(Notice notice);

	void updatenReadCount(int noticeCode);

	int delete(int noticeCode);

}
