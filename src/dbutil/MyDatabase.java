package dbutil;

import javax.sql.DataSource;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class MyDatabase{
public static DataSource getDataSource() {
	DataSource ds =null;
	String dbURL = "jdbc:mysql://localhost:3306/healthera";
	String username = "root";
	String password ="";
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	}catch(ClassNotFoundException e) {
		
		e.printStackTrace();
	}
	ds = (DataSource) new DriverManagerDataSource(dbURL,username,password);
	return ds;
}}