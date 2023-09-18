import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

public class HBoxExample extends Application {

Scene scene;
    
@Override
	public void start(Stage primaryStage) {
			
		primaryStage.setTitle("HBox Pane Manager Example");
		
		Label label1= new Label("This is lable1");
		Button button1= new Button("This is a button1");
		Label label2= new Label("This is a lable2");
		Button button2= new Button("This is a button2");		
		
		HBox layout = new HBox(20);     
		layout.getChildren().addAll(label1, button1, label2, button2);
		scene= new Scene(layout, 450, 100);
		primaryStage.setScene(scene);
		primaryStage.show();
	}

	public static void main(String[] args) {
		launch(args);
	}  
}

        