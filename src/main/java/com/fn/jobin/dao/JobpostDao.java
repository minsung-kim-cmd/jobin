package com.fn.jobin.dao;

import java.util.Collection;

import com.fn.jobin.model.Jobpost;

public interface JobpostDao {
	int getTotal(Jobpost jobpost);

	Collection<Jobpost> list(Jobpost jobpost);

	void updateReadCnt(int num);

	int insertJobpost(Jobpost jobpost);

	Collection<Jobpost> jobpostList(int companyCode);

	int delete(int jobPostCode);

	Jobpost select(int jobPostCode);

	int update(Jobpost jobpost);

	int endEmp(int jobPostCode);

	String atcname(int companyCode);

	Integer atjobcnt(int companyCode);

	Jobpost addpost(int jobPostCode);

}
