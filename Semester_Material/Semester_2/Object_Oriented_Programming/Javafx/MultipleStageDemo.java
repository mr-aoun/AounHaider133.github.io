import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;

public class MultipleStageDemo extends Application 
{
	@Override // Override the start method in the Application class
	public void start(Stage primaryStage) 
	{
		// Create a scene and place a button in the scene
		Scene scene = new Scene(new Button("OK"), 200, 250);
		primaryStage.setTitle("MyJavaFX"); // Set the stage title
		primaryStage.setScene(scene); // Place the scene in the stage
		primaryStage.show(); // Display the stage
		Stage scondaryStage = new Stage(); // Create a new stage
		scondaryStage.setTitle("Second Stage"); // Set the stage title
		// Set a scene with a button in the stage
		scondaryStage.setScene(new Scene(new Button("New Stage"), 200, 250));
		scondaryStage.show(); // Display the stage
	}
}