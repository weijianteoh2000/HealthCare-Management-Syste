package dbutil;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.model.Goods;
import com.model.OrderStock;
import com.model.Supplier;

public class OrderStockDAO {
	JdbcTemplate jdbct = new JdbcTemplate(MyDatabase.getDataSource());
//the detail impl for all CRUD methods here

//getAll
public List<OrderStock> getAll(){
	String sql = "select * from OrderStock";
	List<OrderStock> iList = jdbct.query(sql, new BeanPropertyRowMapper<OrderStock>(OrderStock.class));
	return iList;
}
public OrderStock findById(int id) {
	String sql = "select * from OrderStock where id = ?";
	OrderStock inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<OrderStock>(OrderStock.class),id);
	return inst;
}
//return list of goods based on the particular orderID
public List<Goods> getGoods(int id){
	String sql = "select * from Goods where orderID = ?";
	List<Goods> inst = jdbct.query(sql, new BeanPropertyRowMapper<Goods>(Goods.class),id);
	return inst;
}
public void addGoods(OrderStock inst,int id) {
	List<Goods> allorders = inst.getOrders();
	for(Goods a:allorders) { 
		String sql = "Update Goods SET quantity=?,status=?,orderID=? where goodsID=?";
		Object goods[] = {a.getQuantity(),a.getStatus(),id,a.getGoodsID()};
		System.out.println("id:"+a.getGoodsID());
		System.out.println("quantity:"+a.getQuantity());
		jdbct.update(sql,goods);
	}
}
//add the OrderStock and the OrderStock's goods to database.
public void add(OrderStock inst) {
	String sql = ("insert into OrderStock (supplierName,time,status) values (?,?,?)");
	KeyHolder keyHolder = new GeneratedKeyHolder();
	jdbct.update(
			con -> {
	            PreparedStatement ps = con.prepareStatement(sql, new String[]{"id"});
	            ps.setString(1, inst.getSupplierName());
	            ps.setObject(2, (LocalDateTime)inst.getTime());
	            ps.setString(3, inst.getStatus());
			return ps;
			}, keyHolder
			);
	Number key = keyHolder.getKey();
	addGoods(inst,key.intValue());
}

public int updateStatus(int id) {
	String sql ="Update OrderStock SET status=? where id=?";
	Object args[]= {id};
	int rowAffected = jdbct.update(sql,args);
	return rowAffected;
}

//update 
public int update(OrderStock inst,int id) {
	String sql = "Update OrderStock SET courier=?,trackingNumber=? where id=?";
	Object args[] = {inst.getCourier(),inst.getTrackingNumber(),id}; 
	int rowAffected = jdbct.update(sql, args);
	//update the goods

	List<Goods> allorders = inst.getOrders();
	for(Goods a:allorders) { 
		sql = "Update Goods SET quantity=?,status=? where goodsID=?";
		Object goods[] = {a.getQuantity(),a.getStatus(),a.getGoodsID()};
		jdbct.update(sql,goods);
	}
	return rowAffected;
}

//update receipt and invoice only
public void updateDocument(OrderStock inst,int id) {
	String sql = "Update OrderStock SET status=?, receipt=?,invoice=? where id=?";
	Object args[] = {inst.getStatus(), inst.getReceipt(),inst.getInvoice(),id}; 
	jdbct.update(sql, args);
	sql = "Update Goods SET status=? where orderID=?";
	Object goods[] = {"paid",id};
	jdbct.update(sql,goods);
}

//delete OrderStock and set all the orders back to quantity 0 and status to unorder
public int delete(int id) {
	String sql = "Delete from OrderStock where id =?";
	Object args[] = {id};
	int rowAffected = jdbct.update(sql,args);
	sql = "Update Goods SET quantity=?,status=?,orderID=? where orderID=?";
	Object del[] = {0,"unorder",-1,id};
	jdbct.update(sql,del);
	return rowAffected;
}

}
