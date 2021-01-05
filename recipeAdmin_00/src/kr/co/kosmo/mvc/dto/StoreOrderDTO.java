package kr.co.kosmo.mvc.dto;

/*
create table store_order(
        str_cart_no number(6), 
        str_ord_no number(6), 
        mem_no number(5),  
        str_pro_no number(5),  
        str_ord_cnt number(4), 
        str_ord_addr varchar2(80),
        str_ord_date date default sysdate, 
        primary key (str_cart_no)
 );
 */
public class StoreOrderDTO {
	private int str_cart_no;
	private int str_ord_no;
	private int mem_no;
	private int str_pro_no;
	private int str_ord_cnt;
	private String str_ord_addr;
	private String str_ord_date;
	//======================================
	
	private StoreProductDTO storeProductDTO;
	private RecipeMemberDTO recipeMemberDTO;
	
	
	public int getStr_cart_no() {
		return str_cart_no;
	}
	public void setStr_cart_no(int str_cart_no) {
		this.str_cart_no = str_cart_no;
	}
	public int getStr_ord_no() {
		return str_ord_no;
	}
	public void setStr_ord_no(int str_ord_no) {
		this.str_ord_no = str_ord_no;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public int getStr_pro_no() {
		return str_pro_no;
	}
	public void setStr_pro_no(int str_pro_no) {
		this.str_pro_no = str_pro_no;
	}
	public int getStr_ord_cnt() {
		return str_ord_cnt;
	}
	public void setStr_ord_cnt(int str_ord_cnt) {
		this.str_ord_cnt = str_ord_cnt;
	}
	public String getStr_ord_addr() {
		return str_ord_addr;
	}
	public void setStr_ord_addr(String str_ord_addr) {
		this.str_ord_addr = str_ord_addr;
	}
	public String getStr_ord_date() {
		return str_ord_date;
	}
	public void setStr_ord_date(String str_ord_date) {
		this.str_ord_date = str_ord_date;
	}
	public StoreProductDTO getStoreProductDTO() {
		return storeProductDTO;
	}
	public void setStoreProductDTO(StoreProductDTO storeProductDTO) {
		this.storeProductDTO = storeProductDTO;
	}
	public RecipeMemberDTO getRecipeMemberDTO() {
		return recipeMemberDTO;
	}
	public void setRecipeMemberDTO(RecipeMemberDTO recipeMemberDTO) {
		this.recipeMemberDTO = recipeMemberDTO;
	}
	
}
