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
import bean.Menu;
public class DaoMenu {
	private JdbcTemplate jdbcTemplate;

	public DaoMenu(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	public void insert(final Menu menu){
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement pstmt = con.prepareStatement(
						"insert into menu(menu_no, store_no, category, foodmenu, price, regdate, foodimg) values (menu_num.nextval, ?, ?, ?, ?, ?)");
				pstmt.setString(1, menu.getCategory());
				pstmt.setString(2, menu.getFoodmenu());
				pstmt.setInt(3, menu.getPrice());
				pstmt.setTimestamp(4, new Timestamp(menu.getRegdate().getTime()));
//				pstmt.set(5, menu.getFoodImage());
				return pstmt;
			}
		});
	}
	//회원가입
	
	public Menu select(String menu_no) {
		List<Menu> results = jdbcTemplate.query(
				"select * from menu where menu_no = ?", 
				new RowMapper<Menu>() {
			public Menu mapRow(ResultSet rs, int rowNum) 
					throws SQLException {
				Menu menu = new Menu(
						rs.getString("category"), rs.getString("foodmenu"), rs.getString("review"), rs.getString("foodimg"), 
						rs.getInt("rating"), rs.getInt("price"), rs.getInt("menu_no"), rs.getInt("store_no"), rs.getDate("regdate"), rs.getTime("cooktime"));
				return menu;
			}
		}, menu_no);

		return results.isEmpty() ? null : results.get(0);
	}
	//회원 정보 전체 select

	public void update(Menu menu) {
		jdbcTemplate.update("update menu set category, foodmenu, cooktime, price, foodimg where menu_no = ?", 
				menu.getCategory(), menu.getFoodmenu(), menu.getCooktime(), menu.getPrice(), menu.getFile(), menu.getMenu_no());
	}
	//회원정보수정
	public void mDelete(Menu menu) {
		jdbcTemplate.update("delete from menu where menu_no = ?", menu.getMenu_no());
	}
	//탈퇴
}
