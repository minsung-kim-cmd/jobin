package com.fn.jobin.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.jobin.dao.CompanyreviewDao;
import com.fn.jobin.model.Companyreview;
@Service
public class CompanyreviewServiceImpl implements CompanyreviewService{
	@Autowired
	private CompanyreviewDao crd;
	@Override
	public Collection<Companyreview> selectList(int companyCode) {
		return crd.selectList(companyCode);
	}
	@Override
	public int insertReview(Companyreview companyreview) {
		return crd.insertReview(companyreview);
	}
	@Override
	public int updateReview(Companyreview companyreview) {
		return crd.updateReview(companyreview);
	}
	@Override
	public int deleteReview(int reviewCode) {
		return crd.deleteReview(reviewCode);
	}

}
