package web_erp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Department;
import web_erp.dto.Employee;
import web_erp.dto.Title;
import web_erp.service.EmployeeService;

@WebServlet("/EmployeeUpdateServlet")
public class EmployeeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private EmployeeService service;
  
    public EmployeeUpdateServlet() {
    	service = new EmployeeService();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8"); //한글 안깨지게 전달받고싶엉
		int no = Integer.parseInt(request.getParameter("empNo").trim());
		String name = request.getParameter("empName");
		int title = Integer.parseInt(request.getParameter("title").trim());
		int manager = Integer.parseInt(request.getParameter("manager").trim());
		int salary = Integer.parseInt(request.getParameter("salary").trim());
		int dept = Integer.parseInt(request.getParameter("dept").trim());
		
		Employee employee = new Employee(no,name,new Title(title),new Employee(manager),salary,new Department(dept));
		service.updateEmployee(employee);
		response.sendRedirect("EmpListServlet");
		
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
