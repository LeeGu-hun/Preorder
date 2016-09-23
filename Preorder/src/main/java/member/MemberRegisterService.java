package member;

import java.util.Date;

import org.springframework.transaction.annotation.Transactional;

import dao.DaoMember;
import exception.AlreadyExistingMemberException;

public class MemberRegisterService {
	private DaoMember daoMember;

	public MemberRegisterService(DaoMember daoMember) {
		this.daoMember = daoMember;
	}
	public MemberRegisterService(){}

	@Transactional
	public void regist(RegisterRequest req) {
		Member member = daoMember.selectByEmail(req.getEmail());
		if (member != null) {
			throw new AlreadyExistingMemberException("dup email " + req.getEmail());
		}
		Member newMember = new Member(
				req.getEmail(), req.getPassword(), req.getName(),
				new Date());
		daoMember.insert(newMember);
	}
}