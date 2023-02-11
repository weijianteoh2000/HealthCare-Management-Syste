package dbutil;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.model.Goods;
import com.model.Supplier;

public class SupplierDAO {
	JdbcTemplate jdbct = new JdbcTemplate(MyDatabase.getDataSource());
//the detail impl for all CRUD methods here

//getAll
public List<Supplier> getAll(){
	String sql = "select * from Supplier";
	List<Supplier> iList = jdbct.query(sql, new BeanPropertyRowMapper<Supplier>(Supplier.class));
	return iList;
}
public Supplier findById(int id) {
	String sql = "select * from Supplier where id = ?";
	Supplier inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Supplier>(Supplier.class),id);
	return inst;
}
public int findByName(String name) {
	String sql = "select * from Supplier where companyName = ?";
	Supplier inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Supplier>(Supplier.class),name);
	
	return inst.getId();
}
//return list of goods based on the particular supplier name
public List<Goods> getGoods(String name){
	String sql = "select * from Goods where supplierID = ?";
	List<Goods> inst = jdbct.query(sql, new BeanPropertyRowMapper<Goods>(Goods.class),findByName(name));
	return inst;
}
public List<Goods> findGoodsById(int id){
	String sql = "select * from Goods where supplierID = ?";
	List<Goods> inst = jdbct.query(sql, new BeanPropertyRowMapper<Goods>(Goods.class),id);
	return inst;
}

public void addGoods(Supplier inst,int id) {
	List<Goods> allorders = inst.getGoods();
	for(Goods a:allorders) { 
		String sql = "insert into Goods (supplierID,name,description,quantity,orderID,status) values (?,?,?,?,?,?)";
		Object goods[] = {id,a.getName(),a.getDescription(),a.getQuantity(),a.getOrderID(),a.getStatus()};
		jdbct.update(sql,goods);
	}
}
//pending
public void updateGoods(Supplier inst,int id) {
	List<Goods> goodsList = inst.getGoods();
	List<Goods> oriGoodsList = findGoodsById(id);
	List<String> goodsNameList = new ArrayList<String>();
	List<String> oriGoodsNameList = new ArrayList<String>();
	for(Goods a:goodsList)goodsNameList.add(a.getName());
	for(Goods a:oriGoodsList)oriGoodsNameList.add(a.getName());
	for(Goods b:goodsList) {
		System.out.println("name: "+b.getName());
		System.out.println("description"+b.getDescription());
		if(oriGoodsList.contains(b))continue;
		if(oriGoodsNameList.contains(b.getName())) {
			String sql = "Update Goods SET description=? where name=?";
			Object goods[] = {b.getDescription(),b.getName()};
			jdbct.update(sql,goods);
			continue;
		};
		String sql = "insert into Goods (supplierID,name,description,quantity,orderID,status) values (?,?,?,?,?,?)";
		Object goods[] = {id,b.getName(),b.getDescription(),0,-1,"unorder"};
		jdbct.update(sql,goods);
	}
}
//add the supplier and the supplier's goods to database.
public void add(Supplier inst) {
	String sql = "insert into Supplier (companyName,website,contact,email,phoneNo,address) values (?,?,?,?,?,?)";
	KeyHolder keyHolder = new GeneratedKeyHolder();
	jdbct.update(
			con -> {
	            PreparedStatement ps = con.prepareStatement(sql, new String[]{"id"});
	            ps.setString(1, inst.getCompanyName());
	            ps.setString(2, inst.getWebsite());
	            ps.setString(3, inst.getContact());
	            ps.setString(4, inst.getEmail());
	            ps.setString(5, inst.getPhoneNo());
	            ps.setString(6, inst.getAddress());
			return ps;
			}, keyHolder
			);
	Number key = keyHolder.getKey();
	addGoods(inst,key.intValue());
}

//update - complete this
public int update(Supplier inst, int id) {
	String sql = "Update Supplier SET companyName=?,website=?,contact=?,email=?,phoneNo=?,address=? where id=?";
	Object args[] = {inst.getCompanyName(),inst.getWebsite(),inst.getContact(),inst.getEmail(),inst.getPhoneNo(),inst.getAddress(),id}; 
	int rowAffected = jdbct.update(sql, args);
	updateGoods(inst,id);
	return rowAffected;
}

//delete supplier and the goods
public int delete(int id) {
	String sql = "Delete from Supplier where id =?";
	Object args[] = {id};
	int rowAffected = jdbct.update(sql,args);
	sql = "Delete from Goods where supplierID =?";
	Object del[] = {id};
	jdbct.update(sql,del);
	return rowAffected;
}

}
