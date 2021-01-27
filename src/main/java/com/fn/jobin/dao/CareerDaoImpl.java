package com.fn.jobin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Career;

@Repository
public class CareerDaoImpl implements CareerDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void insertcr(Career cr) {
		sst.insert("careerns.insert", cr);
	}

	@Override
	public List<Career> careerVew(int resumeCode) {
		return sst.selectList("careerns.careerView", resumeCode);
	}

}
