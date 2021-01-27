package com.fn.jobin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Jobopen;

@Repository
public class JobopenDaoImpl implements JobopenDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int cnt(int memberCode) {
		return sst.selectOne("jobopenns.cnt",memberCode);
	}

	@Override
	public java.util.List<Jobopen> List(int memberCode) {
		return sst.selectList("jobopenns.list",memberCode);
	}
}
