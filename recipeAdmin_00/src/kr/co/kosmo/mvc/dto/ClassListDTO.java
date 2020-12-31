package kr.co.kosmo.mvc.dto;


public class ClassListDTO {

	private int class_no;
	private String class_title;
	private int mem_no;
	private String class_thumbnail;
	private String class_content;
	private String class_recipe_video;
	private String mate_name;
	private String mate_cnt;
	private String step;
	private int class_price;
	private int view_cnt;
	private int admin_app;
	private String class_period;
	private String class_cooktime;
	private String class_detail_info;
	private String class_uploadtime;
	private int kind_tag_no;
	private int theme_tag_no;
	private int material_tag_no;
	

 private RecipeMemberDTO member;
 
 
 


	public RecipeMemberDTO getMember() {
	return member;
}

public void setMember(RecipeMemberDTO member) {
	this.member = member;
}

	public int getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}

	public int getAdmin_app() {
		return admin_app;
	}

	public void setAdmin_app(int admin_app) {
		this.admin_app = admin_app;
	}

	public String getClass_uploadtime() {
		return class_uploadtime;
	}

	public void setClass_uploadtime(String class_uploadtime) {
		this.class_uploadtime = class_uploadtime;
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

	public String getClass_thumbnail() {
		return class_thumbnail;
	}

	public void setClass_thumbnail(String class_thumbnail) {
		this.class_thumbnail = class_thumbnail;
	}

	public String getClass_content() {
		return class_content;
	}

	public void setClass_content(String class_content) {
		this.class_content = class_content;
	}

	public String getClass_recipe_video() {
		return class_recipe_video;
	}

	public void setClass_recipe_video(String class_recipe_video) {
		this.class_recipe_video = class_recipe_video;
	}

	public String getMate_name() {
		return mate_name;
	}

	public void setMate_name(String mate_name) {
		this.mate_name = mate_name;
	}

	public String getMate_cnt() {
		return mate_cnt;
	}

	public void setMate_cnt(String mate_cnt) {
		this.mate_cnt = mate_cnt;
	}

	public String getStep() {
		return step;
	}

	public void setStep(String step) {
		this.step = step;
	}

	public int getClass_price() {
		return class_price;
	}

	public void setClass_price(int class_price) {
		this.class_price = class_price;
	}

	public String getClass_period() {
		return class_period;
	}

	public void setClass_period(String class_period) {
		this.class_period = class_period;
	}

	public String getClass_cooktime() {
		return class_cooktime;
	}

	public void setClass_cooktime(String class_cooktime) {
		this.class_cooktime = class_cooktime;
	}

	public String getClass_detail_info() {
		return class_detail_info;
	}

	public void setClass_detail_info(String class_detail_info) {
		this.class_detail_info = class_detail_info;
	}

	public int getKind_tag_no() {
		return kind_tag_no;
	}

	public void setKind_tag_no(int kind_tag_no) {
		this.kind_tag_no = kind_tag_no;
	}

	public int getTheme_tag_no() {
		return theme_tag_no;
	}

	public void setTheme_tag_no(int theme_tag_no) {
		this.theme_tag_no = theme_tag_no;
	}

	public int getMaterial_tag_no() {
		return material_tag_no;
	}

	public void setMaterial_tag_no(int material_tag_no) {
		this.material_tag_no = material_tag_no;
	}

}
