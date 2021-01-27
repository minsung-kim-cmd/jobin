package com.fn.jobin.service;

import java.util.Collection;

import com.fn.jobin.model.Jobpost;

public interface JobpostService {

	int getTotal(Jobpost jobpost);

	Collection<Jobpost> list(Jobpost jobpost);

	void updateReadCnt(int num);

	int insertJobpost(Jobpost jobpost);

	Collection<Jobpost> jobpostList(int companyCode);

	int delete(int jobPostCode);

	Jobpost select(int jobPostCode);

	int update(Jobpost jobpost);

	int endEmp(int jobPostCode);
	

}
