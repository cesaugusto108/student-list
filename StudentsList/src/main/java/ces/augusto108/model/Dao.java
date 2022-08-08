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

    public List<Student> listStudents() {
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
}
