package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import bean.Member;

public class DaoFood {
	private JdbcTemplate jdbcTemplate;

	public DaoFood(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	public Member selectByCustome(String id) {
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
}
