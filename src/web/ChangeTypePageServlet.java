package web;

import bean.Teacher;
import service.TeacherService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ChangeTypePageServlet",urlPatterns = "/pages/changeType_page")
public class ChangeTypePageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int teacherID = Integer.parseInt(request.getParameter("id"));
        TeacherService teacherService = new TeacherService();
        Teacher teacher = teacherService.queryTeacher(teacherID);
        if (teacher != null) {
            request.setAttribute("teacher",teacher);
            request.getRequestDispatcher("changetype.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("changetype.jsp").forward(request,response);
        }
    }
}
