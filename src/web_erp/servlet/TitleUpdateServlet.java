package web_erp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Title;
import web_erp.service.TitleService;


@WebServlet("/TitleUpdateServlet")
public class TitleUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TitleService service;//타이틀 서비스에 만들어놓은 메소드 쓰겠다

    public TitleUpdateServlet() {
    	service= new TitleService();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8"); //한글 안깨지게 전달받고싶엉
		
		int no =Integer.parseInt(request.getParameter("tNo").trim()); //tNo에  들어있는 값 전달받기
		String name = request.getParameter("tName");
		
		Title title = new Title(no,name);
		service.updateTitle(title);
		response.sendRedirect("TitleListServlet");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
