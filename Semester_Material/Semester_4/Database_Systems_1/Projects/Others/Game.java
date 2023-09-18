import java.lang.System;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.io.File;  // Import the File class
import java.io.IOException;
import java.io.FileNotFoundException;


class User {
    private String username;
    private String password;

    public User(String username, String password) {
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
}

class Question {
    private String statement;
    private boolean answer;

    public Question(String statement, boolean answer) {
        this.statement = statement;
        this.answer = answer;
    }

    // Getters for statement and answer
    public String getStatement() {
        return statement;
    }

    public boolean isAnswer() {
        return answer;
    }
}

class Quiz {
    private List<Question> questions;
    private int score;
	 private String playerName;
    private String level;
    private String category;

    public Quiz(String playerName, String level, String category) {
        questions = new ArrayList<>();
        score = 0;
        this.playerName = playerName;
        this.level = level;
		this.category= category;
       
    }

    public void startQuiz() {
		  System.out.println("Player NAME: " + playerName);
		    System.out.println("LEVEL: " + level);
			  System.out.println("CATEGORY: " + category);
		
        Scanner scanner = new Scanner(System.in);
        
        List<Question> selectedQuestions;
 System.out.println("----- Quiz Game -----");
        System.out.println("1. EASY");
        System.out.println("2. MEDIUM");
		System.out.println("3. HARD");
        System.out.print("Enter your choice: ");
        int stage = scanner.nextInt();
        scanner.nextLine();
        switch (stage) {
            case 1:
                selectedQuestions = selectEasyQuestions(category);
				level = "easy";
                break;
            case 2:
                selectedQuestions = selectMediumQuestions(category);
				level = "medium";
                break;
            case 3:
                selectedQuestions = selectHardQuestions(category);
                level = "hard";
				break;
            default:
                System.out.println("Invalid choice. Starting with default questions.");
                selectedQuestions = questions;
                break;
        } 
       
        
        for (Question question : selectedQuestions) {
            System.out.println(question.getStatement());
            System.out.print("Enter 'true' or 'false': ");
            boolean userAnswer = scanner.nextBoolean();
            if (userAnswer == question.isAnswer()) {
                System.out.println("Correct!");
                score++;
            } else {
                System.out.println("Incorrect!");
            }
        }
        System.out.println("Quiz completed. Your score: " + score);
		saveScoreToFile();
    }
	

	 
  private List<Question> selectEasyQuestions(String category) {
	          Scanner scanner = new Scanner(System.in);
        List<Question> easyQuestions = new ArrayList<>();
        System.out.println("----- Quiz Game -----");
        System.out.println("Film");
        System.out.println("Music");
		System.out.println("Entertainment");
		System.out.println("Facts");
        System.out.print("Enter your choice: ");
        String option = scanner.nextLine();
        switch (option) {
            case "Film":
                // Select film category questions for easy difficulty
                easyQuestions.add(new Question(" The film The Lion King was released in 1994.", true));
                easyQuestions.add(new Question(" The movie Jurassic Park is based on a novel by Michael Crichton.", true));
                easyQuestions.add(new Question("The character Darth Vader appears in the Star Wars film series.", true));
                easyQuestions.add(new Question("The Wizard of Oz was originally released in color.", false));
                easyQuestions.add(new Question("Tom Hanks played the character Forrest Gump in the film of the same name.", true));
                category = "Film";
				break;
            case "Music":
                // Select music category questions for easy difficulty
                easyQuestions.add(new Question("Michael Jackson's album Thriller is the best-selling album of all time.", true));
                easyQuestions.add(new Question("Beyoncé was a member of the girl group Destiny's Child.", true));
                easyQuestions.add(new Question("Bob Marley was a reggae musician from Itly. ", false));
                easyQuestions.add(new Question("Madonna's real name is Madonna Louise Ciccone. ", true));
                easyQuestions.add(new Question("Elvis Presley is known as the King of Rock and Roll", true));
                category = "Music";
				break;
            case "Entertainment":
                // Select entertainment category questions for easy difficulty
                easyQuestions.add(new Question("The television show Friends is set in New York City. ", true));
                easyQuestions.add(new Question("The Simpsons is the longest-running animated TV series in history.", true));
                easyQuestions.add(new Question("Taylor Swift is known for her country music.", false));
                easyQuestions.add(new Question("The character Tony Stark is also known as Iron Man in the Marvel Cinematic Universe.", true));
                easyQuestions.add(new Question("The Big Bang Theory is a sitcom about a group of scientists.", true));
                category = "Entertainment";
				break;
            case "Facts":
                // Select facts category questions for easy difficulty
                easyQuestions.add(new Question("The Earth revolves around the Sun.", true));
                easyQuestions.add(new Question("Water boils at 169 degrees Celsius at sea level.", false));
                easyQuestions.add(new Question(" The human body has 206 bones. ", true));
                easyQuestions.add(new Question("The capital of Canada is Ottawa.", true));
                easyQuestions.add(new Question("Mount Everest is the tallest mountain in the world", true));
                category = "Facts";
				break;
            default:
                System.out.println("Invalid category choice. Starting with default questions.");
                easyQuestions = questions;
                break;
        }
        saveScoreToFile();
        return easyQuestions;
    }
    
