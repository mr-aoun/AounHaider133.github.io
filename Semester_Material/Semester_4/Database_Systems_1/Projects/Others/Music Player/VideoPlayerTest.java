//@Prepared by Aoun-Haider

import com.player.*;
import java.lang.System;
import javafx.animation.*;
import javafx.application.Application;
import javafx.geometry.*;
import javafx.scene.Scene;
import javafx.scene.shape.Circle;
import javafx.scene.transform.Rotate;
import javafx.animation.*;
import javafx.scene.layout.*;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import javafx.scene.media.*;
import javafx.scene.input.*;
import javafx.stage.Screen;
import javafx.event.*;
import javafx.scene.control.*;
import java.io.File;
import javafx.animation.*;
import javafx.scene.media.MediaPlayer.Status;
import javafx.scene.image.*;
import javafx.util.Duration;
import javafx.stage.*;
import java.util.*;


public class VideoPlayerTest extends Application {

    private VideoPlayer VIDEO_PATHS;
    
    private int currentMusicIndex = 0;
    private MediaPlayer mediaPlayer;
	private Slider slider;
	private Duration duration;
	
	private final String text = "Video Player";
    private final Color backgroundColor = Color.rgb(13,152,186);
    private final Color buttonColor = Color.rgb(0,0,255);
    private final Color textColor = Color.rgb(255, 255, 255);
    private final Font textFont = new Font("Arial", 25);
    private Rectangle2D screenBounds;
    private Button backButton;
	private MediaView mediaView;
	private String temp,name;
	private File fileName;
	private Label videoLabel;

