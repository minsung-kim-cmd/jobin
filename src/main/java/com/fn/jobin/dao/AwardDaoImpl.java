package com.fn.jobin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Award;
import com.fn.jobin.model.Career;

@Repository
public class AwardDaoImpl implements AwardDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void insertaw(Award award) {
		sst.insert("awardns.insert", award);
	}

	@Override
	public List<Award> awardView(int resumeCode) {
		return sst.selectList("awardns.awardView",resumeCode);
	}

}
