package com.fn.jobin.dao;

import java.util.List;

import com.fn.jobin.model.Mbr;

public interface MbrDao {

	Mbr mypage(String mId);

	String attentioncmp(String mId);

	int updateatcmpcode(String at,String mId);

	Mbr mbrForm(String mId);

	int mbrUpdate(String mEmail, String mTel, String mId);

	String mbrChkpw(String mId);

	int mbrcode(String mId);
	
	Mbr select(String mId);

	int insert(Mbr mbr);

	List<Mbr> list();

	Mbr selectMember(int memberCode);

	Mbr find(Mbr mbr);

	Mbr find2(Mbr mbr);

}
