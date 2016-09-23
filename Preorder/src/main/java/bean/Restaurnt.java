package bean;

import java.sql.Date;

public class Restaurnt {
	private String id, password, location, address, tel, m_id, pos_id;
	private Date regdate;
	
	public Restaurnt(String id, String password, String location, String address, String tel, String m_id,
			String pos_id, Date regdate) {
		this.id = id;
		this.password = password;
		this.location = location;
		this.address = address;
		this.tel = tel;
		this.m_id = m_id;
		this.pos_id = pos_id;
		this.regdate = regdate;
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
