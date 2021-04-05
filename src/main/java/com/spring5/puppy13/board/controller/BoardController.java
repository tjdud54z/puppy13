package com.spring5.puppy13.board.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring5.puppy13.board.service.BoardService;
import com.spring5.puppy13.board.service.FileService;
import com.spring5.puppy13.board.service.ReplyService;
import com.spring5.puppy13.board.vo.BoardVO;
import com.spring5.puppy13.board.vo.FileVO;
import com.spring5.puppy13.board.vo.PageMaker;
import com.spring5.puppy13.board.vo.ReplyVO;
import com.spring5.puppy13.board.vo.SearchCriteria;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	//private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	BoardService service;
	
	@Inject
	FileService fileservice;

	@Inject
	ReplyService replyService;

	// 게시판 글 작성 화면
	@RequestMapping(value = "/writeView.do", method = RequestMethod.GET)
	public void writeView() throws Exception {
		//logger.info("writeView");

	}

	// 게시판 글 작성
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String write(BoardVO boardVO, MultipartHttpServletRequest mpRequest) throws Exception {
		//logger.info("write");
		service.write(boardVO, mpRequest);

		return "redirect:/board/list.do";
	}

	// 게시판 목록 조회
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		//logger.info("list");

		model.addAttribute("list", service.list(scri));
		
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "board/list";

	}
	
	// 게시판 조회
	@RequestMapping(value = "/readView.do", method = RequestMethod.GET)
	public String read(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		//logger.info("read");

		model.addAttribute("read", service.read(boardVO.getBno()));
		model.addAttribute("scri", scri);

		List<ReplyVO> replyList = replyService.readReply(boardVO.getBno());
		model.addAttribute("replyList", replyList);

		List<Map<String, Object>> fileList = service.selectFileList(boardVO.getBno());
		model.addAttribute("file", fileList);
		return "board/readView";
	}

	// 게시판 수정뷰
	@RequestMapping(value = "/updateView.do", method = RequestMethod.GET)
	public String updateView(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model)
			throws Exception {
		//logger.info("updateView");

		model.addAttribute("update", service.read(boardVO.getBno()));
		model.addAttribute("scri", scri);

		List<Map<String, Object>> fileList = service.selectFileList(boardVO.getBno());
		model.addAttribute("file", fileList);
		return "board/updateView";
	}

	// 게시판 수정
	@RequestMapping(value = "/update.do", method = RequestMethod.POST)
	public String update(BoardVO boardVO, 
						 @ModelAttribute("scri") SearchCriteria scri, 
						 RedirectAttributes rttr,
						 @RequestParam(value="fileNoDel[]") String[] files,
						 @RequestParam(value="fileNameDel[]") String[] fileNames,
						 MultipartHttpServletRequest mpRequest) throws Exception {
		//logger.info("update");
		service.update(boardVO, files, fileNames, mpRequest);

		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		
		

		return "redirect:/board/list.do";
	}
	
	//게시판 회원 삭제
	@RequestMapping(value = "/userdelboard.do", method = RequestMethod.POST)
	public ModelAndView userdelboard(@ModelAttribute("board") BoardVO boardVO) throws Exception {
		
		int result = 0;
		result = service.userdelboard(boardVO);
		System.out.println(result);
		ModelAndView mav = new ModelAndView("redirect:/board/list.do");
		System.out.println("M.A.T Event : " + "게시판이 삭제되었습니다.");
		return mav;

	}

	// 댓글 작성
	@RequestMapping(value = "/replyWrite.do", method = RequestMethod.POST)
	public String replyWrite(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		//logger.info("reply Write");

		replyService.writeReply(vo);

		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());

		return "redirect:/board/readView.do";
	}

	// 댓글 수정 GET
	@RequestMapping(value = "/replyUpdateView.do", method = RequestMethod.GET)
	public String replyUpdateView(ReplyVO vo, SearchCriteria scri, Model model) throws Exception {
		//logger.info("reply Write");

		model.addAttribute("replyUpdate", replyService.selectReply(vo.getRno()));
		model.addAttribute("scri", scri);

		return "board/replyUpdateView";
	}

	// 댓글 수정 POST
	@RequestMapping(value = "/replyUpdate.do", method = RequestMethod.POST)
	public String replyUpdate(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		//logger.info("reply Write");

		replyService.updateReply(vo);

		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());

		return "redirect:/board/readView.do";
	}

	// 댓글 삭제 GET
	@RequestMapping(value = "/replyDeleteView.do", method = RequestMethod.GET)
	public String replyDeleteView(ReplyVO vo, SearchCriteria scri, Model model) throws Exception {
		//logger.info("reply Write");

		model.addAttribute("replyDelete", replyService.selectReply(vo.getRno()));
		model.addAttribute("scri", scri);

		return "board/replyDeleteView";
	}

	// 댓글 삭제
	@RequestMapping(value = "/replyDelete.do", method = RequestMethod.POST)
	public String replyDelete(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		//logger.info("reply Write");

		replyService.deleteReply(vo);

		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());

		return "redirect:/board/amdin_readView.do";
	}
	
	// 댓글 회원 삭제
	@RequestMapping(value = "/userdelReply.do", method = RequestMethod.POST)
	public String userdelReply(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		//logger.info("reply Write");

		replyService.userdelReply(vo);

		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());

		return "redirect:/board/readView.do";
	}
	
	//파일 다운로드
	@RequestMapping(value = "/fileDown.do")
	public void fileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception {
		Map<String, Object> resultMap = service.selectFileInfo(map);
		String storedFileName = (String) resultMap.get("STORED_FILE_NAME");
		String originalFileName = (String) resultMap.get("ORG_FILE_NAME");

		// 파일을 저장했던 위치에서 첨부파일을 읽어 byte[]형식으로 변환한다.
		byte fileByte[] = org.apache.commons.io.FileUtils
				.readFileToByteArray(new File("E:\\puppy13\\board\\" + storedFileName));

		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",
				"attachment; fileName=\"" + URLEncoder.encode(originalFileName, "UTF-8") + "\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();

	}

	//------------------------------------------관리자 메소드-------------------------------------------------------------------//
	
	//관리자 게시판 목록 조회
	@RequestMapping(value = "/admin_board.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String admin_board(Model model, @ModelAttribute("scri") SearchCriteria scri, HttpSession session) throws Exception {

		model.addAttribute("list", service.list(scri));
		
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		model.addAttribute("pageMaker", pageMaker);

		return "board/admin_board";

	}
	
	// 관리자 게시판 상세 조회
	@RequestMapping(value = "/admin_readView.do", method = RequestMethod.GET)
	public String admin_readView(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		//logger.info("read");

		model.addAttribute("read", service.read(boardVO.getBno()));
		model.addAttribute("scri", scri);

		List<ReplyVO> replyList = replyService.readReply(boardVO.getBno());
		model.addAttribute("replyList", replyList);

		List<Map<String, Object>> fileList = service.selectFileList(boardVO.getBno());
		model.addAttribute("file", fileList);
		return "board/admin_readView";
	}
	
	// 관리자 게시판 삭제
	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public String delete(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr)
			throws Exception {
		//logger.info("delete");

		service.delete(boardVO.getBno());

		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());

		return "redirect:/board/admin_board.do";
	}
	
	// 관리자 댓글 삭제 GET
	@RequestMapping(value = "/admin_replyDeleteView.do", method = RequestMethod.GET)
	public String admin_replyDeleteView(ReplyVO vo, SearchCriteria scri, Model model) throws Exception {
		//logger.info("reply Write");

		model.addAttribute("replyDelete", replyService.selectReply(vo.getRno()));
		model.addAttribute("scri", scri);

		return "board/admin_replyDeleteView";
	}

	// 관리자 댓글 삭제
	@RequestMapping(value = "/admin_replyDelete.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String admin_replyDelete(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		//logger.info("reply Write");

		replyService.deleteReply(vo);

		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());

		return "redirect:/board/admin_readView.do";
	}
	
