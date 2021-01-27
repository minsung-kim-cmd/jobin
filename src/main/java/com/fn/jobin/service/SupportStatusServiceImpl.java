package com.fn.jobin.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.jobin.dao.SupportStatusDao;
import com.fn.jobin.model.SupportStatus;

@Service
public class SupportStatusServiceImpl implements SupportStatusService{
	@Autowired
	private SupportStatusDao ssd;

	@Override
	public Collection<SupportStatus> selectApply(int companyCode) {
		return ssd.selectApply(companyCode);
	}
	@Override
	public SupportStatus select(int sNum) {
		return ssd.select(sNum);
	}

	@Override
	public int applypass(int sNum) {
		return ssd.applypass(sNum);
	}

	@Override
	public int applyfail(int sNum) {
		return ssd.applyfail(sNum);
	}
}
