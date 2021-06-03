package com.mac.test.dtos;

public class HelloDto {
	
	private String name;
	private String id;
	
	public HelloDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HelloDto(String name, String id) {
		super();
		this.name = name;
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "HelloDto [name=" + name + ", id=" + id + "]";
	}
	
}
