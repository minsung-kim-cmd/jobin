package com.fn.jobin.service;

import java.util.Collection;

import org.springframework.stereotype.Service;

import com.fn.jobin.model.SupportStatus;

@Service
public interface SupportStatusService {

	Collection<SupportStatus> selectApply(int companyCode);

	SupportStatus select(int sNum);

	int applypass(int sNum);

	int applyfail(int sNum);

}
