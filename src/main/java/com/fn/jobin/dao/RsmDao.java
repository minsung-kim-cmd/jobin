package com.fn.jobin.dao;

import java.util.List;

import com.fn.jobin.model.Rsm;
import com.fn.jobin.model.SupportStatus;

public interface RsmDao {

	void insertrsm(Rsm rsm);
	List<String> rsmsubList(int membercode);
	List<Integer> rsmcodeList(int membercode);
	Rsm rsmView(int resumeCode);
	int rsmCnt(int memberCode);
	SupportStatus suprsm(int resumeCode);
	int rsmDelete(int memberCode, int resumeCode);
}
