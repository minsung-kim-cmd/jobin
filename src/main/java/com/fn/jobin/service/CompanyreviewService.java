package com.fn.jobin.service;

import java.util.Collection;

import com.fn.jobin.model.Companyreview;

public interface CompanyreviewService {

	Collection<Companyreview> selectList(int companyCode);

	int insertReview(Companyreview companyreview);

	int updateReview(Companyreview companyreview);

	int deleteReview(int reviewCode);

}
