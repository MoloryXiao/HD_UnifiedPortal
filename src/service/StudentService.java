package service;

import bean.Student;
import dao.StudentDao;

public class StudentService {
    public boolean addStu(Student stu){
        StudentDao studentDao = new StudentDao();
        if(studentDao.addStudent(stu)){
            return true;
        }else{
            return false;
        }
    }
}
