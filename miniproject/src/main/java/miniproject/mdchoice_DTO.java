package miniproject;

import org.springframework.stereotype.Repository;


import lombok.Data;

@Data
@Repository("mdchoice_DTO")
public class mdchoice_DTO {
  int midx;
  String mdtitle,mdtitle_texts,mdimage,mdlink_adr;
	
}
