package com.fn.jobin.dao;

import java.util.Collection;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.Companyreview;
@Repository
public class CompanyreviewDaoImpl implements CompanyreviewDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public Collection<Companyreview> selectList(int companyCode) {
		HashMap<String, Integer> hm = new HashMap<String, Integer>();
		hm.put("companyCode", companyCode);
		return sst.selectList("companyreviewns.selectList3", hm);
	}

	@Override
	public int insertReview(Companyreview companyreview) {
		
		return sst.insert("companyreviewns.insertReview3", companyreview);
	}

	@Override
	public int updateReview(Companyreview companyreview) {
		return sst.update("companyreviewns.updateReview3",companyreview);
	}

	@Override
	public int deleteReview(int reviewCode) {
		return sst.delete("companyreviewns.deleteReview3",reviewCode);
	}
}
