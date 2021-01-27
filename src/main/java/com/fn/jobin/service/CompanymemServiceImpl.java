package com.fn.jobin.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fn.jobin.dao.CompanymemDao;
import com.fn.jobin.model.Companymem;
import com.fn.jobin.model.Mbr;

@Service
public class CompanymemServiceImpl implements CompanymemService {
	@Autowired
	private CompanymemDao cmd;

	public Companymem select(String cId) {
		return cmd.select(cId);
	}
	public int insert(Companymem companymem) {
		return cmd.insert(companymem);
	}
	public List<Mbr> list() {
		return cmd.list();
	}
	public Companymem selectMember(int companyCode) {
		return cmd.selectMember(companyCode);
	}
	public Companymem find(Companymem companymem) {
		return cmd.find(companymem);
	}
	public Companymem find2(Companymem companymem) {
		return cmd.find2(companymem);
	}
	@Override
	public Companymem select(int companyCode) {	return cmd.select(companyCode);}

}
