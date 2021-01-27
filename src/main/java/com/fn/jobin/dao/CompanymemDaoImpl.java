package com.fn.jobin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Companymem;
import com.fn.jobin.model.Mbr;

@Repository
public class CompanymemDaoImpl implements CompanymemDao {
	@Autowired
	private SqlSessionTemplate sst;
	@Override
	public Companymem select(int companyCode) {
		return sst.selectOne("companymemns.select3",companyCode);
	}
	public Companymem select(String cId) {
		return sst.selectOne("companymemns.select2", cId);
	}
	public int insert(Companymem companymem) {
		return sst.insert("companymemns.insert2", companymem);
	}
	public List<Mbr> list() {
		return sst.selectList("companymemns.list2");
	}
	public Companymem selectMember(int companyCode) {
		return sst.selectOne("companymemns.selectMember2", companyCode);
	}
	public Companymem find(Companymem companymem) {
		return sst.selectOne("companymemns.find2", companymem);
	}
	public Companymem find2(Companymem companymem) {
		return sst.selectOne("companymemns.find22", companymem);
	}
}
