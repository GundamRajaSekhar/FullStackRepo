package com.nt.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nt.dto.User;

public interface IUserRepository extends JpaRepository<User, Integer> {

	public Optional<User>findByUserName(String userName);
}
