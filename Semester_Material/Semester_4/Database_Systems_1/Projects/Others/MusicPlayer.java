import java.lang.System;
import javafx.animation.Animation;
import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.application.Application;
import javafx.scene.control.ScrollPane;
import javafx.geometry.*;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Slider;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.StackPane;
import javafx.scene.shape.Circle;
import javafx.scene.transform.Rotate;
import javafx.animation.*;
import javafx.scene.control.Label;
import javafx.scene.layout.*;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import javafx.scene.media.*;
import javafx.scene.input.*;
import javafx.event.*;
import java.io.File;
import javafx.animation.*;
import javafx.scene.media.MediaPlayer.Status;
import javafx.scene.image.*;
import javafx.util.Duration;
import java.util.*;

public class MusicPlayer2 extends Application {

    private static String[] MUSIC_PATHS = {
            "file:///E:/Semesters%20Material/Semester%2304/Database%20System%20I/Java/Assignments/Iraaday.mp3",
            "file:///E:/Semesters%20Material/Semester%2304/Database%20System%20I/Java/Assignments/Faasle.mp3",
            "file:///E:/Semesters%20Material/Semester%2304/Database%20System%20I/Java/Assignments/Samjho_Na.mp3",
            "file:///E:/Semesters%20Material/Semester%2304/Database%20System%20I/Java/Assignments/Ghalat_Fehmi.mp3",
           
		   "file:///E:/Semesters%20Material/Semester%2304/Database%20System%20I/Java/Assignments/Kahani_Suno.mp3",
		   "file:///E:/Semesters%20Material/Semester%2304/Database%20System%20I/Java/Assignments/Bikhra.mp3",
		   "file:///E:/Semesters%20Material/Semester%2304/Database%20System%20I/Java/Assignments/Thoda_Thoda_Pyaar.mp3",
		   "file:///E:/Semesters%20Material/Semester%2304/Database%20System%20I/Java/Assignments/Ae_Dil.mp3",
		   "file:///E:/Semesters%20Material/Semester%2304/Database%20System%20I/Java/Assignments/Dil.mp3",
		   "file:///E:/Semesters%20Material/Semester%2304/Database%20System%20I/Java/Assignments/Pasoori.mp3",
		   
    };
    
    private int currentMusicIndex = 0;
	private static Button playButton;
    private MediaPlayer mediaPlayer;
	private Slider slider;
	private Duration duration;
	private HBox[] hboxComponents = {null,null,null,null,null
	                                ,null,null,null,null,null};
	
	private final String text = "Music Player";
    private final Color backgroundColor = Color.rgb(13,152,186);
    private final Color buttonColor = Color.rgb(0,0,255);
    private final Color textColor = Color.rgb(255, 255, 255);
    private final Font textFont = new Font("Arial", 25);

    private Button backButton;
	private Media media;