    private List<Question> selectMediumQuestions(String category) {
		        Scanner scanner = new Scanner(System.in);
        List<Question> mediumQuestions = new ArrayList<>();
        System.out.println("----- Quiz Game -----");
        System.out.println("Film");
        System.out.println("Music");
		System.out.println("Entertainment");
		System.out.println("Facts");
        System.out.print("Enter your choice: ");
        String option = scanner.nextLine();
        switch (option) {
            case "Film":
                // Select film category questions for medium difficulty
                mediumQuestions.add(new Question("The film Pulp Fiction was directed by Quentin Tarantino.", true));
                mediumQuestions.add(new Question("The movie Gone with the Wind won the Academy Award for Best Picture in 1939.", true));
                mediumQuestions.add(new Question("The Lord of the Rings film trilogy was directed by Steven Spielberg.", false));
                mediumQuestions.add(new Question("The character Jack Sparrow is portrayed by Johnny Depp in the Pirates of the Caribbean film series.", true));
                mediumQuestions.add(new Question("The movie Inception was directed by Christopher Nolan.", true));
                category = "Film";
                break;
            case "Music":
                // Select music category questions for medium difficulty
                mediumQuestions.add(new Question("Freddie Mercury was the lead vocalist of the band Queen. ", true));
                mediumQuestions.add(new Question("The song Sweet Child o' Mine was released by the band Guns N' Roses.", true));
                mediumQuestions.add(new Question("Adele's hit song Rolling in the Deep was released in 2010.", true));
                mediumQuestions.add(new Question(" Beyoncé's debut solo album is titled Dangerously in Love", true));
                mediumQuestions.add(new Question("The artist Bruno Mars was born in Puerto Rico.", false));
                category = "Music";
                break;
            case "Entertainment":
                // Select entertainment category questions for medium difficulty
                mediumQuestions.add(new Question(" The TV show Breaking Bad originally aired on HBO", true));
                mediumQuestions.add(new Question("Grey's Anatomy is a medical drama series set in Seattle", true));
                mediumQuestions.add(new Question("The character Walter White is portrayed by Bryan Cranston in the TV series Breaking Bad ", true));
                mediumQuestions.add(new Question("The animated TV show Family Guy is created by Seth MacFarlane. ", true));
                mediumQuestions.add(new Question("Stranger Things is set in the 1980s. ", true));
                category = "Entertainment";
                break;
            case "Facts":
                // Select facts category questions for medium difficulty
               mediumQuestions.add(new Question("The Great Barrier Reef is the largest coral reef system in the world. ", true));
               mediumQuestions.add(new Question("Mount Kilimanjaro is the tallest mountain in Africa.", true));
               mediumQuestions.add(new Question("The chemical symbol for gold is Au", true));
               mediumQuestions.add(new Question("The human brain has four lobes: frontal, parietal,", true));
               mediumQuestions.add(new Question("The speed of sound is faster than the speed of light.", false));
               category = "Facts";               
			   break;
            default:
                System.out.println("Invalid category choice. Starting with default questions.");
                mediumQuestions = questions;
                break;
        }
        saveScoreToFile();
        return mediumQuestions;
    }
    
