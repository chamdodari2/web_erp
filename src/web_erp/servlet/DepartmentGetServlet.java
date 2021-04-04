package web_erp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Department;
import web_erp.service.DepartmentService;


@WebServlet("/DepartmentGetServlet")
public class DepartmentGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DepartmentService service;
    

    public DepartmentGetServlet() {
       service= new DepartmentService();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 request.setCharacterEncoding("UTF-8");
	 response.setContentType("text/html;charset=UTF-8");  //한글 안깨지게 읽어오고 안깨지게 보내줄겡
	 int no =Integer.parseInt(request.getParameter("deptNo").trim()); //받아온 departmentNo를 no에 담을겡  
	 System.out.println("no = " + no);
	 Department department= service.showDepartment(new Department(no));     //showDepartment메서드써서 매개변수로 no 넣어줄겡
	 System.out.println(department);
	 request.setAttribute("department", department);
	 request.getRequestDispatcher("departmentInfo.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
