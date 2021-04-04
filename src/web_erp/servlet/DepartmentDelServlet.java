package web_erp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.service.DepartmentService;

@WebServlet("/DepartmentDelServlet")
public class DepartmentDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DepartmentService service;

    public DepartmentDelServlet() {
        service = new DepartmentService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("deptNo").trim());
		service.delDepartment(no);
		response.sendRedirect("DeptListServlet");
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
