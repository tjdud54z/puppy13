package com.spring5.puppy13.board.dao;

import java.util.List;

import com.spring5.puppy13.board.vo.FileVO;
import com.spring5.puppy13.board.vo.SearchCriteria;

public interface FileDAO {

	public List<FileVO> FileList(FileVO fileVO) throws Exception;
	
	public void Filedelete(int bno) throws Exception;
	
	public List<FileVO> FileSearch(SearchCriteria scri) throws Exception;
	
	/* public int countSearch(SearchCriteria scri) throws Exception; */
}
