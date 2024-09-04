package com.nt.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.service.IExamService;


@Controller
@RequestMapping("/exam")
public class ExamController {
	@Autowired
	private IExamService service;
    @GetMapping("/")
	public String showExamPage() {
	
    	return"examQuestions";
	}
    @PostMapping("/marksCount")
    public String saveExamMarksCount(@RequestParam("mathMarks")Integer mathMarks,@RequestParam("scienceMarksCount")Integer scienceMarksCount,@RequestParam("socialMarksCount")Integer socialMarksCount,@RequestParam("engMarksCount")Integer engMarksCount) {
       Map<String,Integer>map=new HashMap<String, Integer>();
       map.put("Maths Marks",mathMarks);
       map.put("Science Marks",scienceMarksCount);
       map.put("Social Marks", socialMarksCount);
       map.put("English Marks", engMarksCount);
       service.saveData(map);
    	System.out.println(mathMarks);
    	return "success";
    }
}
