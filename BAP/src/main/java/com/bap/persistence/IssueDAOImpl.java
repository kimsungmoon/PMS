package com.bap.persistence;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bap.domain.SearchCriteria;
import com.bap.dto.IssueDTO;
import com.bap.dto.RiskProVO;

@Repository
public class IssueDAOImpl implements IssueDAO {

	private SqlSession session;
	
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}

	private static final String namespace = "com.bap.mappers.issue-Mapper";

	@Override
	public List<IssueDTO> listSearch(SearchCriteria cri) throws Exception {

		int offset = (cri.getPage() - 1) * 10;
		int limit = 10;

		RowBounds rowbounds = new RowBounds(offset, limit);

		return session.selectList(namespace + ".listSearch", cri, rowbounds);

	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return (int) session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public IssueDTO detail(int issue_no) throws Exception {
		return (IssueDTO) session.selectOne(namespace + ".detail", issue_no);
	}

	@Override
	public void modify(IssueDTO vo) throws Exception {
		session.update(namespace + ".modify", vo);
	}

	@Override
	public void remove(int issue_no) throws Exception {
		session.delete(namespace + ".remove", issue_no);

	}

	@Override
	public void regist(IssueDTO vo) throws Exception {
		session.insert(namespace + ".regist", vo);
		
	}
	
	@Override
	 public List<IssueDTO> listAll(IssueDTO vo) throws Exception {
	 
		 int offset = (0 - 1) * 10;
			 int limit = 5;
			
			 RowBounds rowbounds = new RowBounds(offset, limit);
			
			 return session.selectList(namespace + ".listAll", vo, rowbounds);
		 
	 }

	@Override
	public List<RiskProVO> listPro(RiskProVO vo) throws Exception {
		System.out.println("!!!!!!!!!!!!!!!!"+vo);
		return session.selectList(namespace+".listPro", vo);
	}

	// // 게시글목록
	// @Override
	// public List<NoticeVO> listAll() throws Exception {
	// return sqlSession.selectList(namespace + ".listAll");
	// }
	//
	// // 게시글 페이징처리
	// @Override
	// public List<NoticeVO> listPage(int page) throws Exception {
	//
	// int offset = (page - 1) * 10;
	// int limit = 10;
	//
	// RowBounds rowbounds = new RowBounds(offset, limit);
	//
	// return sqlSession.selectList(namespace + ".listPage", null, rowbounds);
	//
	// }
	//
	// // 카운팅 페이지
	// @Override
	// public int countPaging(Criteria cri) throws Exception {
	// // TODO Auto-generated method stub
	// return (int) sqlSession.selectOne(namespace + ".countPaging", cri);
	// }
	//
	// // sql에서 전부를 출력한뒤 지금의 메서드에서 10개씩 잘라서 보여주는 기능을 추가함
	// @Override
	// public List<NoticeVO> listCriteria(Criteria cri) throws Exception {
	//
	// int offset = (cri.getPage() - 1) * 10;
	// int limit = 10;
	//
	// RowBounds rowbounds = new RowBounds(offset, limit);
	//
	// return sqlSession.selectList(namespace + ".listPage", null, rowbounds);
	// }

}
