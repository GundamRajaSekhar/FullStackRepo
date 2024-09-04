package com.nt.service;

import java.util.Map;

public interface IExamService {

	public void saveData(Map<String,Integer>map);
	public Map<String,Integer>getData();
}
