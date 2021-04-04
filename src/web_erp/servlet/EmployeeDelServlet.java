package web_erp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Employee;
import web_erp.service.EmployeeService;


@WebServlet("/EmployeeDelServlet")
public class EmployeeDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private EmployeeService service;
  
    public EmployeeDelServlet() {
       service = new EmployeeService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int no = Integer.parseInt(request.getParameter("empNo").trim());
		service.delEmployee(new Employee(no));
		response.sendRedirect("EmpListServlet");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
