package spring.crud;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.crud.Dao.EmpDao;
import spring.crud.entity.Emp;

@Controller
public class HomeController {
	
	@Autowired
	private EmpDao empDao;
	
	
	@RequestMapping(path = "/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping(path = "/addEmp")
	public String addEmp() {
		return "add_emp";
	}
	
	@RequestMapping(path = "/createEmp",  method=RequestMethod.POST)
	public String creaeEmp(@ModelAttribute Emp emp) {
		System.out.println(emp);
		
		int i = empDao.saveEmp(emp);
		return "add_emp";
	}
	
	
	
}
