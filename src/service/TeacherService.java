package service;

import bean.Teacher;
import dao.TeacherDao;

import java.util.List;

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
        if (teacherDao.addTeacher(teacher)) {
            return true;
        }else{
            return false;
        }
    }
    public List<Teacher> queryAllTeachers(){
        TeacherDao teacherDao = new TeacherDao();
        List<Teacher> teacherList = teacherDao.queryAllTeachers();
        if(teacherList != null && teacherList.size()>0){
            return teacherList;
        }
        return null;
    }

    public Teacher queryTeacher(int teacherID) {
        TeacherDao teacherDao = new TeacherDao();
        Teacher teacher = teacherDao.queryTeacher(teacherID);
        if(teacher != null){
            return teacher;
        }
        return null;
    }

    public void updateTeacherTitle(int teacherID, String teacherTitle) {
        TeacherDao teacherDao = new TeacherDao();
        teacherDao.updateTeacherTitle(teacherID,teacherTitle);
    }
}
