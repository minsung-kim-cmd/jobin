package com.fn.jobin.dao;

import java.util.List;

import com.fn.jobin.model.License;

public interface LicenseDao {

	void insertli(License li);

	List<License> licenseView(int resumeCode);

}
