package dbutil;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.model.Stock;

public class StockDAO {
	JdbcTemplate jdbct = new JdbcTemplate(MyDatabase.getDataSource());
//the detail impl for all CRUD methods here

//getAll
public List<Stock> getAll(){
	String sql = "select * from Stock";
	List<Stock> iList = jdbct.query(sql, new BeanPropertyRowMapper<Stock>(Stock.class));
	return iList;
}
public double findPriceByName(String name) {
	String sql = "select unitPrice from Stock where name = ?";
	Stock inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Stock>(Stock.class),name);
        if(inst!=null)
          return inst.getUnitPrice();
	return 0;
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
	String sql = "insert into Stock (name,description,quantity,unitPrice,image,origin,refNo,arrDate,expDate) values (?,?,?,?,?,?,?,?,?)";
	Object args[] = {inst.getName(),inst.getDescription(),inst.getQuantity(),inst.getUnitPrice(),inst.getImage(),inst.getOrigin(),inst.getRefNo(),inst.getArrDate(),inst.getExpDate()}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

//update - complete this
public int update(Stock inst, int id) {
	String sql = "Update Stock SET image=?, name=?,description=?,quantity=?,origin=?,refNo=?,arrDate=?,expDate=? unitPrice=? where id=?";
	Object args[] = {inst.getImage(),inst.getName(),inst.getDescription(),inst.getQuantity(),inst.getOrigin(),inst.getRefNo(),inst.getArrDate(),inst.getExpDate(),inst.getUnitPrice(),id}; 
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

}
