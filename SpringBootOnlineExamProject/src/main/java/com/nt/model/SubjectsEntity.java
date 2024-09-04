package com.nt.model;

public class SubjectsEntity {

	private String key;
	private Integer value;
	public SubjectsEntity() {
		// TODO Auto-generated constructor stub
	}
	public SubjectsEntity(String key, Integer value) {
		super();
		this.key = key;
		this.value = value;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public Integer getValue() {
		return value;
	}
	public void setValue(Integer value) {
		this.value = value;
	}
	@Override
	public String toString() {
		return "SubjectsEntity [key=" + key + ", value=" + value + "]";
	}
	
}
