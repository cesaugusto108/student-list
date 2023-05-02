package ces.augusto108.controller;

import ces.augusto108.model.Dao;
import ces.augusto108.model.entities.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Serial;
import java.util.List;

public class EditController extends HttpServlet {
    @Serial
    private static final long serialVersionUID = 2576431247695925371L;

    Student student = new Student();
    Dao dao = new Dao();

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) {
        switch (request.getServletPath()) {
            case "/select" -> select(request, response);
            case "/edit" -> edit(request, response);
            default -> {
                try {
                    response.sendRedirect("Students");
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    public void select(
            HttpServletRequest request,
            HttpServletResponse response
    ) {
        List<Student> list = dao.list();
        student = dao.select(request.getParameter("id"));

        request.setAttribute("students", list);
        request.setAttribute("student", student);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index2.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void edit(
            HttpServletRequest request,
            HttpServletResponse response
    ) {
        student.setId(request.getParameter("id"));
        student.setName(request.getParameter("name"));
        student.setEmail(request.getParameter("email"));
        student.setTelephone(request.getParameter("telephone"));
        student.setStudentId(request.getParameter("studentId"));
        student.setRegistration(request.getParameter("registration"));

        dao.edit(student);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Students");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }
}
