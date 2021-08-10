package model;

/**
 *
 * @author ACER
 */
public class Department {
    private int ID;
    private String dept_name;
    private String dept_description;

    public Department() {
    }

    public Department(int ID, String dept_name, String dept_description) {
        this.ID = ID;
        this.dept_name = dept_name;
        this.dept_description = dept_description;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getDept_description() {
        return dept_description;
    }

    public void setDept_description(String dept_description) {
        this.dept_description = dept_description;
    }

    @Override
    public String toString() {
        return "Department{" + "ID=" + ID + ", dept_name=" + dept_name + ", dept_description=" + dept_description + '}';
    }
    
    
}
