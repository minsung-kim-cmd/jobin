package com.fn.jobin.dao;

import java.util.List;

import com.fn.jobin.model.Career;

public interface CareerDao {

	void insertcr(Career cr);

	List<Career> careerVew(int resumeCode);

}
