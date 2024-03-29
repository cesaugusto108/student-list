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

public class Controller extends HttpServlet {
    @Serial
    private static final long serialVersionUID = -1940621868147929234L;

    Student student = new Student();
    Dao dao = new Dao();

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) {
        switch (request.getServletPath()) {
            case "/Students" -> showList(request, response);
            case "/confirm" -> confirmDelete(request, response);
            case "/delete" -> delete(request, response);
            case "/add" -> add(request, response);
            case "/search" -> search(request, response);
            default -> {
                try {
                    response.sendRedirect("Students");
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    public void showList(
            HttpServletRequest request,
            HttpServletResponse response
    ) {
        List<Student> list = dao.list();

        request.setAttribute("students", list);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");

        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void confirmDelete(
            HttpServletRequest request,
            HttpServletResponse response
    ) {
        try {
            student.setId(request.getParameter("id"));
            request.setAttribute("student", student);

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("delete.jsp");
            requestDispatcher.forward(request, response);
        } catch (IOException | ServletException e) {
            throw new RuntimeException(e);
        }
    }

    public void delete(
            HttpServletRequest request,
            HttpServletResponse response
    ) {
        student.setId(request.getParameter("id"));

        dao.delete(student);

        try {
            response.sendRedirect("Students");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void add(
            HttpServletRequest request,
            HttpServletResponse response
    ) {
        student.setName(request.getParameter("name"));
        student.setEmail(request.getParameter("email"));
        student.setTelephone(request.getParameter("telephone"));
        student.setStudentId(request.getParameter("studentId"));
        student.setRegistration(request.getParameter("registration"));

        dao.add(student);

        try {
            response.sendRedirect("Students");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void search(
            HttpServletRequest request,
            HttpServletResponse response
    ) {
        List<Student> studentList = dao.search(request.getParameter("search"));

        request.setAttribute("searchResult", studentList);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index3.jsp");

        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }
}
