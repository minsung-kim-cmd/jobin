package com.fn.jobin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Self;

@Repository
public class SelfDaoImpl implements SelfDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Self> selfView(int resumeCode) {
		return sst.selectList("selfns.selfView",resumeCode);
	}
}
