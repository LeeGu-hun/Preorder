package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;

import bean.Store;
public class DaoStore {
	private JdbcTemplate jdbcTemplate;

	public DaoStore(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	public void insert(final Store store){
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into store (num, id, password, location, address, tel, regdate) values (store_num.nextval, ?, ?, ?, ?, ?, ?)");
				pstmt.setString(1, store.getId());
				pstmt.setString(2, store.getPassword());
				pstmt.setString(3, store.getLocation());
				pstmt.setString(4, store.getAddress());
				pstmt.setString(5, store.getTel());
				pstmt.setTimestamp(6, new Timestamp(store.getRegdate().getTime()));
				return pstmt;
			}
		});
	}
	//회원가입
	
	public Store selectById(String id) {
		List<Store> results = jdbcTemplate.query(
				"select * from store where id = ?", 
				new RowMapper<Store>() {
			public Store mapRow(ResultSet rs, int rowNum) 
					throws SQLException {
				Store store = new Store(rs.getString("id"), rs.getString("password"), rs.getString("location"), 
						rs.getString("address"), rs.getString("tel"), rs.getString("store_name"), rs.getString("category"), 
						rs.getString("ceo_num"), rs.getDate("regdate"), rs.getInt("store_id"), rs.getInt("max_waiting"));
				return store;
			}
		}, id);

		return results.isEmpty() ? null : results.get(0);
	}
	//회원 정보 전체 select

	public void update(Store store) {
		jdbcTemplate.update("update store set password = ?, address = ?, location = ?, tel = ? where id = ?", 
				store.getPassword(), store.getAddress(), store.getLocation(), store.getTel(), store.getId());
	}
	//회원정보수정
	public void mDelete(Store store) {
		jdbcTemplate.update("delete from store where id = ?", store.getId());
	}
	//탈퇴
}
