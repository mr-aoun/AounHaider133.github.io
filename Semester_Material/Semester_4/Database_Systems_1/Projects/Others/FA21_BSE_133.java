/*
Name: Aoun-Haider
ID: FA21-BSE-133
Section: A
Subject: Database Systems
Submitted to: Sir Abdull Qayum
Date: 25-03-2022

-------------------------------
Some points related checking:
-------------------------------
 I have created this assignment using javafx and connected to database 'CUI' using 
 jdbc availabe in java with mysql. Implement this via cmd and notepad++. To check 
 Assignment, your system must have mysql and javafx installed. To run on cmd:
 
 javac -cp .;"E:\Semester#04\Database System I\Java\mysql-connector-j-8.0.32.jar"
 --module-path "E:\Semester#04\Database System I\Java\Javafx\javafx-sdk-20\lib" 
 --add-modules javafx.controls,javafx.fxml HelloApplication.java
*/

import java.sql.*;
import java.lang.System;
import javafx.geometry.*;
import javafx.stage.Stage;
import javafx.scene.Scene;
import java.io.IOException;
import javafx.scene.text.*;
import javafx.application.*;
import javafx.scene.layout.*;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.*;
import javafx.scene.paint.Color;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.layout.BorderPane;
import javafx.scene.control.Alert.AlertType;

public class FA21_BSE_133 extends Application {
	
	private Label attendanceLabel;
	private String tuple[] =new String[6];
    private ProgressBar attendanceProgressBar;
    private VBox recordBox;
	private Scene scene1,scene2,scene3,scene4,scene5,scene6;
	private String firstName,lastName,gender,errorMessage,pass="null",confirmPass="null",hint="null";
	private int age;
	private String w1="Empty",w2="Empty",w3="Empty",Old="",New="";
	private PasswordField passwordField,confirmPasswordField;
	private User users = new User("Aoun", "Haider", 20, "Male", "as55@@11","Light");
	private BorderPane root;
	private TextField UserNameField;
	private PasswordField newPasswordField;
	
	//Forget password components
	private TextField hintField1,hintField2;
	private Label hintLabel1,hintLabel2;
	private Button forgetPassword,changePassword,check;
	
