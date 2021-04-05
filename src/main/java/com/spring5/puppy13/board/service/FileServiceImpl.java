package com.spring5.puppy13.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import com.spring5.puppy13.board.dao.FileDAO;
import com.spring5.puppy13.board.vo.FileVO;
import com.spring5.puppy13.board.vo.SearchCriteria;


@Service
public class FileServiceImpl implements FileService {

	@Inject
	private FileDAO dao;
	
	@Override
	public List<FileVO> FileList(FileVO fileVO) throws Exception {

		return dao.FileList(fileVO);
	}
	
	public void Filedelete(int file_no) throws Exception {

		dao.Filedelete(file_no);
		
	}
	
	// 게시물 목록 조회
	@Override
	public List<FileVO> FileSearch(SearchCriteria scri) throws Exception {

		return dao.FileSearch(scri);
	}

	// 게시물 총 갯수
	/*
	@Override
	public int countSearch(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return dao.countSearch(scri);
	}
	*/
}
