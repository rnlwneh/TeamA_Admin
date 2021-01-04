package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.kosmo.mvc.dto.TradeListDTO;

//µø¡÷
public interface TradeListDao {
	public List<TradeListDTO> getTradeList();
	public TradeListDTO trdDetail(int trd_list_no);
	public List<HashMap<String,String>> trdDetailInfo(int trd_list_no);
	public int trdTotSell();
	public void addTrdList(TradeListDTO vo);
}
