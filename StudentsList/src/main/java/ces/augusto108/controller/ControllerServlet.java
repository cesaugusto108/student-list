package ces.augusto108.controller;

import ces.augusto108.model.Dao;
import ces.augusto108.model.entities.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ControllerServlet extends HttpServlet {
    private static final long serialVersionUID = -1940621868147929234L;

    Student student = new Student();
    Dao dao = new Dao();

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
            ) throws ServletException {
        switch (request.getServletPath()) {
            case "/Students":
                listStudents(request, response);
                break;
            default:
                try {
                    response.sendRedirect("/Students");
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
        }
    }

    public void listStudents(
            HttpServletRequest request,
            HttpServletResponse response
    ) {
        List<Student> list = dao.listStudents();

        request.setAttribute("students", list);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }
}
