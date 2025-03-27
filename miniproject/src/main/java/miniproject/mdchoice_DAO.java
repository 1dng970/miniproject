package miniproject;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("mdchoice_DAO")
public class mdchoice_DAO {
	//전체 데이터 가져오기
	
	@Resource(name="template")
	public SqlSessionTemplate st;
	
	public List<mdchoice_DTO> mdchoice(){
	      List<mdchoice_DTO> mdall = this.st.selectList("home_mapper.mdchoice_all");
	      
	      return mdall;
	   }

}
