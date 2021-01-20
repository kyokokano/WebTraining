package model;

import java.io.Serializable;

public class User implements Serializable{
	private String id;
	private String passward;
	private String name;
	public User() {}
	public User(String id,String passward,String name) {
		this.id=id;
		this.passward=passward;
		this.name=name;
	}
	public String getId() {
		return this.id;
	}
	public String getPassward() {
		return this.passward;
	}
	public String getName() {
		return this.name;
	}
}
