package com.fn.jobin.service;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fn.jobin.dao.NoticeDao;
import com.fn.jobin.model.Notice;
@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private NoticeDao nd;

	public int getTotal(Notice notice) {
		return nd.getTotal(notice);
	}
	
	public Collection<Notice> list(Notice notice) {
		return nd.list(notice);
	}
	public int insert(Notice notice) {
		return nd.insert(notice);
		/*
		 * } public void updateReadCount(int num) { nd.updateReadCount(num);
		 */
	}
	public Notice select(int noticeCode) {
		return nd.select(noticeCode);
	}
	public int update(Notice notice) {
		return nd.update(notice);
	}
	public void updatenReadCount(int noticeCode) {
		nd.updatenReadCount(noticeCode);
	}
	public int delete(int noticeCode) {
		return nd.delete(noticeCode);
	}
}
