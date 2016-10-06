package login;

import bean.Member;
import dao.DaoMember;
import exception.IdPasswordNotMatchingException;
import exception.MemberNotFoundException;


public class AuthService {
	private DaoMember daoMember;
	
	public void setDaoMember(DaoMember daoMember) {
		this.daoMember = daoMember;
	}

	public AuthInfo authenticate(String password,String id){
		Member member = daoMember.selectById(id);
		if(member == null){
			throw new MemberNotFoundException();
		}
		if(!member.matchPassword(password)){
			throw new IdPasswordNotMatchingException();
		}
		return new AuthInfo(member.getId(), member.getName());
	}
}
