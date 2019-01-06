package web;

import bean.Teacher;
import service.TeacherService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddTeacherServlet",urlPatterns = "/pages/addteacher")
public class AddTeacherServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Teacher teacher = new Teacher();
        teacher.setName(request.getParameter("teacher_name"));
        teacher.setSex(Integer.parseInt(request.getParameter("teacher_sex")));
        teacher.setBirthplace(request.getParameter("teacher_birthplace"));
        teacher.setBirthday(request.getParameter("teacher_birthday"));
        teacher.setAdmission_time(request.getParameter("teacher_admissionTime"));
        teacher.setJob_title(request.getParameter("teacher_title"));
        teacher.setJob_type(Integer.parseInt(request.getParameter("teacher_type")));
        teacher.setDep_no(Integer.parseInt(request.getParameter("teacher_department")));
        teacher.setSalary(Float.parseFloat(request.getParameter("teacher_salary")));
        teacher.setSkill(request.getParameter("teacher_skill"));

        TeacherService teacherService = new TeacherService();
        if (teacherService.addTeacher(teacher)) {
            request.setAttribute("teacher_name",teacher.getName());
            request.setAttribute("teacher_title",teacher.getJob_title());
            request.setAttribute("teacher_admissionTime",teacher.getAdmission_time());
            request.getRequestDispatcher("addteacher_success.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("addteacher_fail.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
