package web;

import bean.LivingCostTeacher;
import bean.Teacher;
import service.LifeInfoService;
import service.TeacherService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LifeInfoServlet",urlPatterns = "/pages/life")
public class LifeInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int teacherID = 200165;

        TeacherService teacherService = new TeacherService();
        LifeInfoService lifeInfoService = new LifeInfoService();

        Teacher teacher = teacherService.queryTeacher(teacherID);
        if (teacher != null) {
            request.setAttribute("teacher",teacher);
        }

        LivingCostTeacher livingCostTeacher = lifeInfoService.getLivingCostByTeacherID(teacherID);
        if (livingCostTeacher != null) {
            request.setAttribute("livingCost",livingCostTeacher);
        }
        request.getRequestDispatcher("life.jsp").forward(request,response);
    }
}

