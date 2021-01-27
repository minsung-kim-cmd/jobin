package com.fn.jobin.dao;

import java.util.Collection;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Jobpost;

@Repository
public class JobpostDaoImpl implements JobpostDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public String atcname(int companyCode) {return sst.selectOne("jobpostns.atcname1", companyCode);}

	@Override
	public Integer atjobcnt(int companyCode) {return sst.selectOne("jobpostns.atjobcnt1", companyCode);}

	@Override
	public Jobpost addpost(int jobPostCode) {
		return sst.selectOne("jobpostns.addpost1", jobPostCode);
	}
	@Override
	public int getTotal(Jobpost jobpost) {
		return sst.selectOne("jobpostns.getTotal4", jobpost);
	}

	@Override
	public Collection<Jobpost> list(Jobpost jobpost) {
		return sst.selectList("jobpostns.list4", jobpost);
	}

	@Override
	public void updateReadCnt(int num) {
		sst.update("jobpostns.updateReadCnt4",num);
	}
	
	@Override
	public int insertJobpost(Jobpost jobpost) {
		return sst.insert("jobpostns.insert3", jobpost);
	}

	@Override
	public Collection<Jobpost> jobpostList(int companyCode) {
		HashMap<String, Integer> hm = new HashMap<String, Integer>();
		hm.put("companyCode", companyCode);
		return sst.selectList("jobpostns.jobpostList3", hm);
	}

	@Override
	public int delete(int jobPostCode) {
		return sst.delete("jobpostns.delete3", jobPostCode);
	}

	@Override
	public Jobpost select(int jobPostCode) {
		return sst.selectOne("jobpostns.select3",jobPostCode);
	}

	@Override
	public int update(Jobpost jobpost) {
		return sst.update("jobpostns.update3", jobpost);
	}
	@Override
	public int endEmp(int jobPostCode) {
		return sst.update("jobpostns.endEmp3", jobPostCode);
	}

}
