package dbutil;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.model.Stock;

public class StockDAO {
JdbcTemplate jdbct = new JdbcTemplate((javax.sql.DataSource) getDataSource());
//the detail impl for all CRUD methods here

//getAll
public List<Stock> getAll(){
	String sql = "select * from Stock";
	List<Stock> iList = jdbct.query(sql, new BeanPropertyRowMapper<Stock>(Stock.class));
	return iList;
}
public Stock findById(int id) {
	String sql = "select * from Stock where id = ?";
	Stock inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Stock>(Stock.class),id);
	return inst;
}
public Stock findByUP(String username, String password) {
	String sql = "select * from Stock where username = ? AND password = ?";
	Stock inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Stock>(Stock.class),username,password);
	return inst;
}
//add
public int add(Stock inst) {
	String sql = "insert into Stock (name,quantity,origin,refNo,arrDate,expDate) values (?,?,?,?,?,?)";
	Object args[] = {inst.getName(),inst.getQuantity(),inst.getOrigin(),inst.getRefNo(),inst.getArrDate(),inst.getExpDate()}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

//update - complete this
public int update(Stock inst, int id) {
	String sql = "Update Stock SET name=?,quantity=?,origin=?,refNo=?,arrDate=?,expDate=? where id=?";
	Object args[] = {inst.getName(),inst.getQuantity(),inst.getOrigin(),inst.getRefNo(),inst.getArrDate(),inst.getExpDate(),id}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

//delete - complete this
public int delete(int id) {
	String sql = "Delete from Stock where id =?";
	Object args[] = {id};
	int rowAffected = jdbct.update(sql,args);
	return rowAffected;
}
public DataSource getDataSource() {
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
}
}
