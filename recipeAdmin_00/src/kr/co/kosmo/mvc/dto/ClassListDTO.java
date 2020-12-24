package kr.co.kosmo.mvc.dto;

public class ClassListDTO {
	
	private int class_no;
	private String class_title;
	private int mem_no;
	private String mem_id;
	private String class_period;
	private String class_info_pic;
	
	public String getClass_info_pic() {
		return class_info_pic;
	}
	public void setClass_info_pic(String class_info_pic) {
		this.class_info_pic = class_info_pic;
	}
	public int getClass_no() {
		return class_no;
	}
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
	public String getClass_title() {
		return class_title;
	}
	public void setClass_title(String class_title) {
		this.class_title = class_title;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getClass_period() {
		return class_period;
	}
	public void setClass_period(String class_period) {
		this.class_period = class_period;
	}
	

}
