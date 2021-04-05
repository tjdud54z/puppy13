package com.spring5.puppy13.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring5.puppy13.board.vo.FileVO;
import com.spring5.puppy13.board.vo.SearchCriteria;

@Repository
public class FileDAOImpl implements FileDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	public List<FileVO> FileList(FileVO fileVO) throws Exception {

		return sqlSession.selectList("boardMapper.adminselectFileList", fileVO);
		
	}
	
	@Override
	public void Filedelete(int file_no) throws Exception {
		
		sqlSession.delete("boardMapper.Filedelete", file_no);
	}
	
	@Override
	public List<FileVO> FileSearch(SearchCriteria scri) throws Exception {

		return sqlSession.selectList("boardMapper.FileSearch", scri);
	}
	
	// 게시물 총 갯수 (페이징 관련)
	/*
	@Override
	public int countSearch(SearchCriteria scri) throws Exception {

		return sqlSession.selectOne("boardMapper.countSearch", scri);
	}
	*/
}


