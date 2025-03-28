package miniproject;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("weekinfo_DAO")
public class weekinfo_DAO {
	
	
	@Resource(name="template")
	public SqlSessionTemplate st;
	
	public List<weekinfo_DTO> wkchoice(){
	      List<weekinfo_DTO> wkall = this.st.selectList("home_mapper.weekinfo_all");
	      
	      return wkall;
	   }

}

	
	

