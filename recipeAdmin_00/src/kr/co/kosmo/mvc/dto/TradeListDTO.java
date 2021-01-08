package kr.co.kosmo.mvc.dto;
/*
-- 거래처 목록 테이블 생성 --
create table trade_list (
        trd_list_no number(3),
        trd_list_name varchar2(30)  not null,
        trd_list_mng_name  varchar2(20)  not null,
        trd_list_mng_phone  char(11),
        trd_list_orderdate date default sysdate,
        trd_list_receivedate date default sysdate,
       primary key(trd_list_no)
);
*/

public class TradeListDTO {
	private int trd_list_no;
	private String trd_list_name;
	private String trd_list_mng_name;
	private String trd_list_mng_phone;
	private String trd_list_orderdate;
	private String trd_list_receivedate;
	
	//===================================
	private StoreProductDTO storeProductDTO;
	private int sum_cnt;
	
	
	public int getTrd_list_no() {
		return trd_list_no;
	}
	public void setTrd_list_no(int trd_list_no) {
		this.trd_list_no = trd_list_no;
	}
	public String getTrd_list_name() {
		return trd_list_name;
	}
	public void setTrd_list_name(String trd_list_name) {
		this.trd_list_name = trd_list_name;
	}
	public String getTrd_list_mng_name() {
		return trd_list_mng_name;
	}
	public void setTrd_list_mng_name(String trd_list_mng_name) {
		this.trd_list_mng_name = trd_list_mng_name;
	}
	public String getTrd_list_mng_phone() {
		return trd_list_mng_phone;
	}
	public void setTrd_list_mng_phone(String trd_list_mng_phone) {
		this.trd_list_mng_phone = trd_list_mng_phone;
	}
	public String getTrd_list_orderdate() {
		return trd_list_orderdate;
	}
	public void setTrd_list_orderdate(String trd_list_orderdate) {
		this.trd_list_orderdate = trd_list_orderdate;
	}
	public String getTrd_list_receivedate() {
		return trd_list_receivedate;
	}
	public void setTrd_list_receivedate(String trd_list_receivedate) {
		this.trd_list_receivedate = trd_list_receivedate;
	}
	
	//===============================================================
	public StoreProductDTO getStoreProductDTO() {
		return storeProductDTO;
	}
	public void setStoreProductDTO(StoreProductDTO storeProductDTO) {
		this.storeProductDTO = storeProductDTO;
	}
	public int getSum_cnt() {
		return sum_cnt;
	}
	public void setSum_cnt(int sum_cnt) {
		this.sum_cnt = sum_cnt;
	}
}
