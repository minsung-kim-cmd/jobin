package com.fn.jobin.dao;

import java.util.List;

import com.fn.jobin.model.Jobopen;

public interface JobopenDao {

	int cnt(int memberCode);

	List<Jobopen> List(int memberCode);

}
