package ces.augusto108.model;

import ces.augusto108.model.entities.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Dao {

    private Connection connect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            return DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/StudentsList?useTimeZone=true&serverTimeZone=UTC",
                    "root",
                    "1234"
            );
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Student> list() {
        String select = "SELECT * FROM Students ORDER BY STUDENT_NAME";

        try (Connection connection = connect()) {
            PreparedStatement preparedStatement = connection.prepareStatement(select);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Student> list = new ArrayList<>();

            while (resultSet.next()) {
                list.add(new Student(
                        resultSet.getString(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getString(6)
                ));
            }

            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void delete(Student student) {
        String delete = "DELETE FROM Students WHERE ID = ?";

        try (Connection connection = connect()) {
            PreparedStatement preparedStatement = connection.prepareStatement(delete);

            preparedStatement.setString(1, student.getId());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void add(Student student) {
        String add = "INSERT INTO Students " +
                "(STUDENT_NAME, EMAIL, TELEPHONE, STUDENT_ID, REGISTRATION) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = connect()) {
            PreparedStatement preparedStatement = connection.prepareStatement(add);

            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getEmail());
            preparedStatement.setString(3, student.getTelephone());
            preparedStatement.setString(4, student.getStudentId());
            preparedStatement.setString(5, student.getRegistration());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Student select(String id) {
        String select = "SELECT * FROM Students WHERE ID = ?";

        try (Connection connection = connect()) {
            PreparedStatement preparedStatement = connection.prepareStatement(select);

            preparedStatement.setString(1, id);

            ResultSet resultSet = preparedStatement.executeQuery();

            Student student = new Student();

            while (resultSet.next()) {
                student.setId(resultSet.getString(1));
                student.setName(resultSet.getString(2));
                student.setEmail(resultSet.getString(3));
                student.setTelephone(resultSet.getString(4));
                student.setStudentId(resultSet.getString(5));
                student.setRegistration(resultSet.getString(6));
            }

            return student;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void edit(Student student) {
        String edit =
                "UPDATE Students " +
                        "SET STUDENT_NAME = ?, EMAIL = ?, TELEPHONE = ?, STUDENT_ID = ?, REGISTRATION = ? " +
                        "WHERE ID = ?";

        try (Connection connection = connect()) {
            PreparedStatement preparedStatement = connection.prepareStatement(edit);

            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getEmail());
            preparedStatement.setString(3, student.getTelephone());
            preparedStatement.setString(4, student.getStudentId());
            preparedStatement.setString(5, student.getRegistration());
            preparedStatement.setString(6, student.getId());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Student> search(String name) {
        String search = "SELECT * FROM Students WHERE STUDENT_NAME LIKE ? ORDER BY STUDENT_NAME";

        try (Connection connection = connect()) {
            PreparedStatement preparedStatement = connection.prepareStatement(search);

            preparedStatement.setString(1, "%" + name + "%");

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Student> studentList = new ArrayList<>();

            while (resultSet.next()) {
                studentList.add(new Student(
                        resultSet.getString(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getString(6)
                ));
            }

            return studentList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
