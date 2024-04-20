package com.nt.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import com.nt.util.JWTUtil;
@Component
public class SecurityFilter extends OncePerRequestFilter {
    @Autowired
	private JWTUtil usil;
    @Autowired
    private UserDetailsService service;
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		String token=request.getHeader("Authorization");
		if(token!=null) {
		String userName=usil.getUserName(token);
		if(userName!=null&&SecurityContextHolder.getContext().getAuthentication()==null) {
			UserDetails datails=service.loadUserByUsername(userName);
			boolean isValid=usil.isValidUser(token, userName);
			if(isValid) {
				UsernamePasswordAuthenticationToken utoken=new UsernamePasswordAuthenticationToken(userName, datails.getPassword(),datails.getAuthorities());
				utoken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
				SecurityContextHolder.getContext().setAuthentication(utoken);
				
			}
		}
		}
		filterChain.doFilter(request, response);
		
	}
	

}
