package dbutil;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.model.Order;
import com.model.Profile;

public class OrderDAO {
	JdbcTemplate jdbct = new JdbcTemplate(MyDatabase.getDataSource());
	//the detail impl for all CRUD methods here

	//getAll
	public List<Order> getAll(){
		String sql = "SELECT * FROM `order`";
		List<Order> iList = jdbct.query(sql, new BeanPropertyRowMapper<Order>(Order.class));
		return iList;
	}
	public Order findById(int id) {
		String sql = "SELECT * FROM `order` WHERE id = ?";
		Order inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Order>(Order.class),id);
		return inst;
	}
	public List<Order> findByCustId(int id) {
		String sql = "SELECT * FROM `order` WHERE customerID = ?";
		List<Order> inst = jdbct.query(sql, new BeanPropertyRowMapper<Order>(Order.class),id);
		return inst;
	}
	
	//add
	public int add(Order inst) {
		String sql = "insert into Order (item,quantity,unitPrice) values (?,?,?)";
		Object args[] = {inst.getItem(),inst.getQuantity(),inst.getUnitPrice()}; 
		int rowAffected = jdbct.update(sql, args);
		return rowAffected;
	}
	
	//add
		public int addNew(Order inst, int id) {
			final String OLD_FORMAT = "dd/MM/yyyy";
			String oldDateString = "12/08/2010";
			String newDateString;
			SimpleDateFormat sdf = new SimpleDateFormat(OLD_FORMAT);
			Date d = new Date();
			try {
				d = sdf.parse(oldDateString);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String sql = "INSERT INTO `order`(`item`, `quantity`, `unitPrice`, `status`, `orderDate`, `customerID`) VALUES (?,?,?,?,?,?)";
			Object args[] = {inst.getItem(),inst.getQuantity(),inst.getUnitPrice(),"",d, id}; 
			int rowAffected = jdbct.update(sql, args);
			return rowAffected;
		}

	//update - complete this
	public int update(Order inst, int id) {
		String sql = "UPDATE `order` SET `quantity`=?,`status`=?,`orderDate`=? WHERE `id`=?";
		Object args[] = {inst.getQuantity(),"Preparing",LocalDate.now(),id}; 
		int rowAffected = jdbct.update(sql, args);
		return rowAffected;
	}
	
	//updateStatus - complete this
		public int updateStatus(Order inst, int id) {
			String sql = "UPDATE `order` SET `status`=? WHERE `id`=?";
			Object args[] = {inst.getStatus(),id}; 
			int rowAffected = jdbct.update(sql, args);
			return rowAffected;
		}

	//delete - complete this
	public int delete(int id) {
		String sql = "DELETE FROM `order` WHERE id =?";
		Object args[] = {id};
		int rowAffected = jdbct.update(sql,args);
		return rowAffected;
	}
	
}
