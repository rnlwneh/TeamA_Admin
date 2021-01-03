package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.PageVO;
import kr.co.kosmo.mvc.dto.StoreOrderDTO;

public interface StoreOrderDao {
	public List<StoreOrderDTO> storeOrderList(PageVO pvo);
	public int strOrdTot(PageVO pvo);
}
