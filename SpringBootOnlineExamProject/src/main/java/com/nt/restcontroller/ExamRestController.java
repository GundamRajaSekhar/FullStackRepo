package com.nt.restcontroller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nt.service.IExamService;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/resultController")
public class ExamRestController {
	@Autowired
	public IExamService service;
    @GetMapping("/examResult")
    @ApiOperation(value = "Get response as Map", notes = "Returns a response as a Map with dynamic keys and values",response = Map.class)
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "Successfully retrieved", response = Map.class)
    })
	public ResponseEntity<Map<String,Integer>> getResults(){
		Map<String,Integer>map=service.getData();
		return new ResponseEntity<Map<String,Integer>>(map,HttpStatus.OK);
	}
}
