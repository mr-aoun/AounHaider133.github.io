import java.lang.System;
import javafx.application.Application;
import javafx.application.Platform;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.scene.control.*;
import javafx.scene.text.*;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.Pane;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.event.ActionEvent;
import java.sql.*;


class Player {
    private String username;
    private String password;

    public Player(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // Getters for username and password
    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
	
	public void setUsername(String username){
		this.username = username;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
}

class Level {
    private String levelName;

    public Level(String levelName) {
        this.levelName = levelName;
    }

    public String getLevelName() {
        return levelName;
    }

    public void setLevelName(String levelName) {
        this.levelName = levelName;
    }
}

class Category {
    private String categoryName;

    public Category(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}
class Game {
    private Player player;
    private Level level;
    private Category category;
    private int score;

    public Game(Player player, Level level, Category category, int score) {
        this.player = player;
        this.level = level;
        this.category = category;
        this.score = score;
    }

    public Player getPlayer() {
        return player;
    }

    public void setPlayer(Player player) {
        this.player = player;
    }

    public Level getLevel() {
        return level;
    }

    public void setLevel(Level level) {
        this.level = level;
    }
	 public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}

class Question {
    private String questionText;
    private boolean answer;

    public Question(String questionText, boolean answer) {
        this.questionText = questionText;
        this.answer = answer;
    }

    public String getQuestionText() {
        return questionText;
    }

    public void setQuestionText(String questionText) {
        this.questionText = questionText;
    }

    public boolean getAnswer() {
        return answer;
    }

    public void setAnswer(boolean answer) {
        this.answer = answer;
    }
}

class Ranking {
    private String playerName;
    private int totalScore;

    public Ranking(String playerName, int totalScore) {
        this.playerName = playerName;
        this.totalScore = totalScore;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public int getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(int totalScore) {
        this.totalScore = totalScore;
    }
}



public class GameProject extends Application{

 private static final String DB_URL = "jdbc:mysql://localhost:3306/ooseGame";
 private static final String DB_USER = "root";
 private static final String DB_PASSWORD = "Sj996sel";
Scene scene,scene1,scene2,scene3,scene4,scene5,scene6,scene7,scene8,scene9;
Connection conn;
private Player currentPlayer;
private Level selectedLevel;
private Category selectedCategory;
private Question currentQuestion;
private Stage primaryStage;



@Override
public void start(Stage primaryStage){

try{
GridPane grid = new GridPane();
grid.setPadding(new Insets(40));
grid.setVgap(30);
grid.setHgap(30);


Button login = new Button ("login");
login.setOnAction(e -> primaryStage.setScene(scene1));
Button signup = new Button ("signup");
signup.setOnAction(e -> primaryStage.setScene(scene2));
grid.add(login,2,3);
grid.add(signup,3,3);
scene = new Scene(grid,400,700);
///////////////////////////login///////////////
GridPane grid1 = new GridPane();
        grid1.setAlignment(Pos.CENTER);
        grid1.setHgap(10);
        grid1.setVgap(10);
        grid1.setPadding(new Insets(25));

        Label usernameLabel = new Label("Username:");
        grid1.add(usernameLabel, 0, 0);

        TextField usernameField = new TextField();
        grid1.add(usernameField, 1, 0);

        Label passwordLabel = new Label("Password:");
        grid1.add(passwordLabel, 0, 1);

        PasswordField passwordField = new PasswordField();
        grid1.add(passwordField, 1, 1);

        Button loginButton = new Button("Login");
        grid1.add(loginButton, 1, 2);

        Label statusLabel = new Label();
        grid1.add(statusLabel, 0, 3, 2, 1);
		
		 loginButton.setOnAction(event -> {
            String username = usernameField.getText();
            String password = passwordField.getText();

            if (validateLogin(username, password)) {
                statusLabel.setText("Login successful!");
				 primaryStage.setScene(scene3);
                // Perform additional actions after successful login
                // For example, open a new window or load user data
            } else {
                statusLabel.setText("Invalid username or password!");
            }
        });


scene1 = new Scene(grid1,400,700);

///////////////////////////////signup////////////////
GridPane grid2 = new GridPane();
        grid2.setAlignment(Pos.CENTER);
        grid2.setHgap(10);
        grid2.setVgap(10);
        grid2.setPadding(new Insets(25));

        Label usernameLabel1 = new Label("Username:");
        grid2.add(usernameLabel1, 0, 0);

        TextField usernameField1 = new TextField();
        grid2.add(usernameField1, 1, 0);

        Label passwordLabel1 = new Label("Password:");
        grid2.add(passwordLabel, 0, 1);

        PasswordField passwordField1 = new PasswordField();
        grid2.add(passwordField, 1, 1);

        Button signupButton = new Button("Signup");
        grid2.add(signupButton, 1, 2);
		
		 Label statusLabel1 = new Label();
        grid2.add(statusLabel, 0, 3, 2, 1);

        signupButton.setOnAction(event -> {
            String username = usernameField.getText();
            String password = passwordField.getText();

            if (username.isEmpty() || password.isEmpty()) {
                statusLabel.setText("Please enter a username and password!");
            } else {
                Player player = new Player(username, password);
                if (signupPlayer(player)) {
                    statusLabel.setText("Signup successful!");
					 primaryStage.setScene(scene3);
                    // Perform additional actions after successful signup
                    // For example, redirect to the login page
                } else {
                    statusLabel.setText("Failed to signup. Please try again!");
                }
            }
        });


scene2 = new Scene(grid2,400,700);
/////////////////////////////////homepage//////////////////
GridPane grid3 = new GridPane();
grid3.setPadding(new Insets(40));
grid3.setVgap(20);
grid3.setHgap(20);

Button profile1 = new Button ("profile");
profile1.setOnAction(e -> primaryStage.setScene(scene4));
Button start = new Button ("start");
start.setOnAction(e -> primaryStage.setScene(scene5));
Button score = new Button ("score");
score.setOnAction(event -> showGameScores());
Button ranking = new Button ("ranking");
ranking.setOnAction(e -> primaryStage.setScene(scene6));
Button exit = new Button ("exit");
exit.setOnAction((ActionEvent event)->{Platform.exit();});
grid3.add(profile1,2,3);
grid3.add(start,2,4);
grid3.add(score,2,5);
grid3.add(ranking,2,6);
grid3.add(exit,2,7);
scene3 = new Scene(grid3,400,700);
///////////////////////////////////profile/////////////
  GridPane grid4 = new GridPane();
        grid4.setAlignment(Pos.CENTER);
        grid4.setHgap(10);
        grid4.setVgap(10);
        grid4.setPadding(new Insets(25));

        Label usernameLabel2 = new Label("Username:");
        grid4.add(usernameLabel2, 0, 0);

        TextField usernameField2 = new TextField();
        grid4.add(usernameField2, 1, 0);

        Label passwordLabel2 = new Label("Password:");
        grid4.add(passwordLabel2, 0, 1);

        PasswordField passwordField2 = new PasswordField();
        grid4.add(passwordField2, 1, 1);

        Button updateButton = new Button("Update Profile");
        grid4.add(updateButton, 1, 2);

        Label statusLabel2 = new Label();
        grid4.add(statusLabel2, 0, 3, 2, 1);
		
		//currentPlayer = new Player("Aoun","123");
		currentPlayer = new Player(usernameField.getText().toString(),passwordField.getText().toString());
		// Populate the fields with the current player's data
        usernameField.setText(currentPlayer.getUsername());
        passwordField.setText(currentPlayer.getPassword());

        updateButton.setOnAction(event -> {
    if (this.currentPlayer != null) {
        String newUsername = usernameField.getText();
        String newPassword = passwordField.getText();

        if (newUsername.isEmpty() || newPassword.isEmpty()) {
            statusLabel.setText("Please enter a username and password!");
        } else {
            this.currentPlayer.setUsername(newUsername);
            this.currentPlayer.setPassword(newPassword);

            if (updatePlayer(this.currentPlayer)) {
                statusLabel.setText("Profile updated successfully!");
                primaryStage.setScene(scene3);
            } else {
                statusLabel.setText("Failed to update profile. Please try again!");
            }
        }
    } else {
        statusLabel.setText("No player is currently logged in!");
    }
});


scene4 = new Scene(grid4,400,700);
///////////////////////////////startgame////////////
GridPane grid5 = new GridPane();
        grid5.setAlignment(Pos.CENTER);
        grid5.setHgap(10);
        grid5.setVgap(10);
        grid5.setPadding(new Insets(25));

        Label levelLabel = new Label("Select Level:");
        grid5.add(levelLabel, 0, 0);

        ComboBox<Level> levelComboBox = new ComboBox<>();
        levelComboBox.getItems().addAll(
                new Level("Easy"),
                new Level("Medium"),
                new Level("Hard")
        );
        grid5.add(levelComboBox, 1, 0);

        Label categoryLabel = new Label("Select Category:");
        grid5.add(categoryLabel, 0, 1);
		
		ComboBox<Category> categoryComboBox = new ComboBox<>();
        categoryComboBox.getItems().addAll(
                new Category("Film"),
                new Category("Music"),
                new Category("Entertainment"),
                new Category("Facts")
        );
        grid5.add(categoryComboBox, 1, 1);

        Button startButton = new Button("Start Game");
        grid5.add(startButton, 1, 2);

        startButton.setOnAction(event -> {
            selectedLevel = levelComboBox.getValue();
            selectedCategory = categoryComboBox.getValue();

            if (selectedLevel != null && selectedCategory != null) {
                loadNextQuestion();
            } else {
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Error");
                alert.setHeaderText(null);
                alert.setContentText("Please select a level and category!");
                alert.showAndWait();
            }
        });
		

scene5 = new Scene(grid5,400,700);


 GridPane grid7 = new GridPane();
        grid7.setAlignment(Pos.CENTER);
        grid7.setHgap(10);
        grid7.setVgap(10);
        grid7.setPadding(new Insets(25));

        // ... Implement login, signup, and other UI here ...

        Button rankingButton = new Button("Ranking");
        grid7.add(rankingButton, 1, 4);

        rankingButton.setOnAction(event -> showPlayerRankings());

scene7 = new Scene(grid7,400,700);

primaryStage.setTitle("GAME");
primaryStage.setScene(scene);
primaryStage.show();}
 catch (NullPointerException e) {
        // Handle the exception here
        System.out.println("Error: currentPlayer is null");
        e.printStackTrace();
        // Perform any necessary error handling or recovery
    }
}
 private boolean validateLogin(String username, String password) {
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM players WHERE username = ? AND password = ?")) {
            stmt.setString(1, username);
            stmt.setString(2, password);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                String dbUsername = rs.getString("username");
                String dbPassword = rs.getString("password");
                currentPlayer = new Player(dbUsername, dbPassword);
                return true;
            }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
		  return false;

    }

  private boolean signupPlayer(Player player) {
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO players (username, password) VALUES (?, ?)")) {
            stmt.setString(1, player.getUsername());
            stmt.setString(2, player.getPassword());

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0; // Returns true if at least one row was inserted
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

 private boolean updatePlayer(Player player) {
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement("UPDATE players SET username = ?, password = ? WHERE username = ?")) {
            stmt.setString(1, player.getUsername());
            stmt.setString(2, player.getPassword());
            stmt.setString(3, player.getUsername());

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0; // Returns true if at least one row was updated
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

 private void loadNextQuestion() {
        // Retrieve the next question from the database based on the selected level and category

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement("SELECT text, answer FROM questions WHERE level = ? AND category = ? LIMIT 1")) {
            stmt.setString(1, selectedLevel.getLevelName());
            stmt.setString(2, selectedCategory.getCategoryName());

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String text = rs.getString("text");
                boolean answer = rs.getBoolean("answer");
                currentQuestion = new Question(text, answer);
                displayQuestion();
            } else {
                // No more questions available
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Game Over");
                alert.setHeaderText(null);
                alert.setContentText("No more questions available for the selected level and category.");
                alert.showAndWait();
				primaryStage.setScene(scene3);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
		catch (NullPointerException e) {
        e.printStackTrace();
    }
    }

   private void displayQuestion() {
        // Display the current question with true/false buttons and handle the answer

        Stage questionStage = new Stage();
        questionStage.setTitle("Question");

        GridPane grid9 = new GridPane();
        grid9.setAlignment(Pos.CENTER);
        grid9.setHgap(10);
        grid9.setVgap(10);
        grid9.setPadding(new Insets(25));

        Label questionLabel = new Label(currentQuestion.getQuestionText());
        grid9.add(questionLabel, 0, 0, 2, 1);

        Button trueButton = new Button("True");
        Button falseButton = new Button("False");

        trueButton.setOnAction(event -> handleAnswer(true));
        falseButton.setOnAction(event -> handleAnswer(false));

        grid9.add(trueButton, 0, 1);
        grid9.add(falseButton, 1, 1);

        scene9 = new Scene(grid9, 300, 200);
        questionStage.setScene(scene);
        questionStage.show();
    }
	
private void handleAnswer(boolean userAnswer) {
        // Compare the user's answer with the correct answer and show a message

        boolean correctAnswer = currentQuestion.getAnswer();
        String message;

        if (userAnswer == correctAnswer) {
            message = "Correct!";
        } else {
            message = "Incorrect!";
        }

        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Answer");
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.showAndWait();

        // Load the next question
        loadNextQuestion();
    }

private void showGameScores() {
        Stage scoreStage = new Stage();
        scoreStage.setTitle("Game Scores");

        GridPane grid6 = new GridPane();
        grid6.setAlignment(Pos.CENTER);
        grid6.setHgap(10);
        grid6.setVgap(10);
        grid6.setPadding(new Insets(25));

        int rowIndex = 0;

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT player, level, category, score FROM Game WHERE player = '" + currentPlayer.getUsername() + "'")) {

            while (rs.next()) {
                String player = rs.getString("player");
                String level = rs.getString("level");
                String category = rs.getString("category");
                int score = rs.getInt("score");

                Label gameLabel = new Label("Game: Player=" + player + ", Level=" + level + ", Category=" + category + ", Score=" + score);
                grid6.add(gameLabel, 0, rowIndex);
                rowIndex++;
            }
			primaryStage.setScene(scene3);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		  scene6 = new Scene(grid6, 400, 300);
        scoreStage.setScene(scene6);
        scoreStage.show();
    }

 private void showPlayerRankings() {
        Stage rankingStage = new Stage();
        rankingStage.setTitle("Player Rankings");

        GridPane grid8 = new GridPane();
        grid8.setAlignment(Pos.CENTER);
        grid8.setHgap(10);
        grid8.setVgap(10);
        grid8.setPadding(new Insets(25));

        int rowIndex = 0;

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT players, SUM(score) AS total_score FROM Game GROUP BY players ORDER BY total_score DESC")) {

            while (rs.next()) {
                String player = rs.getString("player");
                int totalScore = rs.getInt("total_score");

                Ranking ranking = new Ranking(player, totalScore);

                Label rankingLabel = new Label("Rank " + (rowIndex + 1) + ": " + ranking.getPlayerName() + " - Total Score: " + ranking.getTotalScore());
                grid8.add(rankingLabel, 0, rowIndex);
                rowIndex++;
            }
			 primaryStage.setScene(scene3);
			 } catch (SQLException e) {
            e.printStackTrace();
        }

        scene8 = new Scene(grid8, 400, 300);
        rankingStage.setScene(scene8);
        rankingStage.show();
    }

}