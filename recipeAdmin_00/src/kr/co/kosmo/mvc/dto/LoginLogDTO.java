package kr.co.kosmo.mvc.dto;
/*
create table loginlog(
        log_no number(10)
        , ad_no number(2)
        , log_reip varchar2(20)
        , log_uagent varchar2(20)
        , log_login_fl char(1)
        , log_status varchar2(6)
        , log_logtime varchar2(20)
 */
public class LoginLogDTO {
	private int log_no;
	private int ad_no;
	private String log_reip;
	private String log_uagent;
	private String log_login_fl;
	private String log_status;
	private String log_logtime;
	//========================================
	
	public int getLog_no() {
		return log_no;
	}
	public void setLog_no(int log_no) {
		this.log_no = log_no;
	}
	public int getAd_no() {
		return ad_no;
	}
	public void setAd_no(int ad_no) {
		this.ad_no = ad_no;
	}
	public String getLog_reip() {
		return log_reip;
	}
	public void setLog_reip(String log_reip) {
		this.log_reip = log_reip;
	}
	public String getLog_uagent() {
		return log_uagent;
	}
	public void setLog_uagent(String log_uagent) {
		this.log_uagent = log_uagent;
	}
	public String getLog_status() {
		return log_status;
	}
	public String getLog_login_fl() {
		return log_login_fl;
	}
	public void setLog_login_fl(String log_login_fl) {
		this.log_login_fl = log_login_fl;
	}
	public void setLog_status(String log_status) {
		this.log_status = log_status;
	}
	public String getLog_logtime() {
		return log_logtime;
	}
	public void setLog_logtime(String log_logtime) {
		this.log_logtime = log_logtime;
	}
	
	
	
}
