package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.StoreProductDTO;
import kr.co.kosmo.mvc.dto.TradeListDTO;

//µø¡÷
public interface StoreProductDao {
	public List<TradeListDTO> trdListName();
	public void addStoreGoods(StoreProductDTO vo);
}
