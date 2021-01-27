package com.fn.jobin.dao;

import java.util.List;

import com.fn.jobin.model.Self;

public interface SelfDao {

	List<Self> selfView(int resumeCode);

}
