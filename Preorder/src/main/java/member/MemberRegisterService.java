package member;

import java.util.Date;

import org.springframework.transaction.annotation.Transactional;

import bean.Member;
import bean.Store;
import dao.DaoMember;
import exception.AlreadyExistingMemberException;

public class MemberRegisterService {
	private DaoMember daoMember;
	

	public MemberRegisterService(DaoMember daoMember) {
		this.daoMember = daoMember;
	}
	public MemberRegisterService(){}

	@Transactional
	public void registStore(RegisterRequest req) {
		Store store = daoMember.selectByIdStore(req.getId());
		if (store != null) {
			throw new AlreadyExistingMemberException("dup i " + req.getId());
		}
		Store newstore = new Store(req.getId(), req.getPassword(), req.getLocation(),req.getAddress(), req.getTel(),
								req.getM_id(),req.getPos_id(),req.getName(),req.getPhone(),
								req.getEmail(),req.getCategory(),new Date());	
		
		//String id, String password, String location, String address, String tel, String m_id, String pos_id,
		//String confirmPassword, String name, String phone, String email, String category, Date regdate
		
		
		daoMember.insertStore(newstore);
	}
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