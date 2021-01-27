package com.fn.jobin.service;

import java.util.List;

import com.fn.jobin.model.Companymem;
import com.fn.jobin.model.Mbr;

public interface CompanymemService {

	Companymem select(String cId);

	int insert(Companymem companymem);

	List<Mbr> list();

	Companymem selectMember(int companyCode);

	Companymem find(Companymem companymem);

	Companymem find2(Companymem companymem);

	Companymem select(int companyCode);

}
