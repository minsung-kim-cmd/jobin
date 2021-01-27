package com.fn.jobin.dao;

import java.util.Collection;
import java.util.List;

import com.fn.jobin.model.SupAward;
import com.fn.jobin.model.SupCareer;
import com.fn.jobin.model.SupLicense;
import com.fn.jobin.model.SupPortfolio;
import com.fn.jobin.model.SupSelf;
import com.fn.jobin.model.SupportStatus;

public interface SupportStatusDao {

	int supportInsert(SupportStatus spst);

	List<SupportStatus> supList(int memberCode);

	int supportDelete(int sNum);
	
	Collection<SupportStatus> selectApply(int companyCode);
	SupportStatus select(int sNum);

	int applypass(int sNum);

	int applyfail(int sNum);
}
