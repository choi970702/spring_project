package com.ict.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.vo.BVO;
import com.ict.vo.FVO;
import com.ict.vo.MVO;
import com.ict.vo.VO;

@Repository
public class MyDAOImpl implements MyDAO
{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;



	

	// ================================================================
	
	@Override
	public int selectIdChk(String id) throws Exception 
	{
		return sqlSessionTemplate.selectOne("myproject.id_chk", id);
	}

	@Override
	public int insertJoin(MVO mvo) throws Exception {
		return sqlSessionTemplate.insert("myproject.join_ok", mvo);
	}

	@Override
	public int selectId(String id) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.id", id);
	}

	@Override
	public int InsertBVO(BVO bvo) throws Exception {
		return sqlSessionTemplate.insert("myproject.board", bvo);
	}
	
	@Override
	public int InsertBVO2(BVO bvo) throws Exception {
		return sqlSessionTemplate.insert("myproject.board2", bvo);
	}
	
	@Override
	public int selectCount() throws Exception {
		return sqlSessionTemplate.selectOne("myproject.count");
	}
	
	@Override
	public int selectCount2() throws Exception {
		return sqlSessionTemplate.selectOne("myproject.count2");
	}
	
	@Override
	public List<BVO> selectList(int begin, int end) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("myproject.list", map);
	}
	
	@Override
	public List<BVO> selectList2(int begin, int end) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("myproject.list2", map);
	}
	
	@Override
	public List<BVO> selectmyList(int begin, int end) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("myproject.mylist", map);
	}
	
	@Override
	public List<BVO> selectmyList2(String id) throws Exception {
		return sqlSessionTemplate.selectList("myproject.mylist2", id);
	}
	
	@Override
	public List<VO> selectfoodList(String id) throws Exception {
		return sqlSessionTemplate.selectList("myproject.foodlist", id);
	}

	@Override
	public int selectMaster(MVO mvo) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.master", mvo);
	}

	@Override
	public int selectId_PwChk(MVO mvo) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.id_pwchk", mvo);
	}

	@Override
	public String selectIdFind(MVO mvo) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.idfind", mvo);
	}

	@Override
	public String selectPwFind(MVO mvo) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.pwfind", mvo);
	}
	
	@Override
	public BVO selectOneList(String idx) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.oneList", idx);
	}
	
	@Override
	public int updateList(BVO bvo) throws Exception {
		return sqlSessionTemplate.update("myproject.up_list", bvo);
	}
	
	@Override
	public int delete(String idx) throws Exception {
		return sqlSessionTemplate.delete("myproject.del", idx);
	}
	
	@Override
	public int deletefood(String id) throws Exception {
		return sqlSessionTemplate.delete("myproject.del_food", id);
	}

	@Override
	public int updatePw(MVO mvo) throws Exception {
		return sqlSessionTemplate.update("myproject.pw_up", mvo);
	}

	@Override
	public int updatePhone(MVO mvo) throws Exception {
		return sqlSessionTemplate.update("myproject.phone_up", mvo);
	}

	@Override
	public int insertVO(VO vo) throws Exception {
		return sqlSessionTemplate.insert("myproject.vo", vo);
	}



	@Override
	public VO selectVO(VO vo) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.selectvo", vo);
	}



	@Override
	public List<FVO> selectFVOList(String restaurant) throws Exception {
		return sqlSessionTemplate.selectList("myproject.FVOlist", restaurant);
	}

	@Override
	public int InsertFVO(FVO fvo) throws Exception {
		return sqlSessionTemplate.insert("myproject.FVOinsert", fvo);
	}

	@Override
	public FVO selectFVOone(String idx) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.FVOone", idx);
	}

	@Override
	public int selectStar(String restaurant) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.star", restaurant);
	}
	
	@Override
	public int selectlike(String restaurant) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.like", restaurant);
	}
	
	@Override
	public int selectFVOcount(String restaurant) throws Exception {
		return sqlSessionTemplate.selectOne("myproject.FVO_count", restaurant);
	}

	@Override
	public int updatestar_like(VO vo) throws Exception {
		return sqlSessionTemplate.update("myproject.star_like", vo);
	}
	
}
