import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import javafx.scene.paint.Color;
import javafx.scene.shape.Circle;
import javafx.geometry.Pos;

public class ShapesExample extends Application {

Scene scene;
    
@Override
	public void start(Stage primaryStage) {
			
		primaryStage.setTitle("ShapesExample to show how shapes are drawn");

		Circle c = new Circle();
		c.setRadius(80);
		c.setStroke(Color.RED);
		c.setStrokeWidth(4.5);
		c.setFill(Color.BLACK);
		
		BorderPane layout = new BorderPane(); 

		layout.setCenter(c);


		layout.setAlignment(c, Pos.CENTER);

		scene= new Scene(layout, 300, 250);
		primaryStage.setScene(scene);
		primaryStage.show();
	}

	public static void main(String[] args) {
		launch(args);
	}  
}

        