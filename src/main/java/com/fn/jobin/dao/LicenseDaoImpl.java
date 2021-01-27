package com.fn.jobin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.License;

@Repository
public class LicenseDaoImpl implements LicenseDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void insertli(License li) {
		sst.insert("licensens.insert", li);
	}

	@Override
	public List<License> licenseView(int resumeCode) {
		return sst.selectList("licensens.licenseView",resumeCode);
	}

}
