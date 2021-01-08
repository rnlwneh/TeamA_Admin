package kr.co.kosmo.mvc.dto;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

/*
 -- 스토어 상품 테이블 생성 --
create table store_product (
        str_pro_no number(5),
        trd_list_no number(3),
        str_pro_image  varchar2(90)  not null,
        str_pro_detail_image varchar2(90) not null,
        str_pro_content varchar2(200) not null,
        str_pro_name  varchar2(50) not null,
        str_pro_remind  number(3),
        str_pro_primecost number(7)  not null,
        str_pro_salescost number(7)  not null,
        str_pro_show number(1)  not null,
       primary key(str_pro_no),
     constraint store_product_trd_list_no_fk   foreign key(trd_list_no) references trade_list(trd_list_no)
);
 */

public class StoreProductDTO {
	private int str_pro_no;
	private int trd_list_no;
	private String str_pro_image;
	private String str_pro_detail_image;
	private String str_pro_content;
	private String str_pro_name;
	private int str_pro_remind;
	private int str_pro_primecost;
	private int str_pro_salescost;
	private int str_pro_show;
	//================================================
	private String pre_str_pro_image;
	private String pre_str_pro_detail_image;
	MultipartFile file;
	MultipartFile detailFile;
	
	private TradeListDTO tradeListDTO;
	
	
	public String getPre_str_pro_image(){
		return pre_str_pro_image;
	}
	public void setPre_str_pro_image(String pre_str_pro_image) {
		this.pre_str_pro_image = pre_str_pro_image;
	}
	public String getPre_str_pro_detail_image() {
		return pre_str_pro_detail_image;
	}
	public void setPre_str_pro_detail_image(String pre_str_pro_detail_image) {
		this.pre_str_pro_detail_image = pre_str_pro_detail_image;
	}
	
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) throws Exception {
		this.file=file;
	}
	
	public MultipartFile getDetailFile() {
		return detailFile;
	}
	public void setDetailFile(MultipartFile detailFile) throws Exception {
		this.detailFile=detailFile;
	}
	
	
	public int getStr_pro_no() {
		return str_pro_no;
	}
	public void setStr_pro_no(int str_pro_no) {
		this.str_pro_no = str_pro_no;
	}
	public int getTrd_list_no() {
		return trd_list_no;
	}
	public void setTrd_list_no(int trd_list_no) {
		this.trd_list_no = trd_list_no;
	}
	public String getStr_pro_image() {
		return str_pro_image;
	}
	public void setStr_pro_image(String str_pro_image) {
		this.str_pro_image = str_pro_image;
	}
	public String getStr_pro_detail_image() {
		return str_pro_detail_image;
	}
	public void setStr_pro_detail_image(String str_pro_detail_image) {
		this.str_pro_detail_image = str_pro_detail_image;
	}
	public String getStr_pro_content() {
		return str_pro_content;
	}
	public void setStr_pro_content(String str_pro_content) {
		this.str_pro_content = str_pro_content;
	}
	public String getStr_pro_name() {
		return str_pro_name;
	}
	public void setStr_pro_name(String str_pro_name) {
		this.str_pro_name = str_pro_name;
	}
	public int getStr_pro_remind() {
		return str_pro_remind;
	}
	public void setStr_pro_remind(int str_pro_remind) {
		this.str_pro_remind = str_pro_remind;
	}
	public int getStr_pro_primecost() {
		return str_pro_primecost;
	}
	public void setStr_pro_primecost(int str_pro_primecost) {
		this.str_pro_primecost = str_pro_primecost;
	}
	public int getStr_pro_salescost() {
		return str_pro_salescost;
	}
	public void setStr_pro_salescost(int str_pro_salescost) {
		this.str_pro_salescost = str_pro_salescost;
	}
	public int getStr_pro_show() {
		return str_pro_show;
	}
	public void setStr_pro_show(int str_pro_show) {
		this.str_pro_show = str_pro_show;
	}
	
	
	public TradeListDTO getTradeListDTO() {
		return tradeListDTO;
	}
	public void setTradeListDTO(TradeListDTO tradeListDTO) {
		this.tradeListDTO = tradeListDTO;
	}
}
