/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ainin sofiya
 */
package lab6.com;
import java.sql.*;

public class Database {
    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3307/CSA3203", "root", "");
    }

    public static void closeConnection(Connection con) throws Exception {
        if(con != null) con.close();
    }
}

