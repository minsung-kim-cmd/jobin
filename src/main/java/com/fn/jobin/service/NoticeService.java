package com.fn.jobin.service;

import java.util.Collection;

import com.fn.jobin.model.Notice;

public interface NoticeService {

	int getTotal(Notice notice);

	Collection<Notice> list(Notice notice);

	int insert(Notice notice);

	/* void updateReadCount(int num); */

	Notice select(int noticeCode);

	int update(Notice notice);

	void updatenReadCount(int noticeCode);

	int delete(int noticeCode);

}
