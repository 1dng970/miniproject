package miniproject;

import org.springframework.stereotype.Repository;

import lombok.Data;

@Data
@Repository("weekinfo_DTO")
public class weekinfo_DTO {
    int midx;
    String apt_name,apt_adr	,apt_jr,apt_id,buy_date,apt_date;
    String apt_image,atp_gj,apt_sd,apt_no,apt_home,apt_sec;

}