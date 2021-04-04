package web_erp.service;

import java.sql.Connection;
import java.util.List;

import web_erp.dao.impl.DepartmentDaoImpl;
import web_erp.ds.JndiDS;
import web_erp.dto.Department;
import web_erp.dto.Title;

public class DepartmentService {
	private Connection con = JndiDS.getConnection();
	private DepartmentDaoImpl dao = DepartmentDaoImpl.getInstance();
	
	
	public DepartmentService() {
		dao.setCon(con);
	}
	
	public List<Department> showDepartments(){
		return dao.selectDepartmentByAll();
		
	}
	public void addDepartment(Department department) {
		dao.insertDepartment(department);
	}
	
	public Department showDepartment(Department department) {
		return dao.selectDepartmentByNo(department);
	}
	public void delDepartment(int Department) {   //삭제, 업데이트는 리턴해줄게 없기때문에 return 빼준당. void!!!! 
		dao.deleteDepartment(Department);
	}

	public void updateDepartment(Department department) {
		dao.updateDepartment(department);
	}
	

}
