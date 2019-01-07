package dao;

import bean.User;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class LoginDao {
    public boolean checkID(String username, String password) {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String sql = "SELECT * FROM LoginVerify WHERE username = ? AND password = ?";
        try {
            List<User> userList = queryRunner.query(sql, new BeanListHandler<>(User.class),username,password);
            if (userList != null && userList.size() > 0) {
                dataSource.close();
                return true;
            }
        } catch (SQLException e) {
            dataSource.close();
            e.printStackTrace();
        }
        return false;
    }
}
