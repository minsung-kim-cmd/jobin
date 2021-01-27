package com.fn.jobin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Mbr;

@Repository
public class MbrDaoImpl implements MbrDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public Mbr mypage(String mId) {	return sst.selectOne("mbrns.mypage", mId);}

	@Override
	public String attentioncmp(String mId) {
		return sst.selectOne("mbrns.attentioncmp",mId);	}

	@Override
	public int updateatcmpcode(String at,String mId) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("at", at);
		map.put("mId", mId);
		return sst.update("mbrns.upadteatcmpcode",map);
	}

	@Override
	public Mbr mbrForm(String mId) {
		return sst.selectOne("mbrns.mbrForm",mId);
	}

	@Override
	public int mbrUpdate(String mEmail, String mTel, String mId) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("mEmail",mEmail);
		map.put("mTel",mTel);
		map.put("mId", mId);
		return sst.update("mbrns.mbrUpdate", map);
	}

	@Override
	public String mbrChkpw(String mId) {
		return sst.selectOne("mbrns.mbrChkpw",mId);
	}

	@Override
	public int mbrcode(String mId) {return sst.selectOne("mbrns.mbrcode",mId);	}
	
	public Mbr select(String mId) {
		return sst.selectOne("mbrns.select2", mId);
	}

	public int insert(Mbr mbr) {
		return sst.insert("mbrns.insert2", mbr);
	}
	public List<Mbr> list() {
		return sst.selectList("mbrns.list2");
	}
	public Mbr selectMember(int memberCode) {
		return sst.selectOne("mbrns.selectMember2", memberCode);
	}
	public Mbr find(Mbr mbr) {
		return sst.selectOne("mbrns.find2", mbr);
	}
	public Mbr find2(Mbr mbr) {
		return sst.selectOne("mbrns.find22", mbr);
	}

}
