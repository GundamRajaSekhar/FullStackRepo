package com.nt.util;

import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Component
public class JWTUtil {
   @Value("${app.secret}")
	private String seceret;
   //Validate db UserName token User Name
   public boolean isValidUser(String token,String username) {
	 String tokenUsername=getUserName(token) ;
	 return (username.equals(tokenUsername)&&!isValidToken(token));
   }
   
   //valid exp date
   public boolean isValidToken(String token) {
	   Date expdate=getExpiryDate(token);
	   return expdate.before(new Date(System.currentTimeMillis()));
   }
   
   //Read Subject/userName
   public String getUserName(String token) {
	   return getClaims(token).getSubject();
   }
   
   //Read Exp date
   public Date getExpiryDate(String token) {
	   return getClaims(token).getExpiration();
   }
   //Read Claims
   public Claims getClaims(String token) {
	  return Jwts.parser()
			  .setSigningKey(seceret.getBytes())
			  .parseClaimsJws(token)
			  .getBody();
   }
   //Generate Token
   public String generateToken(String subject) {
	   return Jwts.builder()
			   .setSubject(subject)
			   .setIssuer("Centra Hub")
			   .setIssuedAt(new Date(System.currentTimeMillis()))
			   .setExpiration(new Date(System.currentTimeMillis()+TimeUnit.MINUTES.toMillis(15)))
			   .signWith(SignatureAlgorithm.HS256, seceret.getBytes())
			   .compact();
   }
}
