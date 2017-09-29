package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Pracownik;

public class DostarczycielDanych {
    
    private static final String URL_BAZY = "jdbc:postgresql://localhost/hr";

    public List<Pracownik> getPracownicy() {
   	 final String sql = "SELECT first_name, last_name, salary, department_name, street_address || ', ' || city FROM employees JOIN departments USING(department_id) JOIN locations USING(location_id)";
   	 
   	 List<Pracownik> lista = new LinkedList<>();
   	 
   	 try {
   		 Class.forName("org.postgresql.Driver");
   		 
   		 try(Connection c = DriverManager.getConnection(URL_BAZY, "hr", "hr");
   			 PreparedStatement stmt = c.prepareStatement(sql);
   			 ResultSet rs = stmt.executeQuery()) {
   			 
   			 while(rs.next()) {
   				 Pracownik pracownik = new Pracownik(
   						 rs.getString(1),
   						 rs.getString(2),
   						 rs.getBigDecimal(3),
   						 rs.getString(4),
   						 rs.getString(5));
   				 
   				 lista.add(pracownik);
   			 }
   			 
   		 }
   	 } catch (SQLException e) {
   		 e.printStackTrace();
   	 } catch (ClassNotFoundException e) {
   		 e.printStackTrace();
   	 }
   	 return lista;
    }

}



