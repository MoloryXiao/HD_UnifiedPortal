package service;

import bean.Teacher;
import dao.TeacherDao;

public class TeacherService {
    public boolean addTeacher(Teacher teacher){
        if (teacher.getJob_title().equals("-1")) {
            System.out.println("teacher.getJob_title() is null");
            return false;
        }
        if(teacher.getJob_type() == -1){
            System.out.println("teacher.getJob_type() is null");
            return false;
        }
        if(teacher.getDep_no() == -1){
            System.out.println("teacher.getDep_no() is null");
            return false;
        }

        TeacherDao teacherDao = new TeacherDao();
        if (teacherDao.addStudent(teacher)) {
            return true;
        }else{
            return false;
        }
    }
}
