package com.mydrama.main.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mydrama.main.service.MainVO;

@Controller
public class MainController {


	protected static final Logger logger = LoggerFactory.getLogger(MainController.class);
	private final String _rootPath = "/";
	

	@RequestMapping(value = "/main/main.do",method = RequestMethod.GET )
	public String mainview(@ModelAttribute MainVO vo,HttpServletRequest request, Model model) throws Exception {
	    
	    
	    model.addAttribute("userNm" , vo.getAdminname() );  //사용자명
	    model.addAttribute("siteCdNm" , vo.getSite_cd_nm() );  //사용자 거래처 소속명
	    model.addAttribute("userGroup" , vo.getUserGroup() );  //사용자 그룹
	    
	    return _rootPath+"main/main";
	}
	
    
}