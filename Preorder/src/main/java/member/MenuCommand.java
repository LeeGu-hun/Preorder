package member;

import java.util.Date;

public class MenuCommand {
	private String category, foodmenu, foodimage;
	private int price, store_no;
	private Date regdate;
	
	public int getStore_no() {
		return store_no;
	}

	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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

	public String getFoodimage() {
		return foodimage;
	}

	public void setFoodimage(String foodimage) {
		this.foodimage = foodimage;
	}

}
