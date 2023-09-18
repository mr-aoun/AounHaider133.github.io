import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.scene.Scene;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class StudentTableExample extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) {
        // Create some sample student data
        Student[] students = new Student[]{
                new Student("John", "Doe", 22, "Male", "john.doe@example.com"),
                new Student("Jane", "Doe", 20, "Female", "jane.doe@example.com"),
                new Student("Bob", "Smith", 23, "Male", "bob.smith@example.com"),
                new Student("Alice", "Jones", 21, "Female", "alice.jones@example.com"),
                new Student("Dave", "Brown", 24, "Male", "dave.brown@example.com")
        };

        // Create a table view to display the student data
		@SuppressWarnings("unchecked")
        TableView<Student> table = new TableView<>();
        table.setItems(FXCollections.observableArrayList(students));

        // Create columns for each student attribute
        TableColumn<Student, String> firstNameCol = new TableColumn<>("First Name");
        firstNameCol.setCellValueFactory(new PropertyValueFactory<>("firstName"));

        TableColumn<Student, String> lastNameCol = new TableColumn<>("Last Name");
        lastNameCol.setCellValueFactory(new PropertyValueFactory<>("lastName"));

        TableColumn<Student, Integer> ageCol = new TableColumn<>("Age");
        ageCol.setCellValueFactory(new PropertyValueFactory<>("age"));

        TableColumn<Student, String> genderCol = new TableColumn<>("Gender");
        genderCol.setCellValueFactory(new PropertyValueFactory<>("gender"));

        TableColumn<Student, String> emailCol = new TableColumn<>("Email");
        emailCol.setCellValueFactory(new PropertyValueFactory<>("email"));

        // Add the columns to the table view
        table.getColumns().addAll(firstNameCol, lastNameCol, ageCol, genderCol, emailCol);

        // Create a layout container to hold the table view
        VBox layout = new VBox();
        layout.getChildren().addAll(table);

        // Create a scene with the layout container
        Scene scene = new Scene(layout);

        // Set the scene on the stage and show it
        stage.setScene(scene);
        stage.show();
    }

    // Define a Student class with the required attributes
    private static class Student {
        private String firstName;
        private String lastName;
        private int age;
        private String gender;
        private String email;

        public Student(String firstName, String lastName, int age, String gender, String email) {
            this.firstName = firstName;
            this.lastName = lastName;
            this.age = age;
            this.gender = gender;
            this.email = email;
        }

        public String getFirstName() {
            return firstName;
        }

        public String getLastName() {
            return lastName;
        }

        public int getAge() {
            return age;
        }

        public String getGender() {
            return gender;
        }

        public String getEmail() {
            return email;
        }
    }
}
