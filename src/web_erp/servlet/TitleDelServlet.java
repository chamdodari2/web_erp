package web_erp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Title;
import web_erp.service.TitleService;


@WebServlet("/TitleDelServlet")
public class TitleDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TitleService service;

    public TitleDelServlet() {
    	service= new TitleService();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		//번호를 바로 넣어서 해당번호 삭제하면 되니까 Title 만들필요가 없당!!!
		int no = Integer.parseInt(request.getParameter("no").trim());
		
		
		service.delTitle(no);
		response.sendRedirect("TitleListServlet");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