    @Override
    public void start(Stage primaryStage) {
		
		// Create media objects
        media = new Media(MUSIC_PATHS[currentMusicIndex]);
        mediaPlayer = new MediaPlayer(media);
        mediaPlayer.setAutoPlay(true);
        
        // Create UI elements
        MediaView mediaView = new MediaView(mediaPlayer);
        slider = new Slider();
		
        BorderPane root = new BorderPane();
        Scene scene = new Scene(root, 400, 400);
		
		//All the required buttons
        playButton = new Button();
		playButton.setGraphic(new ImageView(new Image("C:\\Users\\Aoun Haider\\Downloads\\play_button.png")));
        Button nextButton = new Button();
		nextButton.setGraphic(new ImageView(new Image("C:\\Users\\Aoun Haider\\Downloads\\next_button.png")));
        Button prevButton = new Button();
		prevButton.setGraphic(new ImageView(new Image("C:\\Users\\Aoun Haider\\Downloads\\previous_button.png")));
        Button replay = new Button();
		replay.setGraphic(new ImageView(new Image("C:\\Users\\Aoun Haider\\Downloads\\replay_button.png")));
		
		Button shuffle = new Button();
		shuffle.setGraphic(new ImageView(new Image("C:\\Users\\Aoun Haider\\Downloads\\shuffle_button.png")));
		
		Label statusLabel = new Label("Playing");
		/**/
        backButton = new Button("< Back");
        backButton.setBackground(new Background(new BackgroundFill(buttonColor, new CornerRadii(0), new Insets(0))));
        
		backButton.setOnMouseEntered(e -> backButton.setStyle("-fx-background-color: #3D5B59; -fx-text-fill: white; -fx-cursor: hand;"));
        backButton.setOnMouseExited(e -> backButton.setStyle("-fx-background-color: blue; -fx-text-fill: white; -fx-cursor: hand;"));

		backButton.setTextFill(textColor);
        backButton.setFont(textFont);
        backButton.setMaxHeight(25);
		backButton.setMaxWidth(130);

        // Creating the Label
        Label label = new Label(text);
        label.setTextFill(textColor);
        label.setFont(textFont);

        // Creating the HBox
        HBox hbox = new HBox(backButton, label);
        hbox.setBackground(new Background(new BackgroundFill(backgroundColor, new CornerRadii(0), new Insets(0))));
        hbox.setAlignment(Pos.CENTER_LEFT);
        hbox.setSpacing(10);
        hbox.setPrefHeight(-10);
		hbox.setOnMouseEntered(e -> hbox.setStyle("-fx-background-color: #009b77; -fx-text-fill: white;"));
        hbox.setOnMouseExited(e -> hbox.setStyle("-fx-background-color: #0d98ba; -fx-text-fill: white;"));

		
		root.setTop(hbox);
		
		//End top bar design
		
		//List design
		// create a VBox to hold the list of boxes
        VBox boxList = new VBox();
        boxList.setAlignment(Pos.TOP_CENTER);
        boxList.setPadding(new Insets(10));
        boxList.setSpacing(10);
    	
        // add 10 boxes to the VBox
        for (int i = 0; i < 10; i++) {
			
            File file = new File(MUSIC_PATHS[i]);
            String fileName = file.getName(); // Extracts the file name from the file path
            HBox box = createBox(i+1, fileName);
			hboxComponents[i] = box;
			
    		//hboxComponents[i].setOnMouseEntered(e -> hboxComponents[i].setStyle("-fx-background-color:  #99F443; -fx-text-fill: white; -fx-cursor: hand;"));
            //hboxComponents[i].setOnMouseExited(e -> hboxComponents[i].setStyle("-fx-background-color: white; -fx-text-fill: black; -fx-cursor: hand;"));


            boxList.getChildren().add(box);
        }
		
		
        
		//Set action on array of hboxes
		
        // create a scroll pane to allow scrolling through the box list
        ScrollPane scrollPane = new ScrollPane(boxList);
        scrollPane.setFitToWidth(true);
        scrollPane.setVbarPolicy(ScrollPane.ScrollBarPolicy.ALWAYS);
        root.setCenter(scrollPane);
		//End list design

        //Check if last song is currently played, move to next automatically
		mediaPlayer.setOnEndOfMedia(() -> {
        int index = Arrays.asList(MUSIC_PATHS).indexOf(media.getSource());
        
		if (index < MUSIC_PATHS.length - 1) {
        
		   switchMusic(index+1);
       }
	   else
	   {
		   switchMusic(0);
	   }
   });
         
		 //Timeline 
		 Timeline timeline = new Timeline(new KeyFrame(Duration.seconds(1), event -> {
       if (mediaPlayer.getStatus() == MediaPlayer.Status.PLAYING) {
        double currentSeconds = mediaPlayer.getCurrentTime().toSeconds();
        double totalSeconds = mediaPlayer.getTotalDuration().toSeconds();
        slider.setValue(currentSeconds / totalSeconds * 100.0);
      }
    }));
        timeline.setCycleCount(Animation.INDEFINITE);
        timeline.play();

        //Set action on replay button
		
		replay.setOnAction(event -> {
		    //set the current duration at start
			mediaPlayer.seek(Duration.ZERO);
            mediaPlayer.play();
		});
		
		//Slider action event
        slider.setOnMouseReleased(event -> {
       double percent = slider.getValue() / 100.0;
       double duration = mediaPlayer.getTotalDuration().toSeconds();
       double newTime = percent * duration;
       Duration seekTime = Duration.seconds(newTime);
       mediaPlayer.seek(seekTime);
       timeline.stop();
       timeline.getKeyFrames().setAll(new KeyFrame(Duration.seconds(1), e -> {
        double currentSeconds = mediaPlayer.getCurrentTime().toSeconds();
        double totalSeconds = mediaPlayer.getTotalDuration().toSeconds();
        slider.setValue(currentSeconds / totalSeconds * 100.0);
    }));
    timeline.play();
});
		
		//Setting action on shuffle button
		shuffle.setOnAction(e->{
	
            List<String> list = Arrays.asList(MUSIC_PATHS);
            Collections.shuffle(list);
            MUSIC_PATHS = list.toArray(new String[0]);
           
		});
        // Set up play/pause button
        playButton.setOnAction(event -> {
            if (mediaPlayer.getStatus() == Status.PLAYING) {
                mediaPlayer.pause();
                playButton.setGraphic(new ImageView(new Image("C:\\Users\\Aoun Haider\\Downloads\\pause_button.png")));
                statusLabel.setText("Paused");
            } else {
                mediaPlayer.play();
                playButton.setGraphic(new ImageView(new Image("C:\\Users\\Aoun Haider\\Downloads\\play_button.png")));
                statusLabel.setText("Playing");
            }
        });
        
        // Set up next/previous buttons
        nextButton.setOnAction(event -> {
            currentMusicIndex = (currentMusicIndex + 1) % MUSIC_PATHS.length;
            playButton.setGraphic(new ImageView(new Image("C:\\Users\\Aoun Haider\\Downloads\\play_button.png")));
			switchMusic(currentMusicIndex);
        });
        prevButton.setOnAction(event -> {
            currentMusicIndex = (currentMusicIndex - 1 + MUSIC_PATHS.length) % MUSIC_PATHS.length;
            playButton.setGraphic(new ImageView(new Image("C:\\Users\\Aoun Haider\\Downloads\\play_button.png")));
			switchMusic(currentMusicIndex);
        });
        

        // Create the button container and add it to the bottom of the screen
        HBox buttonBox = new HBox(10);
        buttonBox.setPadding(new Insets(10));
        buttonBox.setAlignment(Pos.CENTER);

        buttonBox.getChildren().addAll(shuffle,prevButton,playButton,nextButton,replay);

        // Set up the slider and add it to the screen above the button container
        //Slider slider = new Slider(0, 100, 50);
        //slider.setPadding(new Insets(10));
        root.setMargin(slider, new Insets(10, 10, 0, 10));
		
		VBox vbox = new VBox();
		vbox.getChildren().addAll(slider,buttonBox);
		
        root.setBottom(vbox);

        primaryStage.setScene(scene);
		primaryStage.setTitle("Music Player 2.0");
        primaryStage.show();
    }
	