    @Override
    public void start(Stage primaryStage) {
	
        VIDEO_PATHS = new VideoPlayer();
        VIDEO_PATHS.add(new File("Videos/v1.mp4").toURI().toString());
        VIDEO_PATHS.add(new File("Videos/v2.mp4").toURI().toString());
        VIDEO_PATHS.add(new File("Videos/v3.mp4").toURI().toString());
        VIDEO_PATHS.add(new File("Videos/v4.mp4").toURI().toString());
        VIDEO_PATHS.add(new File("Videos/v5.mp4").toURI().toString());
        VIDEO_PATHS.add(new File("Videos/v6.mp4").toURI().toString());
        VIDEO_PATHS.add(new File("Videos/v7.mp4").toURI().toString());

		
		// Create media objects
        Media media = new Media(VIDEO_PATHS.getFile(currentMusicIndex));
        mediaPlayer = new MediaPlayer(media);
        mediaPlayer.setAutoPlay(true);
        
		// create the menu bar with menu items
        MenuBar menuBar = new MenuBar();
        Menu menu = new Menu();
		menu.setGraphic(new ImageView("Images/more.png"));
        
        menu.setStyle("-fx-background-color:white; -fx-border-color:black; -fx-padding: 5; -fx-pref-width: 40;");


		
        MenuItem menuItem1 = new MenuItem((new File(VIDEO_PATHS.getFile(0))).getName());
        MenuItem menuItem2 = new MenuItem((new File(VIDEO_PATHS.getFile(1))).getName());
        MenuItem menuItem3 = new MenuItem((new File(VIDEO_PATHS.getFile(2))).getName());
        MenuItem menuItem4 = new MenuItem((new File(VIDEO_PATHS.getFile(3))).getName());
        MenuItem menuItem5 = new MenuItem((new File(VIDEO_PATHS.getFile(4))).getName());
        MenuItem menuItem6 = new MenuItem((new File(VIDEO_PATHS.getFile(5))).getName());
        MenuItem menuItem7 = new MenuItem((new File(VIDEO_PATHS.getFile(6))).getName());
    
        menu.getItems().addAll(menuItem1, menuItem2, menuItem3, menuItem4, menuItem5, menuItem6, menuItem7);
        menuBar.getMenus().add(menu);
		
        // Create UI elements
        mediaView = new MediaView(mediaPlayer);
        slider = new Slider();
		
		fileName = new File(VIDEO_PATHS.getFile(currentMusicIndex));
		temp = fileName.getName();
		name = "\n        "+temp;
		videoLabel = new Label(name);
		videoLabel.setFont(textFont);
		
        BorderPane root = new BorderPane();
        Scene scene = new Scene(root, 800, 700);
	
		// Creating the Button
        Button playButton = new Button();
		playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
        Button nextButton = new Button();
		nextButton.setGraphic(new ImageView(new Image("Images/next_button.png")));
        Button prevButton = new Button();
		prevButton.setGraphic(new ImageView(new Image("Images/previous_button.png")));
        Button replay = new Button();
		replay.setGraphic(new ImageView(new Image("Images/replay_button.png")));
		
		Button soundButton = new Button();
		soundButton.setGraphic(new ImageView("Images/sound_button.png"));
		
		Button resizeScreen = new Button();
		resizeScreen.setGraphic(new ImageView("Images/full_screen_button.png"));
		
		Button shuffle = new Button();
		shuffle.setGraphic(new ImageView(new Image("Images/shuffle_button.png")));
		
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
        HBox hbox = new HBox();
		
	    hbox.setAlignment(Pos.TOP_RIGHT);
        		
		hbox.getChildren().addAll(backButton, label, menuBar);
		
        HBox.setMargin(menuBar, new Insets(0, 0, 0, 490));
		
		VBox v = new VBox();
		v.getChildren().addAll(hbox,videoLabel);
		
        hbox.setBackground(new Background(new BackgroundFill(backgroundColor, new CornerRadii(0), new Insets(0))));
        hbox.setAlignment(Pos.CENTER_LEFT);
        hbox.setSpacing(10);
        hbox.setPrefHeight(-10);
		hbox.setOnMouseEntered(e -> hbox.setStyle("-fx-background-color: #009b77; -fx-text-fill: white;"));
        hbox.setOnMouseExited(e -> hbox.setStyle("-fx-background-color: #0d98ba; -fx-text-fill: white;"));

		
		root.setTop(v);
		
		//List design
		//Action Events on menu-items
		menuItem1.setOnAction(e->{
			switchMusic(0);
			fileName = new File(VIDEO_PATHS.getFile(0));
		    currentMusicIndex = 0;
			temp = fileName.getName();
		    name = "\n        "+temp;
			videoLabel.setText(name);
			playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
		});
		menuItem2.setOnAction(e->{
			switchMusic(1);
			currentMusicIndex = 1;
			fileName = new File(VIDEO_PATHS.getFile(1));
		    temp = fileName.getName();
		    name = "\n        "+temp;
			videoLabel.setText(name);
			playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
		});
		menuItem3.setOnAction(e->{
			switchMusic(2);
			currentMusicIndex = 2;
			fileName = new File(VIDEO_PATHS.getFile(2));
		    temp = fileName.getName();
		    name = "\n        "+temp;
			videoLabel.setText(name);
			playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
		});
		menuItem4.setOnAction(e->{
			switchMusic(3);
			currentMusicIndex = 3;
			fileName = new File(VIDEO_PATHS.getFile(3));
		    temp = fileName.getName();
		    name = "\n        "+temp;
			videoLabel.setText(name);
			playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
		});
		menuItem5.setOnAction(e->{
			switchMusic(4);
			currentMusicIndex = 4;
			fileName = new File(VIDEO_PATHS.getFile(4));
		    temp = fileName.getName();
		    name = "\n        "+temp;
			videoLabel.setText(name);
			playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
		});
		menuItem6.setOnAction(e->{
			switchMusic(5);
			currentMusicIndex = 5;
			fileName = new File(VIDEO_PATHS.getFile(5));
		    temp = fileName.getName();
		    name = "\n        "+temp;
			videoLabel.setText(name);
			playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
		});
		menuItem7.setOnAction(e->{
			switchMusic(6);
			currentMusicIndex = 6;
			fileName = new File(VIDEO_PATHS.getFile(6));
		    temp = fileName.getName();
		    name = "\n        "+temp;
			
			playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
		});
		// create a VBox to hold the list of boxes
        VBox boxList = new VBox();
        boxList.setAlignment(Pos.TOP_CENTER);
        boxList.setPadding(new Insets(10));
        boxList.setSpacing(10);
        
        //Set video height & width
    	// Set up screen size and center the video
        screenBounds = Screen.getPrimary().getBounds();
        double screenWidth = screenBounds.getWidth();
        double screenHeight = screenBounds.getHeight();
        double videoWidth = media.getWidth();
        double videoHeight = media.getHeight();
        
        // Scale the video to fit the screen
        double widthScale = screenWidth / videoWidth;
        double heightScale = screenHeight / videoHeight;
        double scale = Math.min(widthScale, heightScale);
        
        // Set the fit width and height of the media view to match the screen size
        mediaView.setFitWidth(screenBounds.getWidth()-900);
        mediaView.setFitHeight(screenBounds.getHeight()-100);
		
        root.setCenter(mediaView);
		//End list design

        // Set up the circle that will rotate when the second button is pressed
        
        //Check if last video is currently played, move to next automatically
		mediaPlayer.setOnEndOfMedia(() -> {
        int index = Arrays.asList(VIDEO_PATHS.videoPaths).indexOf(media.getSource());
    	
		if (index < VIDEO_PATHS.getLength() - 1){
		//Change the name of video file accordingly
		    fileName = new File(VIDEO_PATHS.getFile(index+1));
		    temp = fileName.getName();
	        name = "\n        "+temp;
		    videoLabel.setText(name);
		
		    switchMusic(index+1);
		}
	    else{
		//Change the name of video file accordingly
		   fileName = new File(VIDEO_PATHS.getFile(0));
		   temp = fileName.getName();
	       name = "\n        "+temp;
		   videoLabel.setText(name);
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
	
            //List<String> list = Arrays.asList(VIDEO_PATHS.videoPaths);
            //Collections.shuffle(list);
			VIDEO_PATHS.shuffle();
            //VIDEO_PATHS.videoPaths = list.toArray(new String[0]);
            menuItem1.setText((new File(VIDEO_PATHS.getFile(0))).getName());
            menuItem2.setText((new File(VIDEO_PATHS.getFile(1))).getName());
            menuItem3.setText((new File(VIDEO_PATHS.getFile(2))).getName());
            menuItem4.setText((new File(VIDEO_PATHS.getFile(3))).getName());
            menuItem5.setText((new File(VIDEO_PATHS.getFile(4))).getName());
            menuItem6.setText((new File(VIDEO_PATHS.getFile(5))).getName());
            menuItem7.setText((new File(VIDEO_PATHS.getFile(6))).getName());
		});
        // Set up play/pause button
        playButton.setOnAction(event -> {
            if (mediaPlayer.getStatus() == Status.PLAYING) {
                mediaPlayer.pause();
                playButton.setGraphic(new ImageView(new Image("Images/pause_button.png")));
                
            } else {
                mediaPlayer.play();
                playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
            }
        });
        
		//resize Screen action event
		resizeScreen.setOnAction(event -> {
            Stage stage = (Stage) mediaView.getScene().getWindow();
            if (stage.isFullScreen()) {
               stage.setFullScreen(false);
			   HBox.setMargin(menuBar, new Insets(0, 0, 0, 490));
			   resizeScreen.setGraphic(new ImageView("Images/full_screen_button.png"));
            } else {
               stage.setFullScreen(true);
			   HBox.setMargin(menuBar, new Insets(0, 0, 0, 1290));
			   resizeScreen.setGraphic(new ImageView("Images/small_screen_button.png"));
         }
    });
		
        // Set up next/previous buttons
        nextButton.setOnAction(event -> {
            currentMusicIndex = (currentMusicIndex + 1) % VIDEO_PATHS.getLength();
            playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
			
			fileName = new File(VIDEO_PATHS.getFile(currentMusicIndex));
			temp = fileName.getName();
		    name = "\n        "+temp;
			videoLabel.setText(name);
			
			switchMusic(currentMusicIndex);
        });
        prevButton.setOnAction(event -> {
            currentMusicIndex = (currentMusicIndex - 1 + VIDEO_PATHS.getLength()) % VIDEO_PATHS.getLength();
            playButton.setGraphic(new ImageView(new Image("Images/play_button.png")));
			
			//Change the name of video file accordingly
			fileName = new File(VIDEO_PATHS.getFile(currentMusicIndex));
			temp = fileName.getName();
		    name = "\n        "+temp;
			videoLabel.setText(name);
			
			switchMusic(currentMusicIndex);
        });
        
		//Action event on sound adjust button
		// Create the button and slider
        Slider soundSlider = new Slider(0, 1, 0.5); // min value, max value, default value

        // Add a click event listener to the button
        soundButton.setOnAction(event -> {
        // Create a new stage for the sound slider
        Stage soundStage = new Stage();
        soundStage.initModality(Modality.APPLICATION_MODAL); // prevent user interaction with main window
        soundStage.setTitle("Adjust Sound");

       // Create a VBox to hold the slider
       VBox soundBox = new VBox();
       soundBox.setPadding(new Insets(10));
       soundBox.setAlignment(Pos.CENTER);

       // Add the slider to the VBox
       soundBox.getChildren().add(soundSlider);

       // Add the VBox to the scene and set the scene to the stage
       Scene soundScene = new Scene(soundBox);
       soundStage.setScene(soundScene);

       // Show the stage and wait for it to be closed
       soundStage.showAndWait();

      // Adjust the sound of the media player based on the slider value
      mediaPlayer.setVolume(soundSlider.getValue());
    });

        // Create the button container and add it to the bottom of the screen
        HBox buttonBox = new HBox(10);
        buttonBox.setPadding(new Insets(10));
        buttonBox.setAlignment(Pos.CENTER);

        buttonBox.getChildren().addAll(resizeScreen,shuffle,prevButton,playButton,nextButton,replay,soundButton);

        
        root.setMargin(slider, new Insets(10, 10, 0, 10));
		
		VBox vbox = new VBox();
		vbox.getChildren().addAll(slider,buttonBox);
		
        root.setBottom(vbox);

        primaryStage.setScene(scene);
		primaryStage.setTitle("Video Player 2.0");
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

    return box;
}

    private void switchMusic(int index) {
        // Pause current music
        mediaPlayer.stop();
        
        // Load and play new music
        Media media = new Media(VIDEO_PATHS.getFile(index));
        mediaPlayer = new MediaPlayer(media);
        mediaView.setMediaPlayer(mediaPlayer);
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
        int ind = Arrays.asList(VIDEO_PATHS.videoPaths).indexOf(media.getSource());
        if (index < VIDEO_PATHS.getLength() - 1){
		//Change the name of video file accordingly
		    fileName = new File(VIDEO_PATHS.getFile(index+1));
		    temp = fileName.getName();
	        name = "\n        "+temp;
		    videoLabel.setText(name);
		
		    switchMusic(index+1);
		}
	    else{
		//Change the name of video file accordingly
		   fileName = new File(VIDEO_PATHS.getFile(0));
		   temp = fileName.getName();
	       name = "\n        "+temp;
		   videoLabel.setText(name);
		   switchMusic(0);
		}
   });
}
    public static void main(String[] args) {
        launch(args);
    }
}