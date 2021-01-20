package model;

public class SiteEVLogic {
	public void like(SiteEV site) {
		int count = site.getLike();
		site.setLike(count+1);
	}
	public void deslike(SiteEV site) {
		int count = site.getDeslike();
		site.setDeslike(count+1);
	}
}
