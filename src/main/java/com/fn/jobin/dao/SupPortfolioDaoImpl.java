package com.fn.jobin.dao;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.SupPortfolio;
@Repository
public class SupPortfolioDaoImpl implements SupPortfolioDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void supportInsert(SupPortfolio support) {
		sst.insert("supportfolions.insert1",support);
	}
	
}
