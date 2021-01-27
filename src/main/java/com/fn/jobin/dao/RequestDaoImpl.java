package com.fn.jobin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RequestDaoImpl implements RequestDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int requestCnt(int memberCode) {
		return sst.selectOne("requestns.requestCnt",memberCode);
	}
}
