package com.fn.jobin.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.jobin.dao.JobpostDao;
import com.fn.jobin.model.Jobpost;

@Service
public class JobpostServiceImpl implements JobpostService{

	@Autowired
	private JobpostDao jpd;

	@Override
	public int getTotal(Jobpost jobpost) {
		return jpd.getTotal(jobpost);
	}

	@Override
	public Collection<Jobpost> list(Jobpost jobpost) {
		return jpd.list(jobpost);
	}

	@Override
	public void updateReadCnt(int num) {
		jpd.updateReadCnt(num);
	}

	@Override
	public int insertJobpost(Jobpost jobpost) {
		return jpd.insertJobpost(jobpost);
	}

	@Override
	public Collection<Jobpost> jobpostList(int companyCode) {
		return jpd.jobpostList(companyCode);
	}

	@Override
	public int delete(int jobPostCode) {
		return jpd.delete(jobPostCode);
	}

	@Override
	public Jobpost select(int jobPostCode) {
		return jpd.select(jobPostCode);
	}

	@Override
	public int update(Jobpost jobpost) {
		return jpd.update(jobpost);
	}

	@Override
	public int endEmp(int jobPostCode) {
		return jpd.endEmp(jobPostCode);
	}
	
}
