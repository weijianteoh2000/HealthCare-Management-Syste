package dbutil;

import java.time.LocalTime;
import java.util.Date;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.model.Application;

public class ApplicationDAO {

	JdbcTemplate jdbct = new JdbcTemplate(MyDatabase.getDataSource());
	// the detail impl for all CRUD methods here

	// getAll
	public List<Application> getAll() {
		String sql = "select * from Application";
		List<Application> iList = jdbct.query(sql, new BeanPropertyRowMapper<Application>(Application.class));
		return iList;
	}
	
	public List<Application> getAllById(int id) {
		String sql = "select * from Application where patientId = ?";
		List<Application> iList = jdbct.query(sql, new BeanPropertyRowMapper<Application>(Application.class),id);
		return iList;
	}
	
	public List<Application> getSchedule(int id,String startDate, String endDate) {
		String sql = "SELECT * FROM Application WHERE assignDoctor = ? AND applicationDate between '" + startDate + "' and '" + endDate + "' ORDER BY applicationDate";
		List<Application> iList = jdbct.query(sql, new BeanPropertyRowMapper<Application>(Application.class),id);
		return iList;
	}
	
	public List<Application> findByStatus(String status) {
		String sql = "select * from Application where status = ?";
		List<Application> iList = jdbct.query(sql, new BeanPropertyRowMapper<Application>(Application.class),status);
		return iList;
	}

	public Application findById(int id) {
		String sql = "select * from Application where applicationId = ?";
		Application appl = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Application>(Application.class), id);
		return appl;
	}

	// add
	public int add(Application appl) {
		String sql = "insert into Application (applicationDate,timeRange,status,patientId) values (?,?,?,?)";
		Object args[] = {appl.getApplicationDate(), appl.getTimeRange(),appl.getStatus(),appl.getPatientId()};
		int rowAffected = jdbct.update(sql, args);
		return rowAffected;
	}

	// update - complete this
	public int updateApprove(Date assignTime,int doctorId, String status, int applicationId) {
		String sql = "Update Application SET assignTime=?,assignDoctor=?,status=? where applicationId=?";
		Object args[] = {assignTime,doctorId,status,applicationId};
		int rowAffected = jdbct.update(sql, args);
		return rowAffected;
	}
	
	public int updateReject(String rejectReason, String status, int applicationId) {
		String sql = "Update Application SET rejectReason=?,status=? where applicationId=?";
		Object args[] = {rejectReason,status,applicationId};
		int rowAffected = jdbct.update(sql, args);
		return rowAffected;
	}

	// delete - complete this
	public int delete(int id) {
		String sql = "Delete from Application where id =?";
		Object args[] = { id };
		int rowAffected = jdbct.update(sql, args);
		return rowAffected;
	}
}
