package web;

import bean.Teacher;
import service.TeacherService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GetTeacherServlet",urlPatterns = "/pages/setteacher")
public class GetTeacherServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        TeacherService teacherService = new TeacherService();
        List<Teacher>  teacherList = teacherService.queryTeacher();
        if (teacherList != null) {
            request.setAttribute("teacherList",teacherList);
            request.getRequestDispatcher("setteacher.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("setteacher.jsp").forward(request,response);
        }
    }
}
