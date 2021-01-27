package com.fn.jobin.dao;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.SupAward;
@Repository
public class SupAwardDaoImpl implements SupAwardDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void supawInsert(SupAward supaw) {
		sst.insert("supawardns.insert1",supaw);
	}
	
}
