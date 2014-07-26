package spring.board;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import spring.board.service.MainService;
import spring.board.vo.Board;

@Controller
public class BoardController {

	@Autowired
	private MainService mainService;

	@RequestMapping("/writeForm2.do")
	public void writeForm2(@RequestParam Map<String, Object >paramMap, ModelMap model)throws Throwable{
		
	}
	@RequestMapping("/login.do")
	public void login2(@RequestParam Map<String, Object >paramMap, ModelMap model)throws Throwable{
		
	}
	
	@RequestMapping("/writeProc2.do")
	public ModelAndView writeProc2(@ModelAttribute("board") Board board , ModelMap model) throws Throwable{
		
		System.out.println("title =" +board.getTitle());
		System.out.println("content =" +board.getContent());
		
		int writeCnt = mainService.writeProc2(board);
		
		System.out.println(writeCnt +"�� �ԷµǾ����ϴ�/");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/login.do");
		
		
		return mav;
		
	}
	
	
	
	@RequestMapping("/ajaxView.do")
	public void ajaxViewt(@RequestParam Map<String, Object> paramMap, ModelMap model)
			throws Throwable {
		
	}
	
	@RequestMapping("/listJson.do")
	public @ResponseBody Map<?, ?> listJson(
			@RequestParam Map<String, Object> paramMap, ModelMap model)
			throws Throwable {
		model.put("results", mainService.getList(paramMap));
		return model;
	}

	@RequestMapping("/list.do")
	public void list(@RequestParam Map<String, Object> paramMap, ModelMap model)
			throws Throwable {
		model.put("results", mainService.getList(paramMap));
	}

	@RequestMapping("/hello.do")
	public void hello(@RequestParam Map<String, Object> paramMap, ModelMap model)
			throws Throwable {
		model.put("title", "���� ù��° ������");
	}

	@RequestMapping("/today.do")
	public void today(@RequestParam Map<String, Object> paramMap, ModelMap model)
			throws Throwable {
		model.put("today", mainService.getToday());
	}

	@RequestMapping("/writeForm.do")
	public void writeForm(@RequestParam Map<String, Object> paramMap,
			ModelMap model) throws Throwable {

	}

	@RequestMapping("/writeProc.do")
	public ModelAndView writeProc(@RequestParam Map<String, Object> paramMap,
			ModelMap model) throws Throwable {

		// Form ���� �Ѿ� ���� �� ��� paramMap �ȿ� Form ���� �Ѿ� ���� ���� ����
		System.out.println("title = " + paramMap.get("title"));
		System.out.println("content = " + paramMap.get("content"));

		// �����ϱ� ���Ͽ� paramMap �� �ѱ��.
		int writeCnt = mainService.writeProc(paramMap);

		System.out.println(writeCnt + "�� �ԷµǾ����ϴ�/");

		// ó�� �� redirect
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/writeForm.do");
		return mav;

	}

}