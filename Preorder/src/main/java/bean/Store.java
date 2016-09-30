package bean;

import java.util.Date;

public class Store {
	private String id, password, location, address, tel, m_id, pos_id, 
	 name, phone,email, category;
	private Date regdate;

	



	



	public Store(String id, String password, String location, String address, String tel, String m_id, String pos_id,
			String name, String phone, String email, String category, Date regdate) {
		super();
		this.id = id;
		this.password = password;
		this.location = location;
		this.address = address;
		this.tel = tel;
		this.m_id = m_id;
		this.pos_id = pos_id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.category = category;
		this.regdate = regdate;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getPos_id() {
		return pos_id;
	}
	public void setPos_id(String pos_id) {
		this.pos_id = pos_id;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	

	
	
}