	// create a rectangular box with the given box number and title
    private HBox createBox(int boxNumber, String title) {
    // create the label for the box number
    Label numberLabel = new Label(String.valueOf(boxNumber));
    numberLabel.setStyle("-fx-font-size: 16pt;");

    // create the label for the box title
    Label titleLabel = new Label(title);
    titleLabel.setStyle("-fx-font-size: 12pt;");

    // create the HBox to hold the box number and title labels
    HBox box = new HBox(numberLabel, titleLabel);
    box.setAlignment(Pos.CENTER_LEFT);
    box.setSpacing(10);
    box.setStyle("-fx-background-color: white; -fx-border-color: black; -fx-padding: 5;");
    
	//Set action on box clicked
	box.setOnMouseClicked(e->{
		currentMusicIndex = boxNumber-1;
		playButton.setGraphic(new ImageView(new Image("C:\\Users\\Aoun Haider\\Downloads\\play_button.png")));
		switchMusic(currentMusicIndex);
	});
	
	//Highlight box which song is being played
	if(mediaPlayer.getStatus() == Status.PLAYING){
	 int index = Arrays.asList(MUSIC_PATHS).indexOf(media.getSource());
     hboxComponents[index].setStyle("-fx-background-color:red");
	}
	//Set action on mouse hover
	box.setOnMouseEntered(e -> box.setStyle("-fx-background-color: #f2f2f2; -fx-border-color: black; -fx-padding: 5;"));
    box.setOnMouseExited(e -> box.setStyle("-fx-background-color: white; -fx-border-color: black; -fx-padding: 5;"));
		
    return box;
}

    private void switchMusic(int index) {
        // Pause current music
        mediaPlayer.stop();
        
        // Load and play new music
        Media media = new Media(MUSIC_PATHS[index]);
        mediaPlayer = new MediaPlayer(media);
        mediaPlayer.setAutoPlay(true);
		duration = mediaPlayer.getMedia().getDuration();
		
		//Timeline 
		 Timeline timeline = new Timeline(new KeyFrame(Duration.seconds(1), event -> {
       if (mediaPlayer.getStatus() == MediaPlayer.Status.PLAYING) {
        double currentSeconds = mediaPlayer.getCurrentTime().toSeconds();
        double totalSeconds = mediaPlayer.getTotalDuration().toSeconds();
        slider.setValue(currentSeconds / totalSeconds * 100.0);
      }
    }));
        timeline.setCycleCount(Animation.INDEFINITE);
        timeline.play();
	
		//Slider action event
        slider.setOnMouseReleased(event -> {
    double percent = slider.getValue() / 100.0;
    double duration = mediaPlayer.getTotalDuration().toSeconds();
    double newTime = percent * duration;
    Duration seekTime = Duration.seconds(newTime);
    mediaPlayer.seek(seekTime);
    timeline.stop();
    timeline.getKeyFrames().setAll(new KeyFrame(Duration.seconds(1), e -> {
        double currentSeconds = mediaPlayer.getCurrentTime().toSeconds();
        double totalSeconds = mediaPlayer.getTotalDuration().toSeconds();
        slider.setValue(currentSeconds / totalSeconds * 100.0);
    }));
    timeline.play();
});
//Check if last song is currently played, move to next automatically
		mediaPlayer.setOnEndOfMedia(() -> {
        int ind = Arrays.asList(MUSIC_PATHS).indexOf(media.getSource());
        
		if (ind < MUSIC_PATHS.length - 1) {
        
		   switchMusic(ind+1);
       }
	   else
	   {
		   switchMusic(0);
	   }
   });
}
    public static void main(String[] args) {
        launch(args);
    }
}