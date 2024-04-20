package com.nt.service;

import java.util.Optional;

import com.nt.dto.User;

public interface IUserService {

	public int saveUser(User user);
	public Optional<User>findByUserName(String userName);
}
