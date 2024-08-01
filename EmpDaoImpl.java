package spring.crud.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import spring.crud.entity.Emp;

@Repository
public class EmpDaoImpl implements EmpDao{

	@Autowired
	private HibernateTemplate hibernategemplate;
	
	@Override
	@Transactional
	public int saveEmp(Emp emp) {
		int i = (int) hibernategemplate.save(emp);
		return i;
	}

	@Override
	public Emp getEmpById(int id) {
		Emp emp = hibernategemplate.get(Emp.class, id);
		return emp;
	}

	@Override
	public List<Emp> getAllEmp() {
		List<Emp> list = hibernategemplate.loadAll(Emp.class);
		return list;
	}

	@Override
	@Transactional
	public void update(Emp emp) {
		hibernategemplate.update(emp);
	}

	@Override
	@Transactional
	public void deleteEmp(int id) {
		Emp emp = hibernategemplate.get(Emp.class, id);
		hibernategemplate.delete(emp);
	}
	
	
}
