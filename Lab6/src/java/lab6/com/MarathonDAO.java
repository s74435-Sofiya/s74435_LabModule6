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

public class MarathonDAO {
    public int insertMarathon(Marathon m) throws Exception {
        Connection con = Database.getConnection();
        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO marathon VALUES (?, ?, ?, ?)");
        ps.setString(1, m.getMarathonId());
        ps.setString(2, m.getName());
        ps.setString(3, m.getCategory());
        ps.setString(4, m.getDistance());

        int result = ps.executeUpdate();
        Database.closeConnection(con);
        return result;
    }
}

