package dao;

import bean.Student;
import bean.Teacher;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class TeacherDao {
    public boolean addStudent(Teacher teacher){
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String insertSQL = "INSERT INTO Teacher VALUES(null,?,?,?,?,?,?,?,?,?,1,?)";
        int row = 0;
        try {
            row = queryRunner.update(insertSQL,teacher.getName(),teacher.getSex(),teacher.getBirthday(),teacher.getBirthplace(),
                    teacher.getAdmission_time(),teacher.getJob_title(),teacher.getSalary(),teacher.getSkill(),
                    teacher.getJob_type(),teacher.getDep_no());
        } catch (SQLException e) {
            System.out.println("dao:1 level error.");
            e.printStackTrace();
            return false;
        }
        if (row > 0) {
            return true;
        }else{
            System.out.println("dao:2 level error.");
            return false;
        }
    }

    public List<Teacher> queryTeacher() {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String sql = "SELECT * FROM Teacher";
        try {
            List<Teacher> teacherList = queryRunner.query(sql,new BeanListHandler<Teacher>(Teacher.class));
            return teacherList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
