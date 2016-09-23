package bean;

import java.sql.Timestamp;
import java.util.Date;
public class Menu {
	private String category, foodmenu, review, price, m_id;
	private int rating;
	private Date regdate;
	private Timestamp cooktime;

	public Menu(String category, String foodmenu, String review, String price, String m_id, int rating, Date regdate,
			Timestamp cooktime) {
		this.category = category;
		this.foodmenu = foodmenu;
		this.price = price;
		this.m_id = m_id;
		this.rating = rating;
		this.regdate = regdate;
		this.cooktime = cooktime;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getFoodmenu() {
		return foodmenu;
	}

	public void setFoodmenu(String foodmenu) {
		this.foodmenu = foodmenu;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Timestamp getCooktime() {
		return cooktime;
	}

	public void setCooktime(Timestamp cooktime) {
		this.cooktime = cooktime;
	}
	
}
