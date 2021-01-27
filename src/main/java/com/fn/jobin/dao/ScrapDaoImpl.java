package com.fn.jobin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Jobopen;
import com.fn.jobin.model.Scrap;

@Repository
public class ScrapDaoImpl implements ScrapDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int cnt(int memberCode) {
		return sst.selectOne("scrapns.cnt",memberCode);
	}

	@Override
	public java.util.List<Scrap> List(int memberCode) {
		return sst.selectList("scrapns.list",memberCode);
	}

	@Override
	public int scrapDelete(int scrapCode) {
		return sst.delete("scrapns.delete", scrapCode);
	}

	@Override
	public java.util.List<Integer> jpcList(int memberCode) {
		return sst.selectList("scrapns.jpcList", memberCode);
	}

	@Override
	public int insertscrap(Scrap scrap) {
		return sst.insert("scrapns.insertscrap", scrap);
	}
}
