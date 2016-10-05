package bean;

import java.util.Date;

public class Store {
	private String id, password, location, address, tel, store_name, category, ceo_num;
	private Date regdate;
	private int store_id, max_waiting;
	public Store(String id, String password, String location, String address, String tel, String store_name,
			String category, String ceo_num, Date regdate, int store_id, int max_waiting) {
		this.id = id;
		this.password = password;
		this.location = location;
		this.address = address;
		this.tel = tel;
		this.store_name = store_name;
		this.category = category;
		this.ceo_num = ceo_num;
		this.regdate = regdate;
		this.store_id = store_id;
		this.max_waiting = max_waiting;
	}
	
	public Store(String id, String password, String location, String address, String tel, String store_name,
			String category, String ceo_num, Date regdate, int max_waiting) {
		this.id = id;
		this.password = password;
		this.location = location;
		this.address = address;
		this.tel = tel;
		this.store_name = store_name;
		this.category = category;
		this.ceo_num = ceo_num;
		this.regdate = regdate;
		this.max_waiting = max_waiting;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCeo_num() {
		return ceo_num;
	}
	public void setCeo_num(String ceo_num) {
		this.ceo_num = ceo_num;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getStore_id() {
		return store_id;
	}
	public void setStore_id(int store_id) {
		this.store_id = store_id;
	}
	public int getMax_waiting() {
		return max_waiting;
	}
	public void setMax_waiting(int max_waiting) {
		this.max_waiting = max_waiting;
	}
}
