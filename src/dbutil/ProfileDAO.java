package dbutil;

import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.model.Profile;

public class ProfileDAO {
JdbcTemplate jdbct = new JdbcTemplate(MyDatabase.getDataSource());
//the detail impl for all CRUD methods here

//getAll
public List<Profile> getAll(){
	String sql = "select * from Profile";
	List<Profile> iList = jdbct.query(sql, new BeanPropertyRowMapper<Profile>(Profile.class));
	return iList;
}
public Profile findById(int id) {
	String sql = "select * from Profile where id = ?";
	Profile inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Profile>(Profile.class),id);
	return inst;
}
public Profile findByUP(String username, String password) {
	String sql = "select * from Profile where username = ? AND password = ?";
	Profile inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Profile>(Profile.class),username,password);
	return inst;
}
public List<Profile> findByUTC(String userType) {
	String sql = "select * from Profile where userType = ?";
	List<Profile> inst = jdbct.query(sql, new BeanPropertyRowMapper<Profile>(Profile.class), userType);
	return inst;
}

//add
public int add(Profile inst) {
	String sql = "insert into Profile (name,username,email,password) values (?,?,?,?)";
	Object args[] = {inst.getName(),inst.getUsername(),inst.getEmail(),inst.getPassword()}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

//admin update customer
public int update(Profile inst, int id) {
	String sql = "Update Profile SET name=?,address=?,phone=?,email=? where id=?";
	Object args[] = {inst.getName(),inst.getAddress(),inst.getPhone(),inst.getEmail(),id}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

public int updateCust(Profile inst, int id) {
	String sql = "Update Profile SET name=?,address=?,phone=? where id=?";
	Object args[] = {inst.getName(),inst.getAddress(),inst.getPhone(),id}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

//update number of order
public int updateNumOrder(Profile inst, int id) {
	String sql = "Update Profile SET numOrder=? where id=?";
	Object args[] = {inst.getNumOrder(),id}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

//delete - complete this
public int delete(int id) {
	String sql = "Delete from Profile where id =?";
	Object args[] = {id};
	int rowAffected = jdbct.update(sql,args);
	return rowAffected;
}

}
