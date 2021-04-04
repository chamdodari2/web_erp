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


@WebServlet("/EmployeeGetServlet")
public class EmployeeGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private EmployeeService service;
   
    public EmployeeGetServlet() {
    	service =new EmployeeService();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=UTF-8");  //한글 안깨지게 읽어오고 안깨지게 보내줄겡
		 int no = Integer.parseInt(request.getParameter("empNo").trim());
		 Employee employee = service.showEmployee(new Employee(no));
		 request.setAttribute("employee", employee);
		 request.getRequestDispatcher("employeeInfo.jsp").forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
