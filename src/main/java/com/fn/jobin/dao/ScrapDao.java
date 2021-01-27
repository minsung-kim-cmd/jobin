package com.fn.jobin.dao;

import java.util.List;

import com.fn.jobin.model.Scrap;

public interface ScrapDao {

	int cnt(int memberCode);

	List<Scrap> List(int memberCode);

	int scrapDelete(int scrapCode);

	List<Integer> jpcList(int memberCode);

	int insertscrap(Scrap scrap);

}
