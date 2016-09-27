package member;

import org.springframework.transaction.annotation.Transactional;

import bean.Member;
import dao.DaoMember;
import exception.MemberNotFoundException;

public class ChangePasswordService {
	private DaoMember daoMember;
	
	public ChangePasswordService(DaoMember daoMember) {
		super();
		this.daoMember = daoMember;
	}

	@Transactional
	public void changePassword(String email, String oldPw, String newPw,String id){
		Member member = daoMember.selectById(id);
		if(member == null) 
			throw new MemberNotFoundException();
		member.changePassword(oldPw, newPw);
		daoMember.update(member); 
	}
}
