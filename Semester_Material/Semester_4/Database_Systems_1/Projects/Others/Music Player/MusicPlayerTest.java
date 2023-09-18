//@Prepared by Aoun-Haider

import com.player.MusicPlayer;
import java.lang.System;
import javafx.application.Application;
import javafx.geometry.*;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.*;
import javafx.animation.*;
import javafx.scene.layout.*;
import javafx.scene.paint.Color;
import javafx.scene.text.*;
import javafx.stage.Stage;
import javafx.scene.media.*;
import javafx.scene.input.*;
import javafx.event.*;
import java.io.File;
import javafx.animation.*;
import javafx.scene.media.MediaPlayer.Status;
import javafx.scene.image.*;
import java.util.*;
import javafx.util.*;

public class MusicPlayerTest extends Application {

    private MusicPlayer MUSIC_PATHS;
    
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
		
		MUSIC_PATHS = new MusicPlayer();
		MUSIC_PATHS.add(new File("Audios/Iraaday.mp3").toURI().toString());
		MUSIC_PATHS.add(new File("Audios/Faasle.mp3").toURI().toString());
		MUSIC_PATHS.add(new File("Audios/Samjho_Na.mp3").toURI().toString());
		MUSIC_PATHS.add(new File("Audios/Ghalat_Fehmi.mp3").toURI().toString());
		MUSIC_PATHS.add(new File("Audios/Kahani_Suno.mp3").toURI().toString());
		MUSIC_PATHS.add(new File("Audios/Bikhra.mp3").toURI().toString());
		MUSIC_PATHS.add(new File("Audios/Thoda_Thoda_Pyaar.mp3").toURI().toString());
		MUSIC_PATHS.add(new File("Audios/Ae_Dil.mp3").toURI().toString());
		MUSIC_PATHS.add(new File("Audios/Dil.mp3").toURI().toString());
		MUSIC_PATHS.add(new File("Audios/Pasoori.mp3").toURI().toString());
		
		// Create media objects
        media = new Media(MUSIC_PATHS.getFile(currentMusicIndex));
        mediaPlayer = new MediaPlayer(media);
        mediaPlayer.setAutoPlay(true);
		//highLightMusic(); //highlight 1st song
        
        // Create UI elements
        MediaView mediaView = new MediaView(mediaPlayer);
        slider = new Slider();
		
        BorderPane root = new BorderPane();
        Scene scene = new Scene(root, 400, 400);
		
		//All the required buttons
        playButton = new Button();
		playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
        Button nextButton = new Button();
		nextButton.setGraphic(new ImageView(new Image("Images/next_button.png")));
        Button prevButton = new Button();
		prevButton.setGraphic(new ImageView(new Image("Images/previous_button.png")));
        Button replay = new Button();
		replay.setGraphic(new ImageView(new Image("Images/replay_button.png")));
		
		Button shuffle = new Button();
		shuffle.setGraphic(new ImageView(new Image("Images/shuffle_button.png")));
		
		Label statusLabel = new Label("Playing");
		
        backButton = new Button();
        backButton.setGraphic(new ImageView("Images/back_button.png"));
        
        backButton.setStyle("-fx-background-color:white; -fx-border-color:black");
		backButton.setOnMouseEntered(e -> backButton.setStyle("-fx-background-color: #f2f2f2; -fx-text-fill: white; -fx-cursor: hand; -fx-border-color:black;"));
        backButton.setOnMouseExited(e -> backButton.setStyle("-fx-background-color:white; -fx-border-color:black; "));

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
		
		// create a VBox to hold the list of boxes
        VBox boxList = new VBox();
        boxList.setAlignment(Pos.TOP_CENTER);
        boxList.setPadding(new Insets(10));
        boxList.setSpacing(10);
    	
