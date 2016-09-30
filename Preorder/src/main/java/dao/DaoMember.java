package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import bean.Member;
import bean.Store;
public class DaoMember {
	private JdbcTemplate jdbcTemplate;

	public DaoMember(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	public Member selectById(String id) {
		List<Member> results = jdbcTemplate.query(
				"select * from MEMBER where id = ?", 
				new RowMapper<Member>() {
			public Member mapRow(ResultSet rs, int rowNum) 
					throws SQLException {
				Member member = new Member(rs.getString("id"), rs.getString("password"), rs.getString("name"),
						rs.getString("phone"), rs.getDate("regdate"), rs.getString("email"));
				member.setId(rs.getString("ID"));
				return member;
			}
		}, id);

		return results.isEmpty() ? null : results.get(0);
	}
	public Store selectByIdStore(String id) {
		List<Store> results = jdbcTemplate.query(
				"select * from store where id = ?", 
				new RowMapper<Store>() {
			public Store mapRow(ResultSet rs, int rowNum) 
					throws SQLException {
				Store store = new Store(rs.getString("id"), rs.getString("password"),rs.getString("location"),
						rs.getString("address"),rs.getString("tel"),rs.getString("m_id"),rs.getString("pos_id"),
						rs.getString("name"),rs.getString("phone"),rs.getString("email"),rs.getString("category"),
						rs.getDate("regdate"));
				store.setId(rs.getString("ID"));
				return store;
			}
		}, id);

		return results.isEmpty() ? null : results.get(0);
	}
	//회원 정보 전체 select

	public void insert(final Member member) {
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into MEMBER (member_no, id, password, name, phone, payment, regdate, email) values (member_num.nextval, ?, ?, ?, ?, ?, ?, ?)");
				pstmt.setString(1, member.getId());
				pstmt.setString(2, member.getPassword());
				pstmt.setString(3, member.getName());
				pstmt.setString(4, member.getPhone());
				pstmt.setString(5, member.getPayment());
				pstmt.setTimestamp(6, new Timestamp(member.getRegdate().getTime()));
				pstmt.setString(7, member.getEmail());
				
				return pstmt;
			}
		});
	}
	//회원가입 일반
	
	public void insertStore(final Store store) {
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into store (store_no, id, password, store_name, location, address, tel, regdate , category) "
									+ "values (store_num.nextval, ?, ?, ?, ?, ?, ?, ?, ?)");
				pstmt.setString(1, store.getId());
				pstmt.setString(2, store.getPassword());
				pstmt.setString(3, store.getName());
				pstmt.setString(4, store.getLocation());
				pstmt.setString(5, store.getAddress());				
				pstmt.setString(6, store.getTel());
				pstmt.setTimestamp(7, new Timestamp(store.getRegdate().getTime()));
				pstmt.setString(8, store.getCategory());
			
				
								
				return pstmt;
			}
		});
	}
	//회원가입 기업
	
	public void update(Member member) {
		jdbcTemplate.update("update MEMBER set password = ?, name = ?, phone = ?, payment = ?, email = ? where id = ?", 
				member.getPassword(), member.getName(), member.getPhone(), member.getPayment(), member.getEmail(), member.getId());
	}
	//회원정보수정
	public void mDelete(Member member) {
		jdbcTemplate.update("delete from MEMBER where id = ?", member.getId());
	}
	//탈퇴
}
