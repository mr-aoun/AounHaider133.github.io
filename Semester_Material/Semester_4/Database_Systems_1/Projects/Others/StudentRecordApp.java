import javafx.application.Application;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ProgressBar;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.stage.Stage;

public class StudentRecordApp extends Application {
    private Label attendanceLabel;
    private ProgressBar attendanceProgressBar;
    private VBox recordBox;

    @Override
    public void start(Stage primaryStage) {
        BorderPane root = new BorderPane();
        root.setStyle("-fx-background-color: #F8F8FF;");

       

        // Add student record box
        addRecordBox(root);

        // Add attendance progress bar and label
        addAttendancePane(root);
		
        // Add exit button
        addExitButton(root);
        
		Label uniLabel = new Label("COMSATS UNIVERSITY OF INFORMATION TECHNOLOGY");
		uniLabel.setStyle("-fx-font-size: 13px; -fx-text-fill: green; -fx-font-weight:700; -fx-margin-top:10px; -fx-text-align:center; -fx-underline:true;");
		uniLabel.setAlignment(Pos.TOP_CENTER);
		root.setTop(uniLabel);
		
        Scene scene = new Scene(root, 550, 300);
        primaryStage.setTitle("Student Record App");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    private void addAttendancePane(BorderPane root) {
        // Create attendance progress bar
        attendanceProgressBar = new ProgressBar(0.8);
        attendanceProgressBar.setPrefWidth(300);

        // Create attendance label
        attendanceLabel = new Label("Attendance: 80%");
        attendanceLabel.setFont(Font.font("Arial", FontWeight.BOLD, 16));
        attendanceLabel.setTextFill(Color.GREEN);

        // Create attendance pane
        VBox attendancePane = new VBox(5);
        attendancePane.setAlignment(Pos.BOTTOM_CENTER);
        attendancePane.getChildren().addAll(attendanceProgressBar, attendanceLabel);

        // Add attendance pane to top of root pane
        root.setBottom(attendancePane);
		
		
    }

    private void addRecordBox(BorderPane root) {
        // Create student record box
        recordBox = new VBox(5);
        recordBox.setPrefSize(300, 200);
        recordBox.setStyle("-fx-background-color: #F8F8FF; -fx-padding: 20px;");
        recordBox.setAlignment(Pos.CENTER);

        // Add student record attributes
        addRecordAttribute("Name", "Aoun-Haider");
        addRecordAttribute("Age", "21");
        addRecordAttribute("Gender", "Male");
        addRecordAttribute("Email", "AounHaider@cuilahore.edu.pk");

        // Create attendance progress bar
        attendanceProgressBar = new ProgressBar(0.8);
        attendanceProgressBar.setPrefWidth(200);

        // Create attendance label
        attendanceLabel = new Label("Attendance: ");
		attendanceLabel.setFont(Font.font("Arial", FontWeight.BOLD, 14));
        attendanceLabel.setTextFill(Color.BLUE);
		//attendanceLabel.setStyle("-fx-font-weight:700;");
        //attendanceLabel.setFont(Font.font("Comic Sans MS", 14));
        
		
		HBox hb = new HBox();
		hb.getChildren().addAll(attendanceLabel,attendanceProgressBar);
		
		recordBox.getChildren().addAll(hb);
		
        // Add record box to center of root pane
        root.setCenter(recordBox);
    }

    private void addExitButton(BorderPane root) {
        // Create exit button
        Button exitButton = new Button("Exit");
		exitButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand; -fx-margin:0px 0px 20px 0px;");
        exitButton.setOnMouseEntered(e -> exitButton.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
        exitButton.setOnMouseExited(e -> exitButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
		
        exitButton.setOnAction(e -> System.exit(0));

        // Create exit button pane
        HBox exitButtonPane = new HBox();
        exitButtonPane.setAlignment(Pos.CENTER);
        exitButtonPane.getChildren().add(exitButton);

        
        // Add exit button pane to bottom of root pane
        root.setBottom(exitButtonPane);
    }

    private void addRecordAttribute(String attributeName, String attributeValue) {
        // Create label for attribute name
        Label attributeLabel = new Label(attributeName + ": ");
        attributeLabel.setFont(Font.font("Arial", FontWeight.BOLD, 14));
        attributeLabel.setTextFill(Color.BLUE);

        // Create label for attribute value
        Label attributeValueLabel = new Label(attributeValue);
        attributeValueLabel.setFont(Font.font("Comic Sans MS", 14));

        // Create attribute pane
        HBox attributePane = new HBox(5);
        attributePane.setAlignment(Pos.CENTER_LEFT);
        attributePane.getChildren().addAll(attributeLabel, attributeValueLabel);

        
        // Add attribute pane to record box
        recordBox.getChildren().add(attributePane);
	}
}