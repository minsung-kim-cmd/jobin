package com.fn.jobin.dao;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.jobin.model.SupLicense;
@Repository
public class SupLicenseDaoImpl implements SupLicenseDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void supliInsert(SupLicense supli) {
		sst.insert("suplicensens.insert1",supli);
	}
	
}