    private List<Question> selectHardQuestions(String category) {
		        Scanner scanner = new Scanner(System.in);
        List<Question> hardQuestions = new ArrayList<>();
       System.out.println("----- Quiz Game -----");
        System.out.println("Film");
        System.out.println("Music");
		System.out.println("Entertainment");
		System.out.println("Facts");
        System.out.print("Enter your choice: ");
        String option = scanner.nextLine();
        switch (option) {
            case "Film":
			category = "Film";
                // Select film category questions for hard difficulty
                hardQuestions.add(new Question("The Godfather film trilogy was directed by Martin Scorsese. ", false));
                hardQuestions.add(new Question("The film La La Land won the Best Picture Oscar in 2017.", false));
                hardQuestions.add(new Question("The movie Blade Runner was directed by Stanley Kubrick.", false));
                hardQuestions.add(new Question("Leonardo DiCaprio won an Academy Award for his role in the film The Revenant ", true));
                hardQuestions.add(new Question("The character Hannibal Lecter is portrayed by Anthony Hopkins in the Silence of the Lambs film series.", true));
                
				break;
            case "Music":
                // Select music category questions for hard difficulty
                hardQuestions.add(new Question("The band Led Zeppelin released the song Bohemian Rhapsody", false));
                hardQuestions.add(new Question("Mozart composed the classical symphony Symphony No. 9", false));
                hardQuestions.add(new Question("The album Back in Black is the highest-selling album of all time.", false));
                hardQuestions.add(new Question("The song Hotel California was performed by the band Eagles.", true));
                hardQuestions.add(new Question("David Bowie's real name is David Robert Jones.", true));
                category = "Music";
				break;
            case "Entertainment":
                // Select entertainment category questions for hard difficulty
                hardQuestions.add(new Question("The character Jim Halpert is played by John Krasinski in the TV series The Office", true));
                hardQuestions.add(new Question("The Walking Dead TV series is based on a comic book series by Robert Kirkman.", true));
                hardQuestions.add(new Question("The TV show Game of Thrones is based on a series of novels by J.R.R. Tolkien.", false));
                hardQuestions.add(new Question("The character Don Draper is portrayed by Jon Hamm in the TV series Mad Men", true));
                hardQuestions.add(new Question("The TV show Friends originally aired from 1990 to 1996", false));
                category = "Entertainment";
				break;
            case "Facts":
                // Select facts category questions for hard difficulty
                hardQuestions.add(new Question("The unit of measurement for electric current is the volt.", false));
                hardQuestions.add(new Question("The smallest country in the world by land area is Monaco.", true));
                hardQuestions.add(new Question("The speed of light in a vacuum is approximately 300,000 kilometers per second.", true));
                hardQuestions.add(new Question("The Earth's outer core is composed mainly of solid iron.", false));
                hardQuestions.add(new Question("The approximate age of the Earth is 4.5 billion years.", true));
                category = "Facts";
				break;
            default:
                System.out.println("Invalid category choice. Starting with default questions.");
                hardQuestions = questions;
                break;
        }
        saveScoreToFile();
        return hardQuestions;
    }
		 private void saveScoreToFile() {
        String filePath = "user_scores.txt";

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, true))) {
            writer.write(playerName + "," + level + "," + category + "," + score);
            writer.newLine();
            System.out.println("Score saved successfully!");
        } catch (IOException e) {
            System.out.println("An error occurred while saving the score.");
        }
    }
}  
  


