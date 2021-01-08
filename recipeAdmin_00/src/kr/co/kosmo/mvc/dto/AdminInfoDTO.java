package kr.co.kosmo.mvc.dto;
/*
	ad_no number(2),
    ad_name varchar2(15) not null,
    ad_phone char(11) not null,
    ad_email varchar2(30) unique,
    ad_pwd varchar2(15) not null,
    ad_author varchar2(50) not null,
    ad_logintime date default sysdate,
    ad_logouttime date default sysdate,
    ad_regdate date default sysdate,
 */

public class AdminInfoDTO {
	private int ad_no;
	private String ad_name;
	private String ad_phone;
	private String ad_email;
	private String ad_pwd;
	private String ad_author;
	private String ad_logintime;
	private String ad_logouttime;
	private String ad_regdate;
	
	public int getAd_no() {
		return ad_no;
	}
	public void setAd_no(int ad_no) {
		this.ad_no = ad_no;
	}
	public String getAd_name() {
		return ad_name;
	}
	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}
	public String getAd_phone() {
		return ad_phone;
	}
	public void setAd_phone(String ad_phone) {
		this.ad_phone = ad_phone;
	}
	public String getAd_email() {
		return ad_email;
	}
	public void setAd_email(String ad_email) {
		this.ad_email = ad_email;
	}
	public String getAd_pwd() {
		return ad_pwd;
	}
	public void setAd_pwd(String ad_pwd) {
		this.ad_pwd = ad_pwd;
	}	
	public String getAd_author() {
		return ad_author;
	}
	public void setAd_author(String ad_author) {
		this.ad_author = ad_author;
	}
	public String getAd_logintime() {
		return ad_logintime;
	}
	public void setAd_logintime(String ad_logintime) {
		this.ad_logintime = ad_logintime;
	}
	public String getAd_logouttime() {
		return ad_logouttime;
	}
	public void setAd_logouttime(String ad_logouttime) {
		this.ad_logouttime = ad_logouttime;
	}
	public String getAd_regdate() {
		return ad_regdate;
	}
	public void setAd_regdate(String ad_regdate) {
		this.ad_regdate = ad_regdate;
	}
	
}