/*	  
	  //관리자 파일 목록 보기
	  
	  @RequestMapping(value= "/admin_File.do", method = {RequestMethod.GET,
	  RequestMethod.POST}) public ModelAndView admin_File(FileVO
	  fileVO,HttpServletRequest request, HttpServletResponse response) throws
	  Exception {
	  
	  List<FileVO> FileList = fileservice.FileList(fileVO);
	  ModelAndView mav = new ModelAndView("board/admin_File");
	  mav.addObject("fileList", FileList); return
	  mav;
	  
	  }
*/ 
	
	//관리자 파일 삭제
	@RequestMapping(value = "/FileDelete.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView removeMember(@RequestParam("file_no") int file_no,
									 HttpServletRequest request,
									 HttpServletResponse response) throws Exception {
		
		//request.setCharacterEncoding("utf-8");
		
		fileservice.Filedelete(file_no);
		
		ModelAndView mav = new ModelAndView("redirect:/board/admin_File.do");
		
		return mav;
		
	}
	
	//관리자 파일 리스트 보기/ 검색
	@RequestMapping(value = "/admin_File.do", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
	 
	 List<FileVO> list = fileservice.FileSearch(scri);
	 model.addAttribute("fileList", list);
	 
	 //페이징 관련 메소드
	 /*
	 PageMaker pageMaker = new PageMaker();
	 pageMaker.setCri(scri);
	 //pageMaker.setTotalCount(service.listCount());
	 pageMaker.setTotalCount(fileservice.countSearch(scri));
	 model.addAttribute("pageMaker", pageMaker);
	 */
	}

}
