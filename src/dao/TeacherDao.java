package dao;

import bean.Teacher;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class TeacherDao {
    public boolean addTeacher(Teacher teacher){
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String insertSQL = "INSERT INTO Teacher VALUES(null,?,?,?,?,?,?,?,?,?,1,?)";
        int row = 0;
        try {
            row = queryRunner.update(insertSQL,teacher.getName(),teacher.getSex(),teacher.getBirthday(),teacher.getBirthplace(),
                    teacher.getAdmission_time(),teacher.getJob_title(),teacher.getSalary(),teacher.getSkill(),
                    teacher.getJob_type(),teacher.getDep_no());
            dataSource.close();
        } catch (SQLException e) {
            dataSource.close();
            e.printStackTrace();
            return false;
        }
        if (row > 0) {
            return true;
        }else{
            return false;
        }
    }

    public List<Teacher> queryAllTeachers() {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String sql = "SELECT * FROM Teacher";
        try {
            List<Teacher> teacherList = queryRunner.query(sql,new BeanListHandler<Teacher>(Teacher.class));
            dataSource.close();
            return teacherList;
        } catch (SQLException e) {
            e.printStackTrace();
            dataSource.close();
        }
        return null;
    }

    public Teacher queryTeacher(int teacherID) {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String sql = "SELECT * FROM Teacher WHERE no = ?";
        try {
            Teacher teacher = queryRunner.query(sql,new BeanHandler<>(Teacher.class),teacherID);
            dataSource.close();
            return teacher;
        } catch (SQLException e) {
            dataSource.close();
            e.printStackTrace();
        }
        return null;
    }

    public boolean updateTeacherTitle(int teacherID, String teacherTitle) {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String sql = "UPDATE Teacher SET job_title = ? WHERE no = ? ";
        int row = 0;
        try {
            row = queryRunner.update(sql,teacherTitle,teacherID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        dataSource.close();
        if(row > 0)
            return true;
        else
            return false;
    }

    public boolean updateTeacherType(int teacherID, int teacherType) {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String sql = "UPDATE Teacher SET job_type = ? WHERE no = ? ";
        int row = 0;
        try {
            row = queryRunner.update(sql,teacherType,teacherID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        dataSource.close();
        if(row > 0)
            return true;
        else
            return false;
    }
}
