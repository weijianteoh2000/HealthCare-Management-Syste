package dbutil;

import com.model.RecomMedicine;
import java.util.List;


import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;


public class RecomMedicineDAO {
	JdbcTemplate jdbct = new JdbcTemplate(MyDatabase.getDataSource());
//the detail impl for all CRUD methods here

//getAll
public List<RecomMedicine> getAll(){
	String sql = "select * from RecomMedicine";
	List<RecomMedicine> iList = jdbct.query(sql, new BeanPropertyRowMapper<RecomMedicine>(RecomMedicine.class));
	return iList;
}
public RecomMedicine findById(int id) {
	String sql = "select * from RecomMedicine where id = ?";
	RecomMedicine inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<RecomMedicine>(RecomMedicine.class),id);
	return inst;
}
public List<RecomMedicine> findByPatient(String patientName) {
	String sql = "select * from RecomMedicine where patientname = ? ";
	List<RecomMedicine> inst = jdbct.query(sql, new BeanPropertyRowMapper<RecomMedicine>(RecomMedicine.class),patientName);
	return inst;
}

public List<RecomMedicine> findByPatientWithDate(String patientName, String date) {
	String sql = "select * from RecomMedicine where patientname = ? AND datevisited =? AND status= false ";
	List<RecomMedicine> inst = jdbct.query(sql, new BeanPropertyRowMapper<RecomMedicine>(RecomMedicine.class),patientName,date);
	return inst;
}

public List<RecomMedicine> findByPatientAndDoctor(String patientName,String doctor) {
	String sql = "select * from RecomMedicine where patientname = ? AND doctor=?";
	List<RecomMedicine> inst = jdbct.query(sql, new BeanPropertyRowMapper<RecomMedicine>(RecomMedicine.class),patientName,doctor);
	return inst;
}
public List<RecomMedicine> findByDoctor(String doctor) {
	String sql = "select * from RecomMedicine where doctor = ? ";
	List<RecomMedicine> inst = jdbct.query(sql, new BeanPropertyRowMapper<RecomMedicine>(RecomMedicine.class),doctor);
	return inst;
}

public List<String> findUniquePatient() {
	String sql = "select DISTINCT patientname from RecomMedicine ";
	List<String> inst = jdbct.queryForList(sql,String.class);
	return inst;
}

public List<String> findUniquePatient(String date,boolean status) {
	String sql = "select DISTINCT patientname from RecomMedicine WHERE datevisited =? AND status=? ";
	List<String> inst = jdbct.queryForList(sql,String.class,date,status);
	return inst;
}

//add
public int add(RecomMedicine inst) {
	String sql = "insert into RecomMedicine (patientName,illness,medicine,referenceNo,quantity,price,dateVisited,doctor) values (?,?,?,?,?,?,?,?)";
	Object args[] = {inst.getPatientName(),inst.getIllness(),inst.getMedicine(),inst.getReferenceNo(),inst.getQuantity(),inst.getPrice(),inst.getDateVisited(),inst.getDoctor()}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

//update - complete this
public int update(RecomMedicine inst, int id) {
	String sql = "Update RecomMedicine SET patientName=?,illness=?,medicine=?,referenceNo=?,quantity=?,price=?,dateVisited=? where id=?";
	Object args[] = {inst.getPatientName(),inst.getIllness(),inst.getMedicine(),inst.getReferenceNo(),inst.getQuantity(),inst.getPrice(),inst.getDateVisited(),id}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

public int updateStatus(int id, boolean status) {
	String sql = "Update RecomMedicine SET status=? where id=?";
	Object args[] = {status,id}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

//delete - complete this
public int delete(int id) {
	String sql = "Delete from RecomMedicine where id =?";
	Object args[] = {id};
	int rowAffected = jdbct.update(sql,args);
	return rowAffected;
}

}
