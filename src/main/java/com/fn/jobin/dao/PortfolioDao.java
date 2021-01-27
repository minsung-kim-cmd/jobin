package com.fn.jobin.dao;

import java.util.List;

import com.fn.jobin.model.Portfolio;

public interface PortfolioDao {

	void insertport(Portfolio port);

	List<Portfolio> portView(int resumeCode);

}
