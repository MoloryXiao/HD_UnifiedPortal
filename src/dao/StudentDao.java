package dao;

import bean.Student;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class StudentDao {
    public boolean addStudent(Student stu){
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String insertSQL = "INSERT INTO Student VALUES(null,?,?,?,?,?,?,1)";
        int row = 0;
        try {
            row = queryRunner.update(insertSQL,stu.getName(),stu.getSex(),stu.getBirthday(),stu.getBirthplace(),
                    stu.getAdmissionTime(),stu.getClassNo());
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        if (row > 0) {
            return true;
        }else{
            return false;
        }
    }
}
