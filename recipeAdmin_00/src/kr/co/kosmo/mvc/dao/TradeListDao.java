package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.TradeListDTO;

//����
public interface TradeListDao {
	public List<TradeListDTO> getTradeList();
}
