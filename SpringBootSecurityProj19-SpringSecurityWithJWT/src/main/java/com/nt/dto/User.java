package com.nt.dto;

import java.util.Set;

import javax.persistence.CollectionTable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "user_tab")
public class User {
     @Id
     @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String name;
	private String userName;
	private String pwd;
	@javax.persistence.ElementCollection(fetch = FetchType.EAGER)
	@CollectionTable(name = "roles_tab",joinColumns = @JoinColumn 
	(referencedColumnName = "id"))
	private Set<String>roles;
	
	public User() {
		super();
	}
	public User(Integer id, String name, String userName, String pwd, Set<String> roles) {
		super();
		this.id = id;
		this.name = name;
		this.userName = userName;
		this.pwd = pwd;
		this.roles = roles;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Set<String> getRoles() {
		return roles;
	}
	public void setRoles(Set<String> roles) {
		this.roles = roles;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", userName=" + userName + ", pwd=" + pwd + ", roles=" + roles
				+ "]";
	}
	
}
