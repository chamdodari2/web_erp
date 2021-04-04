package web_erp.service;

import java.sql.Connection;
import java.util.List;

import web_erp.dao.impl.EmployeeDaoImpl;
import web_erp.ds.JndiDS;
import web_erp.dto.Employee;

public class EmployeeService {
				
	private Connection con = JndiDS.getConnection();
	private EmployeeDaoImpl dao = EmployeeDaoImpl.getInstance();
	
	
	public EmployeeService() {
		dao.setCon(con);
	}
	
	public List<Employee> showEmployees(){
		return dao.selectEmployeeByAll();
	}
	public void addEmployee(Employee employee) {
		dao.insertEmployee(employee);
	}
	public Employee showEmployee(Employee employee) {
		return dao.selectEmployeeByNo(employee);
	}
	public void delEmployee (Employee employee) {
		dao.deleteEmployee(employee);
	}
	public void updateEmployee(Employee employee) {
		dao.updateEmployee(employee);
	}
	
	
}