    @Override
    public void start(Stage stage) throws IOException {
		
		users.insert("Areez", "Khan", 19, "Male", "bs58@#22","Heavy");
		
        Label welcomeLabel = new Label("Welcome to the CUI Portal");
        welcomeLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: green; -fx-font-weight:700");

        Button signInButton = new Button("Sign-in");
        signInButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        signInButton.setOnMouseEntered(e -> signInButton.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
        signInButton.setOnMouseExited(e -> signInButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));

        Button signUpButton = new Button("Sign-up");
        signUpButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        signUpButton.setOnMouseEntered(e -> signUpButton.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
        signUpButton.setOnMouseExited(e -> signUpButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));

        Label alreadyAccount = new Label("Already have an account!");
        alreadyAccount.setStyle("-fx-underline: true; -fx-color:blue;  -fx-cursor: hand;");
		
		//Back button instruction
        Button backButton1 = new Button("<-");
		backButton1.setAlignment(Pos.TOP_LEFT);
		backButton1.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        backButton1.setOnMouseEntered(e -> backButton1.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
        backButton1.setOnMouseExited(e -> backButton1.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
		
		backButton1.setOnAction(new EventHandler<ActionEvent>()
		{
		  @Override
          public void handle(ActionEvent event)
		  {
			  stage.setScene(scene1);
		  }
		});
		
		//Back button instruction#02
        Button backButton = new Button("<-");
		backButton.setAlignment(Pos.TOP_LEFT);
		backButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        backButton.setOnMouseEntered(e -> backButton.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
        backButton.setOnMouseExited(e -> backButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
		
		backButton.setOnAction(new EventHandler<ActionEvent>()
		{
		  @Override
          public void handle(ActionEvent event)
		  {
			  stage.setScene(scene1);
		  }
		});
		
        HBox hbox1 = new HBox(welcomeLabel);
        hbox1.setAlignment(Pos.CENTER);
		hbox1.getChildren().addAll(backButton);

        HBox hbox2 = new HBox(signInButton, signUpButton);
        hbox2.setSpacing(20);
        hbox2.setAlignment(Pos.CENTER);

        HBox hbox3 = new HBox(alreadyAccount);
        hbox3.setAlignment(Pos.CENTER);

        VBox vbox = new VBox(20, hbox1, hbox2, hbox3);
        vbox.setStyle("-fx-background-color: #F8F8FF;");
        vbox.setAlignment(Pos.CENTER);

        scene1 = new Scene(vbox, 660, 300);

        stage.setScene(scene1);
        stage.setTitle("Comsats Portal");
        stage.show();
		
		//Second window
		signUpButton.setOnAction(new EventHandler<ActionEvent>() {
			@Override
			public void handle(ActionEvent event) {
				stage.setScene(scene2);
			}
		});
		
		Label loginDetailsLabel = new Label("Create Account");
        loginDetailsLabel.setStyle("-fx-underline:true; -fx-font-size: 18px; -fx-text-fill: green; -fx-font-weight:700");
        loginDetailsLabel.setAlignment(Pos.CENTER);
		
        Label firstNameLabel = new Label("First Name:");
		firstNameLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
        TextField firstNameField = new TextField();
		firstNameField.setMaxWidth(120);
		
		Label lastNameLabel = new Label("Last Name:");
		lastNameLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
        TextField lastNameField = new TextField();
		lastNameField.setMaxWidth(120);

        //Get Gender
        Label genderLabel = new Label("Gender");
		genderLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
        
        //Radio button
        RadioButton radioButton1 = new RadioButton("Male");
        RadioButton radioButton2 = new RadioButton("Female");

        ToggleGroup toggleGroup = new ToggleGroup();
        radioButton1.setToggleGroup(toggleGroup);
        radioButton2.setToggleGroup(toggleGroup);
        
		//Hint component
		Label hintLabel1 = new Label("Hint:");
		hintLabel1.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
        TextField hintField1 = new TextField();
		hintField1.setMaxWidth(120);
        
		//Get age
		Label ageLabel = new Label("Age:");
		ageLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
		
        // Create a Spinner with integer values
        Spinner<Integer> spinner = new Spinner<>();
        
        // Set the minimum and maximum values for the Spinner
        spinner.setValueFactory(new SpinnerValueFactory.IntegerSpinnerValueFactory(18, 32));
        spinner.setMaxWidth(120);
        // Set the initial value for the Spinner
        spinner.getValueFactory().setValue(18);
        		
        Label passwordLabel = new Label("Password:");
		passwordLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
        passwordField = new PasswordField();
		passwordField.setMaxWidth(120);
		
		passwordField.textProperty().addListener((observable, oldValue, newValue) -> {
         // Print the new value of the text property to the console
         pass = newValue;
        });
		
		Label confirmpasswordLabel = new Label("Confirm\nPassword:");
		confirmpasswordLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
        confirmPasswordField = new PasswordField();
        confirmPasswordField.setMaxWidth(120);

		confirmPasswordField.textProperty().addListener((observable, oldValue, newValue) -> {
         // Print the new value of the text property to the console
         confirmPass = newValue;
        });
		
        Label errorLabel = new Label();
		errorLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: red; -fx-font-weight:700");
        errorLabel.setStyle("-fx-text-fill: red;");
		
		Button submitButton = new Button("Submit");
		submitButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        submitButton.setOnMouseEntered(e -> submitButton.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
        submitButton.setOnMouseExited(e -> submitButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
		
		//Set action on submit button
		submitButton.setOnAction(new EventHandler<ActionEvent>(){
			@Override
		    public void handle(ActionEvent e)
			{
			   //Store values gathered from fields
			   firstName = firstNameField.getText();
               lastName = lastNameField.getText();
			   errorMessage = validatePassword();
               RadioButton selectedRadioButton = (RadioButton) toggleGroup.getSelectedToggle();
               gender = "";
			   hint = hintField1.getText();
               age = spinner.getValue();
			  if (selectedRadioButton != null) {
                 gender = selectedRadioButton.getText();
			  }
			  
			  if(firstName.isEmpty()||lastName.isEmpty() || passwordField.getText().isEmpty() || gender.isEmpty() || hint.equals("null") || hint.isEmpty())
			  {
				//Show error prompt
                Alert successAlert = new Alert(AlertType.ERROR);
                successAlert.setTitle("ERROR");
                successAlert.setHeaderText("All the fields are required!");
                successAlert.showAndWait();  
			  }
			  if(!(pass.equals(confirmPass)))
			  {
				//Show error prompt
                Alert successAlert = new Alert(AlertType.ERROR);
                successAlert.setTitle("ERROR");
                successAlert.setHeaderText("Actual password and confirm password must be same!!");
                successAlert.showAndWait(); 
			  }
			if(errorMessage!=null) {
                // Reset the password field and error label
                errorLabel.setVisible(true);
                errorLabel.setText(errorMessage);
            }
            if (errorMessage == null && !firstName.isEmpty()&& !lastName.isEmpty() && !passwordField.getText().isEmpty() && !gender.isEmpty() && pass.equals(confirmPass) && !hint.isEmpty()) {
                
                Alert errorAlert = new Alert(AlertType.INFORMATION);
                errorAlert.setTitle("SUCESS");
                errorAlert.setHeaderText("Record Submitted successfully!");
                errorAlert.showAndWait();
                // Reset the password field and error label
                users.insert(firstName,lastName,spinner.getValue(),gender,confirmPass,hint);
				passwordField.clear();
                errorLabel.setVisible(false);
	
				users.display();
				
				tuple = users.getRecord(firstName,lastName,confirmPass).split(" ");
				// Add student record box
				System.out.println(tuple[0]);
				System.out.println(tuple[1]);
				System.out.println(tuple[2]);
				System.out.println(tuple[3]);
				System.out.println(tuple[4]);
                addRecordBox(root,tuple[0],tuple[1],tuple[2],tuple[4],tuple[5]);
				stage.setScene(scene4);
            } 
		}
	});
	  HBox v = new HBox(backButton1);
	  v.setAlignment(Pos.TOP_LEFT);
		
      // Create the left side of the grid
      GridPane leftGrid = new GridPane();
      leftGrid.setVgap(5);
      leftGrid.setHgap(5);
      leftGrid.add(firstNameLabel, 0, 0);
      leftGrid.add(firstNameField, 1, 0);
      leftGrid.add(lastNameLabel, 0, 1);
      leftGrid.add(lastNameField, 1, 1);
      leftGrid.add(ageLabel, 0, 2);
      leftGrid.add(spinner, 1, 2);
      leftGrid.add(genderLabel, 0, 3);
      leftGrid.add(radioButton1, 1, 3);
      leftGrid.add(radioButton2, 1, 4);
      

      // Create the right side of the grid
      GridPane rightGrid = new GridPane();
      rightGrid.setVgap(10);
      rightGrid.setHgap(10);
      rightGrid.add(passwordLabel, 0, 0);
      rightGrid.add(passwordField, 1, 0);
	  rightGrid.add(errorLabel, 1, 1);
      rightGrid.add(confirmpasswordLabel, 0, 2);
      rightGrid.add(confirmPasswordField, 1, 2);
      rightGrid.add(hintLabel1, 0, 3);
      rightGrid.add(hintField1, 1, 3);
	  
      // Create the line that separates the left and right sides
      Separator separator = new Separator();
      separator.setOrientation(Orientation.VERTICAL);

      // Create the grid that contains the left and right sides
      GridPane grid = new GridPane();
      grid.setHgap(30);
      grid.add(leftGrid, 0, 0);
      grid.add(separator, 1, 0);
      grid.add(rightGrid, 2, 0);

     // Add the components to the layout
	 VBox layout2 = new VBox();
	 layout2.setAlignment(Pos.CENTER);
     layout2.getChildren().addAll(v,loginDetailsLabel, grid, submitButton);
     GridPane.setHalignment(submitButton, HPos.CENTER);

	 scene2= new Scene(layout2,660,300);
	 
	 //Second window part#02
	 signInButton.setOnAction(new EventHandler<ActionEvent>() {
	 @Override
	 public void handle(ActionEvent event) {
		stage.setScene(scene3);
    	}
	});
		
	Label UserNameLabel = new Label("User Name:");
	UserNameLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
    UserNameField = new TextField();
    UserNameField.setMaxWidth(120);
		
    Label passwordLabel2 = new Label("Password:");
	passwordLabel2.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
    PasswordField passwordField2 = new PasswordField();
    passwordField2.setMaxWidth(120);
		
	passwordField2.textProperty().addListener((observable, oldValue, newValue) -> {
      // Print the new value of the text property to the console
      w3 = newValue;
    });
		
    Button submitButton2 = new Button("Submit");
	submitButton2.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
    submitButton2.setOnMouseEntered(e -> submitButton2.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
    submitButton2.setOnMouseExited(e -> submitButton2.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
	
	
    submitButton2.setOnAction(new EventHandler<ActionEvent>(){
		@Override
		public void handle(ActionEvent Event)
		{
			if(UserNameField.getText().isEmpty() || passwordField2.getText().equals(""))
			{
				//Show error prompt
                Alert successAlert = new Alert(AlertType.ERROR);
                successAlert.setTitle("ERROR");
                successAlert.setHeaderText("Required detail is missing!");
                successAlert.showAndWait(); 
			}
		    else if(UserNameField.getText().indexOf("-") == -1)
			{
		    	//Show error prompt
                Alert successAlert = new Alert(AlertType.ERROR);
                successAlert.setTitle("ERROR");
                successAlert.setHeaderText("Format of username is [FirstName-LastName]!");
                successAlert.showAndWait(); 
			}
			else if(UserNameField.getText().indexOf("-") != -1)
			{
	    	    String token[]=new String[2];
			    token = UserNameField.getText().split("-");
			    w1 = token[0];
			    w2 = token[1];
            }
            if(!users.isUserExist(w1,w2,w3))
			{
				//Show error prompt
                Alert successAlert = new Alert(AlertType.ERROR);
                successAlert.setTitle("ERROR");
                successAlert.setHeaderText("Record not exist!");
                successAlert.showAndWait(); 
			}
			else
			{				
				tuple = users.getRecord(w1,w2,w3).split(" ");
				// Add student record box
                addRecordBox(root,tuple[0],tuple[1],tuple[2],tuple[4],tuple[5]);
				stage.setScene(scene4);
			}
		}
	});
		
		forgetPassword = new Button("Forget Password");
		forgetPassword.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        forgetPassword.setOnMouseEntered(e -> forgetPassword.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
		forgetPassword.setOnMouseExited(e -> forgetPassword.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
	
		changePassword = new Button("Change Password");
		changePassword.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        changePassword.setOnMouseEntered(e -> changePassword.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
		changePassword.setOnMouseExited(e -> changePassword.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
	
	    //Action on change password
		changePassword.setOnAction(event ->  
		{ 
	    	if(UserNameField.getText().isEmpty())
			{
				Alert alert = new Alert(Alert.AlertType.ERROR, "User name is required!!");
                alert.showAndWait();
			}
			else if(UserNameField.getText().indexOf("-") == -1)
			{
		    	//Show error prompt
                Alert successAlert = new Alert(AlertType.ERROR);
                successAlert.setTitle("ERROR");
                successAlert.setHeaderText("Format of username is [FirstName-LastName]!");
                successAlert.showAndWait(); 
			}
			else{
				stage.setScene(scene6);
			}
		});
	    //Forget password screen
        Label headingLabel = new Label("Forget Password");
		headingLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: green; -fx-font-weight:700");
        
		Label hintLabel2 = new Label("Enter Hint:");
		hintLabel2.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
        
		TextField hintTextField2 = new TextField();
		hintTextField2.setMaxWidth(120);
        
		Button checkButton = new Button("Check");
		checkButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        checkButton.setOnMouseEntered(e -> checkButton.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
        checkButton.setOnMouseExited(e -> checkButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
		
        Button backButton3 = new Button("<-");
		
        backButton3.setAlignment(Pos.TOP_LEFT);
		backButton3.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        backButton3.setOnMouseEntered(e -> backButton3.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
        backButton3.setOnMouseExited(e -> backButton3.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
		
        backButton3.setOnAction(new EventHandler<ActionEvent>(){
			@Override
			public void handle(ActionEvent e)
			{
				stage.setScene(scene3);
			}
		});
        // Create an HBox for the back button
        HBox topBox = new HBox(backButton3);
        topBox.setAlignment(Pos.CENTER_LEFT);

        // Create a VBox for the heading and hint components
        VBox centerBox = new VBox(10, headingLabel, hintLabel2, hintTextField2);
        centerBox.setAlignment(Pos.CENTER);

        // Create a BorderPane to hold the top and center boxes, and the check button
        BorderPane bp = new BorderPane();
        bp.setPadding(new Insets(10));
        bp.setTop(topBox);
        bp.setCenter(centerBox);
        bp.setBottom(checkButton);
        BorderPane.setAlignment(checkButton, Pos.CENTER);
		
        
        // Set the action for the check button
        checkButton.setOnAction(event -> {
            String h = hintTextField2.getText().trim();
			String name[] = new String[2];
			name = UserNameField.getText().split("-");
			String t[] = new String[7];
			t[0] = "n"; t[1] = "n"; t[2] = "n"; 
			t[4] = "n"; t[5] = "n"; t[6] = "n"; 
			t = users.getRecord(h).split(" ");
			
			
            if (hint.isEmpty()) {
                Alert alert = new Alert(Alert.AlertType.WARNING, "Hint is required!");
                alert.showAndWait();
            }
			else if(t[0] == "null")
			{
				Alert alert = new Alert(Alert.AlertType.WARNING, "Invalid hint provided!");
                alert.showAndWait();
			}
			else if(UserNameField.getText().isEmpty())
			{
				Alert alert = new Alert(Alert.AlertType.WARNING, "Hint is required!");
                alert.showAndWait();
			}
			
			else if(!users.isUserExistByHint(name[0],name[1],t[6]))
			{
				Alert alert = new Alert(Alert.AlertType.ERROR, "Invalid hint provided!");
                alert.showAndWait();
			}
			
			else if(users.isUserExistByHint(name[0],name[1],t[6])){
                Alert alert = new Alert(Alert.AlertType.INFORMATION, "Password is: " + t[3]);
                alert.showAndWait();
				stage.setScene(scene3);
            }
        });
		
		forgetPassword.setOnAction(event -> {
			if(UserNameField.getText().isEmpty())
			{
				Alert alert = new Alert(Alert.AlertType.ERROR, "User name is required!!");
                alert.showAndWait();
			}
			else if(UserNameField.getText().indexOf("-") == -1)
			{
		    	//Show error prompt
                Alert successAlert = new Alert(AlertType.ERROR);
                successAlert.setTitle("ERROR");
                successAlert.setHeaderText("Format of username is [FirstName-LastName]!");
                successAlert.showAndWait(); 
			}
			else{
				stage.setScene(scene5);
			}
		});

        // Create the scene and display the stage
        scene5 = new Scene(bp, 660, 300);
        
        stage.setTitle("Password Hint");
	
		HBox buttons = new HBox(10);
		buttons.setAlignment(Pos.CENTER);
		buttons.getChildren().addAll(forgetPassword,changePassword,submitButton2);
		
		VBox layout3 = new VBox(backButton,UserNameLabel,UserNameField,passwordLabel2,passwordField2,buttons);
		layout3.setAlignment(Pos.CENTER);
		layout3.getChildren().addAll();
		scene3 = new Scene(layout3,660,300);
	    
       //Change password scene
        
		Label changePasswordHead = new Label("Change Password");
		changePasswordHead.setStyle("-fx-font-size: 18px; -fx-text-fill: green; -fx-font-weight:700; -fx-underline:true");
		
		Label oldPasswordLabel = new Label("Enter old password:");
		oldPasswordLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
        
		PasswordField oldPasswordField = new PasswordField();
		oldPasswordField.setMaxWidth(120);
		
		oldPasswordField.textProperty().addListener((observable, oldValue, newValue) -> {
         // Print the new value of the text property to the console
         Old = newValue;
        });
		
		newPasswordField = new PasswordField();
		newPasswordField.setMaxWidth(120);
		
		Label newPasswordLabel = new Label("Enter new password:");
		newPasswordLabel.setStyle("-fx-font-size: 18px; -fx-text-fill: blue; -fx-font-weight:700");
        
		newPasswordField.textProperty().addListener((observable, oldValue, newValue) -> {
         // Print the new value of the text property to the console
         New = newValue;
        });
		
		
		Button submitPassword = new Button("Submit");
		submitPassword.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        submitPassword.setOnMouseEntered(e -> submitPassword.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
        submitPassword.setOnMouseExited(e -> submitPassword.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
		
        Button backButton4 = new Button("<-");
		
        backButton4.setAlignment(Pos.TOP_LEFT);
		backButton4.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;");
        backButton4.setOnMouseEntered(e -> backButton4.setStyle("-fx-background-color: #009b77; -fx-text-fill: white; -fx-cursor: hand;"));
        backButton4.setOnMouseExited(e -> backButton4.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));
		
        backButton4.setOnAction(new EventHandler<ActionEvent>(){
			@Override
			public void handle(ActionEvent e)
			{
				stage.setScene(scene3);
			}
		});
        // Create an HBox for the back button
        HBox topBox1 = new HBox(backButton4);
        topBox1.setAlignment(Pos.CENTER_LEFT);

        // Create a VBox for the heading and hint components
        VBox centerBox1 = new VBox(10, changePasswordHead,oldPasswordLabel,oldPasswordField,newPasswordLabel,newPasswordField);
        centerBox1.setAlignment(Pos.CENTER);

        // Create a BorderPane to hold the top and center boxes, and the check button
        BorderPane bp3 = new BorderPane();
        bp3.setPadding(new Insets(10));
        bp3.setTop(topBox1);
        bp3.setCenter(centerBox1);
        bp3.setBottom(submitPassword);
        BorderPane.setAlignment(submitPassword, Pos.CENTER);
		scene6 = new Scene(bp3, 660,300);
		
		submitPassword.setOnAction(event ->  
		{ 
		    String u[] = new String[2];
		    u = UserNameField.getText().split("-");
			errorMessage = validatePassword2();
			String password = passwordField.getText();
       
	    if(oldPasswordField.getText().isEmpty())
			{
				Alert alert = new Alert(Alert.AlertType.ERROR, "Old password is required!!");
                alert.showAndWait();
			}
			else if(newPasswordField.getText().isEmpty())
			{
				Alert alert = new Alert(Alert.AlertType.ERROR, "New password is required!!");
                alert.showAndWait();
			}
			else if((oldPasswordField.getText().isEmpty()) && (newPasswordField.getText().isEmpty()))
			{
				Alert alert = new Alert(Alert.AlertType.ERROR, "Both fields are required!");
                alert.showAndWait();
			}
			else if(UserNameField.getText().indexOf("-") == -1)
			{
		    	//Show error prompt
                Alert successAlert = new Alert(AlertType.ERROR);
                successAlert.setTitle("ERROR");
                successAlert.setHeaderText("Format of username is [FirstName-LastName]!");
                successAlert.showAndWait(); 
			}
			else if(!users.isUserExist(u[0],u[1],Old))
			{
				Alert successAlert = new Alert(AlertType.ERROR);
                successAlert.setTitle("ERROR");
                successAlert.setHeaderText("Old password is invalid!");
                successAlert.showAndWait(); 
			}
			else if(errorMessage!=null)
			{
				Alert successAlert = new Alert(AlertType.ERROR);
                successAlert.setTitle("ERROR");
                successAlert.setHeaderText(errorMessage);
                successAlert.showAndWait(); 
			}
			else
			{
				boolean submitted = users.updatePassword(u[0],u[1],Old,New);
				Alert alert = new Alert(Alert.AlertType.CONFIRMATION, "Password updated successfully!");
                alert.showAndWait();
				stage.setScene(scene3);
			}	
		});
		//Final scene
		root = new BorderPane();
        root.setStyle("-fx-background-color: #F8F8FF;");
		   
		//Menu bar
		BorderPane bp2 = new BorderPane();

        // Create the menu bar
        MenuBar menuBar = new MenuBar();

        // Create the home menu
        Menu homeMenu = new Menu("Home");
        MenuItem homeItem1 = new MenuItem("Marketing");
        MenuItem homeItem2 = new MenuItem("Plans");
        MenuItem homeItem3 = new MenuItem("Policies");
        homeMenu.getItems().addAll(homeItem1,homeItem2,homeItem3);

        // Create the about us menu
        Menu aboutMenu = new Menu("About Us");
        MenuItem aboutItem1 = new MenuItem("Address");
        MenuItem aboutItem2 = new MenuItem("Info");
        MenuItem aboutItem3 = new MenuItem("More");
		aboutMenu.getItems().addAll(aboutItem1,aboutItem2,aboutItem3);
		
		// Create the Services menu
        Menu serviceMenu = new Menu("Services");
        MenuItem serviceItem1 = new MenuItem("Updates");
        MenuItem serviceItem2 = new MenuItem("Configuration");
        MenuItem serviceItem3 = new MenuItem("");
        serviceMenu.getItems().addAll(serviceItem1,serviceItem2,serviceItem3);

        // Add the menus to the menu bar
        menuBar.getMenus().addAll(homeMenu, aboutMenu,serviceMenu);

        // Set the menu bar as the top of the BorderPane
        bp2.setTop(menuBar);

        
        //root.setTop(contextMenu);
        // Set the action for each context menu item
        
	   homeItem1.setOnAction(event ->    {  ShowMessage(); });
	   homeItem2.setOnAction(event ->    {  ShowMessage(); });
	   homeItem3.setOnAction(event ->    {  ShowMessage(); });
	   aboutItem1.setOnAction(event ->   {  ShowMessage(); });
	   aboutItem2.setOnAction(event ->   {  ShowMessage(); });
	   aboutItem3.setOnAction(event ->    {  ShowMessage(); });
	   serviceItem1.setOnAction(event -> {  ShowMessage(); });
	   serviceItem2.setOnAction(event -> {  ShowMessage(); });
	   serviceItem3.setOnAction(event -> {  ShowMessage(); });
           
        // Add attendance progress bar and label
        addAttendancePane(root);
		
        // Add exit button
        addExitButton(root);
        
    	Label uniLabel = new Label("COMSATS UNIVERSITY OF INFORMATION TECHNOLOGY");
        uniLabel.setStyle("-fx-font-size: 13px; -fx-text-fill: green; -fx-font-weight:700; -fx-margin-top:10px; -fx-text-align:center; -fx-underline:true;");
		uniLabel.setAlignment(Pos.TOP_CENTER);
	    root.setTop(bp2);
		
        scene4 = new Scene(root, 660, 300);
        stage.setTitle("Student Record App");  
    }

    public static void main(String[] args) {
        launch();
    }
	private String validatePassword() {
        String password = passwordField.getText();
        if (password.isEmpty()) {
            return "Password is required";
        } else if (password.length() != 8) {
            return "Password must be exactly 8 characters long";
        } else if (!password.matches(".*[a-zA-Z].*[a-zA-Z].*")) {
            return "Password must contain at least 2 letters";
        } else if (!password.matches(".*[!@#$%^&*()].*")) {
            return "Password must contain at least 1 special character";
        } else if (!password.matches(".*\\d.*\\d.*")) {
            return "Password must contain at least 2 digits";
        } else {
            return null;
        }
    }
	private String validatePassword2() {
        String password = newPasswordField.getText();
        if (password.isEmpty()) {
            return "Password is required";
        } else if (password.length() != 8) {
            return "Password must be exactly 8 characters long";
        } else if (!password.matches(".*[a-zA-Z].*[a-zA-Z].*")) {
            return "Password must contain at least 2 letters";
        } else if (!password.matches(".*[!@#$%^&*()].*")) {
            return "Password must contain at least 1 special character";
        } else if (!password.matches(".*\\d.*\\d.*")) {
            return "Password must contain at least 2 digits";
        } else {
            return null;
        }
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

    private void addRecordBox(BorderPane root,String fName,String lName,String age,String gender,String Email) {
        // Create student record box
        recordBox = new VBox(5);
        recordBox.setPrefSize(300, 200);
        recordBox.setStyle("-fx-background-color: #F8F8FF; -fx-padding: 20px;");
        recordBox.setAlignment(Pos.CENTER);

        // Add student record attributes
        addRecordAttribute("Name", fName+"-"+lName);
        addRecordAttribute("Age", age);
        addRecordAttribute("Gender", gender);
        addRecordAttribute("Email", Email);

        // Create attendance progress bar
        attendanceProgressBar = new ProgressBar(0.8);
        attendanceProgressBar.setPrefWidth(200);

        // Create attendance label
        attendanceLabel = new Label("Attendance: ");
		attendanceLabel.setFont(Font.font("Arial", FontWeight.BOLD, 14));
        attendanceLabel.setTextFill(Color.BLUE);
		
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
	public void ShowMessage()
	{
		Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Under Construction");
        alert.setHeaderText(null);
        alert.setContentText("Process is under construction!");
        alert.showAndWait();
	}
}
class User {
    private String fName;
    private String lName;
    private int age;
    private String password;
    private String gender;
    private String Email;
    private String hint;
    private static Connection conn = null;
	private static final String DB_URL = "jdbc:mysql://localhost:3306/CUI?useSSL=true&serverTimezone=UTC";
	private static final String DB_USER = "root";
	private static final String DB_PASSWORD = "javascript";
    
    User(String fName,String lName,int age,String gender, String password,String hint) {
        this.fName = fName;
        this.lName = lName;
        this.age = age;
		this.hint = hint;
        this.password = password;
        this.gender = gender;
        this.Email = this.fName + this.lName + "@cuilahore.edu.pk";
        
		
          try {
			
			if(conn==null){
              // Connect to MySQL database
              conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
			}
            
            // Create User table if it doesn't exist
            Statement stmt = conn.createStatement();
            String createTableSql = "CREATE TABLE IF NOT EXISTS User ("
                                 + "fName VARCHAR(30),"
                                 + "lName VARCHAR(30),"
                                 + "age INT,"
                                 + "password VARCHAR(30) PRIMARY KEY,"
                                 + "gender VARCHAR(10),"
                                 + "Email VARCHAR(100),"
								 + "Hint varchar(100)"
                                 + ")";
            stmt.executeUpdate(createTableSql);
        if(!this.isUserExist(this.fName,this.lName))
		{
			this.insert(this.fName,this.lName,this.age,this.gender,this.password,this.hint);
        }    
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
		
    }
	
	public void insert(String fName, String lName, int age, String gender,String password,String hint) {
    try {
        if(conn==null){
              // Connect to MySQL database
			  
              conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
			}
		if(!isUserExist(fName,lName)){

        // Prepare a statement to insert a new row into the User table
        String query = "INSERT INTO User (fName, lName, age, gender, password,Email,Hint) VALUES (?, ?, ?, ?, ?,?,?)";
        PreparedStatement statement = conn.prepareStatement(query);
		
        statement.setString(1, fName);
        statement.setString(2, lName);
        statement.setInt(3, age);
        statement.setString(4, gender);
        statement.setString(5, password);
		statement.setString(6, fName + lName + "@cuilahore.edu.pk");
		statement.setString(7, hint);

        
        // Execute the statement
        statement.executeUpdate();

        // Close the connection and statement
        statement.close();
        conn.close();
        conn = null;
        //System.out.println("Record inserted successfully.");
		}
    } catch (SQLException e) {
        System.out.println("Error inserting record: " + e.getMessage());
    }
}
    
    public String getFName() {
        return this.fName;
    }
    
    public String getLName() {
        return this.lName;
    }
    
    public int getAge() {
        return this.age;
    }
    
    public String getPassword() {
        return this.password;
    }
    
    public String getGender() {
        return this.gender;
    }
    
    public String getEmail() {
        return this.Email;
    }
	
	public String getHint() {
        return this.hint;
    }
    
   public boolean isUserExist(String fName, String lName) {
    boolean exist = false;
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Connect to MySQL database
        conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
        
        // Check if user with given fName and lName exists in User table
        String sql = "SELECT * FROM User WHERE fName = ? AND lName = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, fName);
        pstmt.setString(2, lName);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            exist = true;
        }
    } catch (SQLException e) {
        System.err.println("Error checking user existence: " + e.getMessage());
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.err.println("Error closing database resources: " + e.getMessage());
        }
    }

    return exist;
}

public boolean isUserExist(String fName, String lName,String pass, String h) {
    boolean exist = false;
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Connect to MySQL database
        conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
        
        // Check if user with given fName and lName exists in User table
        String sql = "SELECT * FROM User WHERE fName = ? AND lName = ? AND password = ? AND Hint = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, fName);
        pstmt.setString(2, lName);
        pstmt.setString(3, pass);
        pstmt.setString(4, h);
        
        rs = pstmt.executeQuery();

        if (rs.next()) {
            exist = true;
        }
    } catch (SQLException e) {
        System.err.println("Error checking user existence: " + e.getMessage());
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.err.println("Error closing database resources: " + e.getMessage());
        }
    }

    return exist;
}
public boolean isUserExistByHint(String fName, String lName, String h) {
    boolean exist = false;
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Connect to MySQL database
        conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
        
        // Check if user with given fName and lName exists in User table
        String sql = "SELECT * FROM User WHERE fName = ? AND lName = ? AND Hint = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, fName);
        pstmt.setString(2, lName);
        pstmt.setString(3, h);
        
        rs = pstmt.executeQuery();

        if (rs.next()) {
            exist = true;
        }
    } catch (SQLException e) {
        System.err.println("Error checking user existence: " + e.getMessage());
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.err.println("Error closing database resources: " + e.getMessage());
        }
    }

    return exist;
}

    public void display() {
    // Establishing database connection
    try {
        if(conn==null){
              // Connect to MySQL database
              conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
		}
		
        Statement statement = conn.createStatement();

        // Retrieving all records from the User table
        ResultSet resultSet = statement.executeQuery("SELECT * FROM User");

        // Printing the records
        System.out.println("User Table:");
        System.out.println("---------------------------------------------------------------------------------------------------------------");
        System.out.printf("| %-10s | %-10s | %-3s | %-20s | %-10s | %-30s |%-5s   |%n", "First Name", "Last Name", "Age", "Password", "Gender", "Email","Hint");
        System.out.println("---------------------------------------------------------------------------------------------------------------");
        while (resultSet.next()) {
            String fName = resultSet.getString("fName");
            String lName = resultSet.getString("lName");
            int age = resultSet.getInt("age");
            String password = resultSet.getString("password");
            String gender = resultSet.getString("gender");
            String email = resultSet.getString("Email");
            String hint = resultSet.getString("Hint");

            System.out.printf("| %-10s | %-10s | %-3d | %-20s | %-10s | %-30s | %-5s  |%n", fName, lName, age, password, gender, email,hint);
        }
        System.out.println("---------------------------------------------------------------------------------------------------------------");

        // Closing the database connection
        resultSet.close();
        statement.close();
        conn.close();
		conn = null;
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
 public boolean isUserExist(String fName, String lName, String password) {
    boolean exist = false;
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Connect to MySQL database
        conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
        
        // Check if user with given fName, lName, and password exists in User table
        String sql = "SELECT * FROM User WHERE fName = ? AND lName = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, fName);
        pstmt.setString(2, lName);
        rs = pstmt.executeQuery();

        while (rs.next()) {
            String dbPassword = rs.getString("password");
            if (password == null || dbPassword.equals(password)) {
                exist = true;
                break;
            }
        }
    } catch (SQLException e) {
        System.err.println("Error checking user existence: " + e.getMessage());
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.err.println("Error closing database resources: " + e.getMessage());
        }
    }
    return exist;
}
public String getRecord(String hint) {
    String record = "";

    try {
        if (conn == null) {
            // Connect to MySQL database
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        }

        // Retrieve the record with given fName, lName, and password from the User table
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM User WHERE Hint = ?");
        pstmt.setString(1, hint);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            String retrievedFName = rs.getString("fName");
            String retrievedLName = rs.getString("lName");
            int retrievedAge = rs.getInt("age");
            String retrievedPassword = rs.getString("password");
            String retrievedGender = rs.getString("gender");
            String retrievedEmail = rs.getString("Email");
            String h = rs.getString("Hint");

            // Concatenate the record fields with a space separator
            record = retrievedFName + " " + retrievedLName + " " + retrievedAge + " " + retrievedPassword + " " + retrievedGender + " " + retrievedEmail + " "+h;
        } else {
            return "null null null null null null null";
        }

        // Close the database connection
        rs.close();
        pstmt.close();
        conn.close();
        conn = null;

    } catch (SQLException e) {
        e.printStackTrace();
    }

    return record;
}
//Record by hint
public String getRecord(String fName,String lName, String password) {
    String record = "";

    try {
        if (conn == null) {
            // Connect to MySQL database
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        }

        // Retrieve the record with given fName, lName, and password from the User table
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM User WHERE fName = ? AND lName = ? AND password = ?");
        pstmt.setString(1, fName);
        pstmt.setString(2, lName);
        pstmt.setString(3, password);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            String retrievedFName = rs.getString("fName");
            String retrievedLName = rs.getString("lName");
            int retrievedAge = rs.getInt("age");
            String retrievedPassword = rs.getString("password");
            String retrievedGender = rs.getString("gender");
            String retrievedEmail = rs.getString("Email");
            String h = rs.getString("Hint");

            // Concatenate the record fields with a space separator
            record = retrievedFName + " " + retrievedLName + " " + retrievedAge + " " + retrievedPassword + " " + retrievedGender + " " + retrievedEmail + " "+h;
        } else {
            return "null null null null null null";
        }

        // Close the database connection
        rs.close();
        pstmt.close();
        conn.close();
        conn = null;

    } catch (SQLException e) {
        e.printStackTrace();
    }

    return record;
}
public boolean updatePassword(String fName, String lName, String oldPassword,String newPassword) {
    boolean value = false;
	try {
			
		if (conn == null) {
            // Connect to MySQL database
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        }
        String query = "UPDATE user SET password=? WHERE fName = ? AND lName=? AND password=?";
        PreparedStatement preparedStatement = conn.prepareStatement(query);
        preparedStatement.setString(1, newPassword);
		
        preparedStatement.setString(2, fName);
        preparedStatement.setString(3, lName);
        preparedStatement.setString(4, oldPassword);
        int rowsAffected = preparedStatement.executeUpdate();
        if (rowsAffected > 0) {
           value = true;
        } else {
            System.out.println("Unable to update password");
			value = false;
        }
		}
	 catch (SQLException e) {
        System.out.println("Error updating password: " + e.getMessage());
    }
	return value;
}
}