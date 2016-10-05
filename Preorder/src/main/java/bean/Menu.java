package bean;

import java.sql.Time;
import java.util.Date;
public class Menu {
	private String category, foodmenu, review, file;
	private int rating, price, menu_no, store_no;
	private Date regdate;
	private Time cooktime;
	
	public Menu(String category, String foodmenu, String review, String file, int rating, int price, int menu_no,
			int store_no, Date regdate, Time cooktime) {
		this.category = category;
		this.foodmenu = foodmenu;
		this.review = review;
		this.file = file;
		this.rating = rating;
		this.price = price;
		this.menu_no = menu_no;
		this.store_no = store_no;
		this.regdate = regdate;
		this.cooktime = cooktime;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public int getMenu_no() {
		return menu_no;
	}

	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}

	public int getStore_no() {
		return store_no;
	}

	public void setStore_no(int store_no) {
		this.store_no = store_no;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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

	public Time getCooktime() {
		return cooktime;
	}

	public void setCooktime(Time cooktime) {
		this.cooktime = cooktime;
	}
	
}
