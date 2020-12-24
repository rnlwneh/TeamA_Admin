package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.kosmo.mvc.dto.PageVO;
import kr.co.kosmo.mvc.dto.StoreProductDTO;
import kr.co.kosmo.mvc.dto.TradeListDTO;

//µø¡÷
public interface StoreProductDao {
	public List<TradeListDTO> trdListName();
	public void addStoreGoods(StoreProductDTO vo);
	public List<StoreProductDTO> storeGoodsList(PageVO pvo);
	public void deleteProduct(String str_pro_no);
	public HashMap<String,Object> storeInfo();
	public int totalCnt(HashMap<String,String> map);
	public StoreProductDTO storeGoodsDetail(String str_pro_no);
	public void updateStoreGoods(StoreProductDTO vo);
}