class Menu {
    private Scanner scanner;
    private User currentUser;
    private static final String FILE_PATH = "user_details.txt";

    public Menu() {
        scanner = new Scanner(System.in);
        currentUser = null;
    }

    public void displayMenu() {
        System.out.println("----- Quiz Game -----");
        System.out.println("1. Login");
        System.out.println("2. Signup");
        System.out.print("Enter your choice: ");
        int choice = scanner.nextInt();
        scanner.nextLine(); // Consume newline character

        switch (choice) {
            case 1:
                login();
                break;
            case 2:
                signup();
                break;

            default:
                System.out.println("Invalid choice. Please try again.");
                displayMenu();
                break;
        }
    }

    private void login() {
        System.out.print("Enter username: ");
        String username = scanner.nextLine();
        System.out.print("Enter password: ");
        String password = scanner.nextLine();

        // Verify the login information from the file
        if (verifyLogin(username, password)) {
            currentUser = new User(username, password);
            System.out.println("Login successful!");
            showHomeScreen();
        } else {
            System.out.println("Invalid username or password. Please try again.");
            displayMenu();
        }
    }

   private boolean verifyLogin(String username, String password) {
    try (Scanner fileScanner = new Scanner(new File(FILE_PATH))) {
        while (fileScanner.hasNextLine()) {
            String line = fileScanner.nextLine();
            String[] parts = line.split(",");
            if (parts.length == 2 && parts[0].equals(username) && parts[1].equals(password)) {
                return true;
            }
        }
    } catch (FileNotFoundException e) {
        System.out.println("Error: File not found.");
    }

    return false;
}


private void signup() {
    System.out.print("Enter username: ");
    String username = scanner.nextLine();
    System.out.print("Enter password: ");
    String password = scanner.nextLine();

    // Store the signup details in the file
    try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH, true))) {
        writer.write(username + "," + password);
        writer.newLine();
        System.out.println("Signup successful!");
    } catch (IOException e) {
        System.out.println("An error occurred while storing signup details.");
    }

    displayMenu();
}



    private void showHomeScreen() {
        System.out.println("\n----- Home Screen -----");
        System.out.println("1. Profile");
        System.out.println("2. Performance");
        System.out.println("3. Start Game");
        System.out.println("4. Exit");
        System.out.print("Enter your choice: ");
        int choice = scanner.nextInt();
        scanner.nextLine(); // Consume newline character

        switch (choice) {
            case 1:
                System.out.println("\n----- User Profile -----");
                System.out.println("Username: " + currentUser.getUsername());
                showHomeScreen();
                break;
            case 2:
                System.out.println("\n----- Performance -----");
                // Display user's performance or quiz scores
				displayUserScores();
                showHomeScreen();
                break;
            case 3:
                System.out.println("\n----- Quiz Game -----");
                Quiz quiz = new Quiz(currentUser.getUsername(),"Null","Null");
                quiz.startQuiz();
                showHomeScreen();
                break;
            case 4:
                System.out.println("Exiting the quiz game. Goodbye!");
                System.exit(0);
                break;
            default:
                System.out.println("Invalid choice. Please try again.");
                showHomeScreen();
                break;
        }
    }
	 private void displayUserScores() {
    String filePath = "user_scores.txt";

    try (Scanner fileScanner = new Scanner(new File(filePath))) {
        while (fileScanner.hasNextLine()) {
            String line = fileScanner.nextLine();
            String[] parts = line.split(",");
            String playerName = parts[0];
            String level = parts[1];
            String category = parts[2];
            int score = Integer.parseInt(parts[3]);

            System.out.println("Player: " + playerName);
            System.out.println("Level: " + level);
            System.out.println("Category: " + category);
            System.out.println("Score: " + score);
            System.out.println();
        }
    } catch (FileNotFoundException e) {
        System.out.println("Error: File not found.");
    }
}

}

public class Game {
    public static void main(String[] args) {
        Menu menu = new Menu();
        menu.displayMenu();
    }
}
