package com.fn.jobin.dao;

import java.util.List;

import com.fn.jobin.model.Support;

public interface SupportDao {

	List<Support> List(int memberCode);

	int cnt(int memberCode);

	void insertsup(Support sup);

	int remove(int jobpostCode, int memberCode);

}
