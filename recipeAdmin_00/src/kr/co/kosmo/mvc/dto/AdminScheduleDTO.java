package kr.co.kosmo.mvc.dto;

/*
 create table admin_schedule (
        ad_sche_no number(5),
        ad_no number(2),
        ad_sche_imp varchar2(15);
        ad_sche_date  date default sysdate,
        ad_sche_hour  date default sysdate,
        ad_sche_title  varchar2(80) not null,
        ad_sche_detail varchar2(200) not null,
       primary key(ad_sche_no),
      constraint  admin_schedule_ad_no_fk   foreign key(ad_no) references admin_info(ad_no)
);
 */

public class AdminScheduleDTO {
	private int ad_sche_no;
	private int ad_no;
	private String ad_sche_imp;
	private String ad_sche_date;
	private String ad_sche_hour;
	private String ad_sche_title;
	private String ad_sche_detail;
	
	
	public int getAd_sche_no() {
		return ad_sche_no;
	}
	public void setAd_sche_no(int ad_sche_no) {
		this.ad_sche_no = ad_sche_no;
	}
	public int getAd_no() {
		return ad_no;
	}
	public void setAd_no(int ad_no) {
		this.ad_no = ad_no;
	}
	public String getAd_sche_imp() {
		return ad_sche_imp;
	}
	public void setAd_sche_imp(String ad_sche_imp) {
		this.ad_sche_imp = ad_sche_imp;
	}
	public String getAd_sche_date() {
		return ad_sche_date;
	}
	public void setAd_sche_date(String ad_sche_date) {
		this.ad_sche_date = ad_sche_date;
	}
	public String getAd_sche_hour() {
		return ad_sche_hour;
	}
	public void setAd_sche_hour(String ad_sche_hour) {
		this.ad_sche_hour = ad_sche_hour;
	}
	public String getAd_sche_title() {
		return ad_sche_title;
	}
	public void setAd_sche_title(String ad_sche_title) {
		this.ad_sche_title = ad_sche_title;
	}
	public String getAd_sche_detail() {
		return ad_sche_detail;
	}
	public void setAd_sche_detail(String ad_sche_detail) {
		this.ad_sche_detail = ad_sche_detail;
	}
	
	
}
