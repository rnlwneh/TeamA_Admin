package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.PageVO;
import kr.co.kosmo.mvc.dto.StoreProductDTO;
import kr.co.kosmo.mvc.dto.TradeListDTO;

//µø¡÷
@Repository
public class StoreProductDaoImpl implements StoreProductDao {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<TradeListDTO> trdListName() {
		return ss.selectList("strProduct.trdListName");
	}

	@Override
	public void addStoreGoods(StoreProductDTO vo) {
		ss.insert("strProduct.addStoreGoods", vo);
	}

	@Override
	public List<StoreProductDTO> storeGoodsList(PageVO pvo) {
		return ss.selectList("strProduct.goodsList",pvo);
	}

	@Override
	public void deleteProduct(String str_pro_no) {
		ss.delete("strProduct.delPro", str_pro_no);
	}

	@Override
	public HashMap<String, Object> storeInfo() {
		return ss.selectOne("strProduct.storeInfo");
	}

	@Override
	public int totalCnt(HashMap<String,String> map) {
		return ss.selectOne("strProduct.totalCnt",map);
	}

	@Override
	public StoreProductDTO storeGoodsDetail(String str_pro_no) {
		return ss.selectOne("strProduct.goodsDetail", str_pro_no);
	}

	@Override
	public void updateStoreGoods(StoreProductDTO vo) {
		ss.update("strProduct.updateStoreGoods", vo);
	}
}
