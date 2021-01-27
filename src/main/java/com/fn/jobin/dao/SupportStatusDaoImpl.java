package com.fn.jobin.dao;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.SupAward;
import com.fn.jobin.model.SupCareer;
import com.fn.jobin.model.SupLicense;
import com.fn.jobin.model.SupPortfolio;
import com.fn.jobin.model.SupSelf;
import com.fn.jobin.model.SupportStatus;

@Repository
public class SupportStatusDaoImpl implements SupportStatusDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int supportInsert(SupportStatus spst) {
		return sst.insert("supportstatusns.supportInsert1", spst);
	}

	@Override
	public List<SupportStatus> supList(int memberCode) {
		return sst.selectList("supportstatusns.supList1",memberCode);
	}

	@Override
	public int supportDelete(int sNum) {
		return sst.delete("supportstatusns.supportDelete1", sNum);
	}
	
	@Override
	public Collection<SupportStatus> selectApply(int companyCode) {
		HashMap<String, Integer> hm = new HashMap<String, Integer>();
		hm.put("companyCode", companyCode);
		return sst.selectList("supportstatusns.selectApply3", hm);
	}
	@Override
	public SupportStatus select(int sNum) {
		return sst.selectOne("supportstatusns.select3",sNum);
	}
	@Override
	public int applypass(int sNum) {
		return sst.update("supportstatusns.pass3",sNum);
	}
	@Override
	public int applyfail(int sNum) {
		return sst.update("supportstatusns.fail3",sNum);
	}
}
