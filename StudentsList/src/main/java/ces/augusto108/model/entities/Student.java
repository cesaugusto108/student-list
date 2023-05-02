package ces.augusto108.model.entities;

import java.io.Serializable;

public final class Student extends BaseEntity {
    private String name;
    private String email;
    private String telephone;
    private String studentId;
    private String registration;

    public Student() {
    }

    public Student(String id, String name, String email, String telephone, String studentId, String registration) {
        super(id);
        this.name = name;
        this.email = email;
        this.telephone = telephone;
        this.studentId = studentId;
        this.registration = registration;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getRegistration() {
        return registration;
    }

    public void setRegistration(String registration) {
        this.registration = registration;
    }
}
