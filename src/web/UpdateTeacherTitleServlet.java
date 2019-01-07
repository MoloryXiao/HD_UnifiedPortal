package web;

import service.TeacherService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateTeacherTitleServlet",urlPatterns = "/pages/updateTeacherTitle")
public class UpdateTeacherTitleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int teacherID = Integer.parseInt(request.getParameter("teacher_no"));
        String teacherTitle = request.getParameter("teacher_title");
        int teacherType = Integer.parseInt(request.getParameter("teacher_type"));
        TeacherService teacherService = new TeacherService();
        teacherService.updateTeacherTitle(teacherID,teacherTitle);
        teacherService.updateTeacherType(teacherID,teacherType);
        response.sendRedirect("setteacher");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
