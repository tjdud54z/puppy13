package com.spring5.puppy13.board.service;

import java.util.List;

import com.spring5.puppy13.board.vo.FileVO;
import com.spring5.puppy13.board.vo.SearchCriteria;

public interface FileService {

	public List<FileVO> FileList(FileVO fileVO) throws Exception;
	
	public void Filedelete(int file_no) throws Exception;
	
	public List<FileVO> FileSearch(SearchCriteria scri) throws Exception;
	
	/* public int countSearch(SearchCriteria scri) throws Exception; */
	
}
