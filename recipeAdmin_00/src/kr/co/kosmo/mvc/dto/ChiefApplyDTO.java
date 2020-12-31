package kr.co.kosmo.mvc.dto;

public class ChiefApplyDTO {

	private int chef_req_no;
	private int mem_no;
	private String mem_id;
	private String chef_regdate;
	private String mem_email;
	
	
	public int getChef_req_no() {
		return chef_req_no;
	}
	public void setChef_req_no(int chef_req_no) {
		this.chef_req_no = chef_req_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getChef_regdate() {
		return chef_regdate;
	}
	public void setChef_regdate(String chef_regdate) {
		this.chef_regdate = chef_regdate;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

}
