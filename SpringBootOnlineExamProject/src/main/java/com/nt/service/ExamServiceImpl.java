package com.nt.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
@Service
public class ExamServiceImpl implements IExamService {

	Map<String,Integer>hashMap=null;
	@Override
	public void saveData(Map<String, Integer> map) {
		hashMap=new HashMap<String, Integer>(map);

	}

	@Override
	public Map<String, Integer> getData() {
		
		return hashMap;
	}

}
