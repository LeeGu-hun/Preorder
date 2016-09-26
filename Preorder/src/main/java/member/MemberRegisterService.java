package member;

import java.util.Date;

import org.springframework.transaction.annotation.Transactional;

import bean.Member;
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
		Member member = daoMember.selectById(req.getId());
		if (member != null) {
			throw new AlreadyExistingMemberException("dup i " + req.getId());
		}
		Member newMember = new Member(req.getId(), req.getPassword(), req.getName(), req.getPhone(),
				new Date(), req.getEmail());
		daoMember.insert(newMember);
	}
}