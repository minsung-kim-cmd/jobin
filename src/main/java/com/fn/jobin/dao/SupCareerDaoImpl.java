package com.fn.jobin.dao;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.SupCareer;
@Repository
public class SupCareerDaoImpl implements SupCareerDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void supcrInsert(SupCareer supcr) {
		sst.insert("supcareerns.insert1", supcr);
	}
	
}
