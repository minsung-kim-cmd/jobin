package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class SupLicense {
	private int licenseCode;// �ڰ��� ��ȣ
	private int resumeCode;  // �̷¼� ��ȣ
	private String rLicense ;  // �ڰ�����
	private String rLicenseissuer ;  // �ڰ�������ó
	private Date rLicenseacq ;  // �ڰ����߱޳�¥
}
