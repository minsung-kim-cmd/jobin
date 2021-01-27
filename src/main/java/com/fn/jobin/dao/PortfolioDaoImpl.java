package com.fn.jobin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Portfolio;

@Repository
public class PortfolioDaoImpl implements PortfolioDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void insertport(Portfolio port) {
		sst.insert("portfolions.insert", port);
	}

	@Override
	public List<Portfolio> portView(int resumeCode) {
		return sst.selectList("portfolions.portView", resumeCode );
	}

}