        // add 10 boxes to the VBox
        for (int i = 0; i < 10; i++) {
			
            File file = new File(MUSIC_PATHS.getFile(i));
            String fileName = file.getName(); // Extracts the file name from the file path
            HBox box = createBox(i+1, fileName.substring(0,fileName.lastIndexOf(".")));
			hboxComponents[i] = box;
			
            boxList.getChildren().add(box);
        }
	    highLightMusic();
        // create a scroll pane to allow scrolling through the box list
        ScrollPane scrollPane = new ScrollPane(boxList);
        scrollPane.setFitToWidth(true);
        scrollPane.setVbarPolicy(ScrollPane.ScrollBarPolicy.ALWAYS);
        root.setCenter(scrollPane);
		//End list design

        //Check if last song is currently played, move to next automatically
		mediaPlayer.setOnEndOfMedia(() -> {
        int index = Arrays.asList(MUSIC_PATHS.musicPaths).indexOf(media.getSource());
        
		if (index < MUSIC_PATHS.getLength() - 1) {
        
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
	
	        MUSIC_PATHS.shuffle();
           
		});
        // Set up play/pause button
        playButton.setOnAction(event -> {
            if (mediaPlayer.getStatus() == Status.PLAYING) {
                mediaPlayer.pause();
				hboxComponents[currentMusicIndex].setStyle("-fx-background-color:#F5F5F5");
                playButton.setGraphic(new ImageView(new Image("Images/pause_button.png")));
                statusLabel.setText("Paused");
            } else {
                mediaPlayer.play();
                playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
				hboxComponents[currentMusicIndex].setStyle("-fx-background-color:#F5F5F5");
                statusLabel.setText("Playing");
            }
        });
        
        // Set up next/previous buttons
        nextButton.setOnAction(event -> {
            currentMusicIndex = (currentMusicIndex + 1) % MUSIC_PATHS.getLength();
            playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
			switchMusic(currentMusicIndex);
			highLightMusic();
        });
        prevButton.setOnAction(event -> {
            currentMusicIndex = (currentMusicIndex - 1 + MUSIC_PATHS.getLength()) % MUSIC_PATHS.getLength();
            playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
			switchMusic(currentMusicIndex);
			highLightMusic();
        });
        

        // Create the button container and add it to the bottom of the screen
        HBox buttonBox = new HBox(10);
        buttonBox.setPadding(new Insets(10));
        buttonBox.setAlignment(Pos.CENTER);

        buttonBox.getChildren().addAll(shuffle,prevButton,playButton,nextButton,replay);

        // Set up the slider and add it to the screen above the button container
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
		playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
		switchMusic(currentMusicIndex);
		hboxComponents[currentMusicIndex].setStyle("-fx-background-color:#F5F5F5");
		
	});
	
	//Highlight box which song is being played
	if(mediaPlayer.getStatus() == Status.PLAYING){
	 int index = Arrays.asList(MUSIC_PATHS.musicPaths).indexOf(media.getSource());
     hboxComponents[index].setStyle("-fx-background-color:red");
	}
	//Set action on mouse hover
	box.setOnMouseEntered(e -> {
	
	highLightMusic();
	box.setStyle("-fx-background-color: #f2f2f2; -fx-border-color: black; -fx-padding: 5;");
	
	});
    
	box.setOnMouseExited(e -> {
    highLightMusic();
	box.setStyle("-fx-background-color: white; -fx-border-color: black; -fx-padding: 5;");
	
	});
		
    return box;
}
   public void highLightMusic()
   {
	 
	for(int i=0;i<10;i++)
	{
		if(i!=currentMusicIndex)
			hboxComponents[i].setStyle("-fx-background-color: white; -fx-border-color: black; -fx-padding: 5;");
		else
			hboxComponents[i].setStyle("-fx-background-color:#F5F5F5;");
	}
	
   }

    private void switchMusic(int index) {
        // Pause current music
        mediaPlayer.stop();
        
        // Load and play new music
        Media media = new Media(MUSIC_PATHS.getFile(index));
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
        int ind = Arrays.asList(MUSIC_PATHS.musicPaths).indexOf(media.getSource());
        
		if (ind < MUSIC_PATHS.getLength() - 1) {
        
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