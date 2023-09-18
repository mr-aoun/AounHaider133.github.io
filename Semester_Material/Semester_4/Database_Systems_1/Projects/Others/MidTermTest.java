//package exam.midTerm.lab;

import java.util.ArrayList;
import java.lang.System;

class Course {
    private String courseTitle;
    private int courseCreditHrz;

    public Course(String courseTitle, int courseCreditHrz) {
        this.courseTitle = courseTitle;
        this.courseCreditHrz = courseCreditHrz;
    }

    // Getter and Setter methods
    public String getCourseTitle() {
        return courseTitle;
    }

    public void setCourseTitle(String courseTitle) {
        this.courseTitle = courseTitle;
    }

    public int getCourseCreditHrz() {
        return courseCreditHrz;
    }

    public void setCourseCreditHrz(int courseCreditHrz) {
        this.courseCreditHrz = courseCreditHrz;
    }
}

class Faculty {
    private int id;
    private String name;
    private ArrayList<Course> courses;
    private double salary;

    public Faculty(int id, String name, double salary) {
        this.id = id;
        this.name = name;
        this.salary = salary;
        courses = new ArrayList<Course>();
    }

    // Getter and Setter methods
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ArrayList<Course> getCourses() {
        return courses;
    }

    public void setCourses(ArrayList<Course> courses) {
        this.courses = courses;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public double calculateSalary() {
        return salary;
    }
}

class PermanentFaculty extends Faculty {
    private double basicSalary;
    private double allowances;

    public PermanentFaculty(int id, String name, double salary, double basicSalary, double allowances) {
        super(id, name, salary);
        this.basicSalary = basicSalary;
        this.allowances = allowances;
    }

    // Getter and Setter methods
    public double getBasicSalary() {
        return basicSalary;
    }

    public void setBasicSalary(double basicSalary) {
        this.basicSalary = basicSalary;
    }

    public double getAllowances() {
        return allowances;
    }

    public void setAllowances(double allowances) {
        this.allowances = allowances;
    }

    @Override
    public double calculateSalary() {
        return basicSalary + allowances;
    }
}

class VisitingFaculty extends Faculty {
    private int hours;
    private double salaryPerHr;

    public VisitingFaculty(int id, String name, double salary, int hours, double salaryPerHr) {
        super(id, name, salary);
        this.hours = hours;
        this.salaryPerHr = salaryPerHr;
    }

    // Getter and Setter methods
    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public double getSalaryPerHr() {
        return salaryPerHr;
    }

    public void setSalaryPerHr(double salaryPerHr) {
        this.salaryPerHr = salaryPerHr;
    }

    @Override
    public double calculateSalary() {
        return hours * salaryPerHr;
    }
}

public class MidTermTest {
    public static void main(String[] args) {
        java.util.Scanner sc = new java.util.Scanner(System.in);
        System.out.print("Enter the number of faculty members: ");
        int numFaculty = sc.nextInt(); // Consume newline character
		    Faculty[] facultyArr = new Faculty[numFaculty];

    for (int i = 0; i < numFaculty; i++) {
        System.out.println("Enter the details for faculty member " + (i + 1) + ":");
        System.out.print("Enter 1 for Permanent Faculty, 2 for Visiting Faculty: ");
        int choice = sc.nextInt();
        sc.nextLine(); // Consume newline character

        System.out.print("Enter ID: ");
        int id = sc.nextInt();
        sc.nextLine(); // Consume newline character
        System.out.print("Enter Name: ");
        String name = sc.nextLine();
        System.out.print("Enter Salary: ");
        double salary = sc.nextDouble();
        sc.nextLine(); // Consume newline character

        if (choice == 1) {
            System.out.print("Enter Basic Salary: ");
            double basicSalary = sc.nextDouble();
            sc.nextLine(); // Consume newline character
            System.out.print("Enter Allowances: ");
            double allowances = sc.nextDouble();
            sc.nextLine(); // Consume newline character

            facultyArr[i] = new PermanentFaculty(id, name, salary, basicSalary, allowances);
        } else if (choice == 2) {
            System.out.print("Enter Hours: ");
            int hours = sc.nextInt();
            sc.nextLine(); // Consume newline character
            System.out.print("Enter Salary per Hour: ");
            double salaryPerHr = sc.nextDouble();
            sc.nextLine(); // Consume newline character

            facultyArr[i] = new VisitingFaculty(id, name, salary, hours, salaryPerHr);
        } else {
            System.out.println("Invalid choice. Skipping faculty member.");
        }

        System.out.print("Enter the number of courses: ");
        int numCourses = sc.nextInt();
        sc.nextLine(); // Consume newline character

        for (int j = 0; j < numCourses; j++) {
            System.out.println("Enter the details for Course " + (j + 1) + ":");
            System.out.print("Enter Course Title: ");
            String courseTitle = sc.nextLine();
            System.out.print("Enter Course Credit Hours: ");
            int courseCreditHrz = sc.nextInt();
            sc.nextLine(); // Consume newline character

            Course course = new Course(courseTitle, courseCreditHrz);
            facultyArr[i].getCourses().add(course);
        }
    }

    sc.close();

    // Displaying data and salary
    displayData(facultyArr);
    displaySalary(facultyArr);
}

public static void displayData(Faculty[] facultyArr) {
    System.out.println("Faculty Data:");
    for (Faculty faculty : facultyArr) {
        System.out.println("ID: " + faculty.getId());
        System.out.println("Name: " + faculty.getName());
        System.out.println("Courses: ");
        ArrayList<Course> courses = faculty.getCourses();
        for (Course course : courses) {
            System.out.println("  - " + course.getCourseTitle() + " (" + course.getCourseCreditHrz() + " credit hours)");
        }
        System.out.println();
    }
}

public static void displaySalary(Faculty[] facultyArr) {
    System.out.println("Faculty Salary:");
    for (Faculty faculty : facultyArr) {
        System.out.println("ID: " + faculty.getId());
        System.out.println("Name: " + faculty.getName());
        System.out.println("Salary: $" + faculty.calculateSalary());
        System.out.println();
    }
}
}
