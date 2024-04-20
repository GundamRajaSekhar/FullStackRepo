package com.nt.service;

import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
//import org.springframework.security.core.userdetails.User;
import com.nt.dao.IUserRepository;
import com.nt.dto.User;
@Service
public class UserServiceImpl implements IUserService,UserDetailsService {
    @Autowired
	private IUserRepository userRepo;
    @Autowired
    private BCryptPasswordEncoder encoder;
	@Override
	public int saveUser(User user) {
		//int saveId=userRepo.save(user).getId();
		//encrypt userPassword
//		user.setPwd(new BCryptPasswordEncoder().encode(user.getPwd()));
		user.setPwd(encoder.encode(user.getPwd()));
		return userRepo.save(user).getId();
	}
	@Override
	public Optional<User> findByUserName(String userName) {
		
		return userRepo.findByUserName(userName);
	}
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Optional<User>optional=userRepo.findByUserName(username);
		if(optional.isEmpty())
			throw new UsernameNotFoundException("User Not Available");
		User user=optional.get();
		
		return new org.springframework.security.core.userdetails.User(username, user.getPwd(), user.getRoles().stream().map(e-> new SimpleGrantedAuthority(e)).collect(Collectors.toList()));
	}
	
	
	

}
