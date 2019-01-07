package service;

import dao.LoginDao;

public class LoginService {
    public boolean checkID(String username, String password) {
        if(username.isEmpty()) return false;
        if(password.isEmpty()) return false;
        LoginDao loginDao = new LoginDao();
        boolean verifyRes = loginDao.checkID(username,password);
        if(verifyRes)
            return true;
        else
            return false;
    }
}
