package web;

import bean.Student;
import service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "AddStudent",urlPatterns = "/addstu")
public class AddStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        // 封装form表单提交上来的数据到Student对象中
        Student stu = new Student();
        stu.setName(request.getParameter("stu_name"));
        stu.setSex(Integer.parseInt(request.getParameter("stu_sex")));
        stu.setBirthplace(request.getParameter("stu_birthplace"));
        stu.setBirthday(request.getParameter("stu_birthday"));
        stu.setAdmissionTime(request.getParameter("stu_admissiondate"));
        stu.setClassNo(Integer.parseInt(request.getParameter("stu_class")));

        // 使用学生服务类处理业务逻辑
        StudentService studentService = new StudentService();
        if (studentService.addStu(stu)) {
            request.setAttribute("sname",stu.getName());
            request.setAttribute("admissionTime",stu.getAdmissionTime());
            request.getRequestDispatcher("pages/addstu_success.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("pages/addstu_fail.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
