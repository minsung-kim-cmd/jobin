package com.fn.jobin.dao;

import java.util.List;

import com.fn.jobin.model.Award;
import com.fn.jobin.model.Career;

public interface AwardDao {

	void insertaw(Award award);

	List<Award> awardView(int resumeCode);

}
