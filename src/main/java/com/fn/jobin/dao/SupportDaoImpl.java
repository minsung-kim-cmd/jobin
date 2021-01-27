package com.fn.jobin.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Support;

@Repository
public class SupportDaoImpl implements SupportDao {
	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public int cnt(int memberCode) {
		return sst.selectOne("supportns.cnt",memberCode);
	}

	@Override
	public java.util.List<Support> List(int memberCode) {
		return sst.selectList("supportns.list",memberCode);
	}

	@Override
	public void insertsup(Support sup) {
		sst.insert("supportns.insert",sup);
	}

	@Override
	public int remove(int jobpostCode, int memberCode) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("jobpostCode", jobpostCode);
		map.put("memberCode", memberCode);
		return sst.delete("supportns.delete",map);
	}
}
