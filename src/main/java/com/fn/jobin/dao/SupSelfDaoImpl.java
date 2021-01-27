package com.fn.jobin.dao;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.SupSelf;
@Repository
public class SupSelfDaoImpl implements SupSelfDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void supselfInsert(SupSelf supself) {
		sst.insert("supselfns.insert1",supself);
	}
	
}
