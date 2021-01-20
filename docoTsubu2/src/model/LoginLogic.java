package model;

public class LoginLogic {
	public boolean execute(User user) {
		String passward = user.getPass();
		if(passward.equals("1234")) {
			return true;
		}else {
			return false;
		}
	}
}
