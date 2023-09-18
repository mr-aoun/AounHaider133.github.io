import java.sql.*;

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
public String getRecord(String fName, String lName, String password) {
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
            String hint = rs.getString("Hint");

            // Concatenate the record fields with a space separator
            record = retrievedFName + " " + retrievedLName + " " + retrievedAge + " " + retrievedPassword + " " + retrievedGender + " " + retrievedEmail + " "+hint;
        } else {
            System.out.println("User with fName " + fName + ", lName " + lName + ", and password " + password + " does not exist.");
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

}

public class UserTest {
    public static void main(String[] args) {
            
            // Create a User object and insert it into the table
            User users = new User("Aoun", "Haider", 20, "Male", "as55@@11","Light");
            users.insert("Areez", "Khan", 19, "Male", "bs51@#22","Heavy");
            users.insert("Areez", "Khan", 19, "Male", "bs58@#22","Medium");
            users.insert("Aoun", "Haider", 21, "Male", "as52&&11","All");
            System.out.println(users.isUserExist("Areez", "Khan"));
			
            users.display();       
			System.out.printf("Record fetched:%s",users.getRecord("Aoun","Haider","as55@@11"));
    }
}