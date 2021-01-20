package model;

import java.io.Serializable;

public class SiteEV implements Serializable{
	private int like;
	private int deslike;
	public SiteEV() {
		like = 0;
		deslike = 0;
	}
	public int getLike() {
		return this.like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public int getDeslike() {
		return this.deslike;
	}
	public void setDeslike(int deslike) {
		this.deslike = deslike;
	}
}
