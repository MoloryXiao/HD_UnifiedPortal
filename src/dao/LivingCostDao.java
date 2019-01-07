package dao;

import bean.LivingCostTeacher;
import bean.Teacher;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class LivingCostDao {
    public LivingCostTeacher getLivingCostByTeacherID(int teacherID) {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String sql = "SELECT * FROM LivingCostTeacher WHERE teacher_no = ?";
        try {
            LivingCostTeacher livingCostTeacher = queryRunner.query(sql,new BeanHandler<>(LivingCostTeacher.class),teacherID);
            dataSource.close();
            return livingCostTeacher;
        } catch (SQLException e) {
            e.printStackTrace();
            dataSource.close();
        }
        return null;
    }
}
