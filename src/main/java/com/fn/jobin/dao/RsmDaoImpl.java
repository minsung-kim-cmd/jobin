package com.fn.jobin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Rsm;
import com.fn.jobin.model.SupportStatus;

@Repository
public class RsmDaoImpl implements RsmDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void insertrsm(Rsm rsm) {
		sst.insert("rsmns.insert", rsm);
	}

	@Override
	public List<String> rsmsubList(int membercode) {
		return sst.selectList("rsmns.rsmsubList", membercode);
	}

	@Override
	public List<Integer> rsmcodeList(int membercode) {
		return sst.selectList("rsmns.rsmcodeList", membercode);
	}

	@Override
	public Rsm rsmView(int resumeCode) {
		return (Rsm) sst.selectOne("rsmns.rsmView",resumeCode);
	}

	@Override
	public int rsmCnt(int memberCode) {
		return sst.selectOne("rsmns.rsmCnt", memberCode);
	}

	@Override
	public SupportStatus suprsm(int resumeCode) {
		return (SupportStatus)sst.selectOne("rsmns.rsmView", resumeCode);
	}

	@Override
	public int rsmDelete(int memberCode, int resumeCode) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("memberCode",memberCode);
		map.put("resumeCode", resumeCode);
		return sst.delete("rsmns.rsmDelete", map);
	}

}
