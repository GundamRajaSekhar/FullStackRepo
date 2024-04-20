package com.nt.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nt.dto.User;
import com.nt.dto.UserLoginDatails;
import com.nt.dto.UserResponse;
import com.nt.service.IUserService;
import com.nt.util.JWTUtil;

@RequestMapping("/user")
@RestController
public class UserLoginController {
    @Autowired
	private IUserService service;
    @Autowired
    private JWTUtil util;
    @Autowired
    private AuthenticationManager manager;
    @PostMapping("/register")
    public ResponseEntity<String>saveUser(@RequestBody User user){
    	int id=service.saveUser(user);
    	return new ResponseEntity<String>("User Is Saved with id"+id,HttpStatus.OK);
    }
    @PostMapping("/login")
    public ResponseEntity<UserResponse>loginUser(@RequestBody UserLoginDatails detils){
    //TODO: Validate User
    	System.out.println(detils.getUserName()+","+detils.getPwd());
    	manager.authenticate(new UsernamePasswordAuthenticationToken(detils.getUserName(), detils.getPwd()));
    	String token=util.generateToken(detils.getUserName());
    	UserResponse response=new UserResponse(token, "Success!");
    	return new ResponseEntity<UserResponse>(response,HttpStatus.OK);
    	
    }
    @PostMapping("/welcome")
    public ResponseEntity<String>welcome(Principal p){
    	return new ResponseEntity<String>("Hello User!"+p.getName(),HttpStatus.OK);
    }
}
