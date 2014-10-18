

package cs425.yogastudio.service;

import cs425.yogastudio.DAO.FacultyDAO;
import cs425.yogastudio.DAO.RoleDAO;
import cs425.yogastudio.entity.Faculty;
import cs425.yogastudio.entity.Role;
import java.util.List;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;



@Transactional(propagation=Propagation.REQUIRES_NEW)
public class FacultyService {

    public FacultyService() {
    }
    
    private RoleDAO roleDAO;
      
    private FacultyDAO facultyDAO;

   @Transactional(propagation=Propagation.SUPPORTS)
   public void setFacultyDAO(FacultyDAO facultyDAO) {
        this.facultyDAO = facultyDAO;
    }
    
   @Transactional(propagation=Propagation.SUPPORTS)
    public void setRoleDAO(RoleDAO roleDAO) {
        this.roleDAO = roleDAO;
    }
  
    public List<Faculty> getAll() {

        return facultyDAO.getAll();
    }

    public void add(Faculty faculty) {
        Role roleFaculty = roleDAO.getRoleByRoleName("ROLE_FACULTY");
        faculty.getRoles().add(roleFaculty);
        facultyDAO.add(faculty);
    }

    public Faculty get(int id) {

        return facultyDAO.get(id);
    }

    public void update(int facultyId, Faculty faculty) {

        facultyDAO.update(facultyId, faculty);
    }

    public void delete(Faculty faculty) {

        facultyDAO.delete(faculty);
        
    }
    
}
