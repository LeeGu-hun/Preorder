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
	//회원 정보 전체 select

	public void insert(final Member member) {
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into MEMBER (num, id, password, name, phone, payment, regdate, email) values (member_num.nextval, ?, ?, ?, ?, ?, ?, ?)",
						new String[] { "id" });
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
	//회원가입
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
