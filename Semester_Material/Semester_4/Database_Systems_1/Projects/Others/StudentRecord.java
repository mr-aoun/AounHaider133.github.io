import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

public class StudentRecord {
    public static void main(String[] args) {
        // MySQL database credentials
        String url = "jdbc:mysql://localhost:3306/CUI?useSSL=true&serverTimezone=UTC";
        String username = "root";
        String password = "javascript";
        
        // JDBC variables
        Connection connection = null;
        Statement statement = null;
        PreparedStatement preparedStatement = null;
        
        try {
            // Establish a connection to the MySQL server
            connection = DriverManager.getConnection(url, username, password);
            
            // Create the database if it doesn't already exist
            String dbName = "CUI";
            statement = connection.createStatement();
            String sql = "CREATE DATABASE IF NOT EXISTS " + dbName;
            statement.executeUpdate(sql);
            
            // Use the database
            connection.setCatalog(dbName);
            
            // Create the User table if it doesn't already exist
            String tableSql = "create table if not exists User (fName VARCHAR(40),lName VARCHAR(40),Email VARCHAR(60),Age int, Password VARCHAR(8) primary key);";
            //statement.executeUpdate(tableSql);
            int rowsCreated = statement.executeUpdate(tableSql);
            
            // Prepare the SQL statement to insert the student record
            String insertSql = "INSERT INTO User (fName,lName,Email,Age,Password) VALUES (?, ?, ?, ?,?);";
			
            preparedStatement = connection.prepareStatement(insertSql);
			
			//Inserting data into table
            preparedStatement.setString(1, "Aoun");
            preparedStatement.setString(2, "Haider");
            preparedStatement.setString(3, "AounHaider@gmail.com");
            preparedStatement.setInt(4, 19);
            preparedStatement.setString(5, "12$@ss54");
            
            // Execute the SQL statement and insert the student record into the User table
            int rowsInserted = preparedStatement.executeUpdate();
			
            
            // Prepare the SQL statement to retrieve the student records from the User table
            
			String selectSql = "SELECT * FROM CUI.User";
            statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectSql);
            ResultSetMetaData metaData = resultSet.getMetaData();
			int cols = metaData.getColumnCount();
			
			System.out.println("Student records:");
			//Display attributes names
			for(int i=1;i<=cols;i++)
				System.out.printf("%-8s ",metaData.getColumnName(i));
			System.out.println();
			
            // Display the student records
            
            while (resultSet.next()) {
				
                String studentfName = resultSet.getString("fName");
                String studentlName = resultSet.getString("lName");
                int studentAge = resultSet.getInt("Age");
				String pass = resultSet.getString("Password");
				String email = resultSet.getString("Email");
                System.out.println(studentfName + "      " + studentlName + "     " + studentAge+"     "+pass+"    "+email);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        } finally {
            try {
                // Close the JDBC objects in the reverse order of their creation to avoid resource leaks
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.out.println("Error: " + e.getMessage());
            }
        }
    }
}
