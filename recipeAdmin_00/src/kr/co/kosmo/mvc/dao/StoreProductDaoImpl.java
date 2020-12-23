package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.PageVO;
import kr.co.kosmo.mvc.dto.StoreProductDTO;
import kr.co.kosmo.mvc.dto.TradeListDTO;

//동주
@Repository
public class StoreProductDaoImpl implements StoreProductDao {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<TradeListDTO> trdListName() {
		System.out.println("=====StoreProductMapper trdListName 호출=====");
		return ss.selectList("strProduct.trdListName");
	}

	@Override
	public void addStoreGoods(StoreProductDTO vo) {
		System.out.println("=====StoreProductMapper addStoreGoods 호출=====");
		ss.insert("strProduct.addStoreGoods", vo);
	}

	@Override
	public List<StoreProductDTO> storeGoodsList(PageVO pvo) {
		System.out.println("=====StoreProductMapper goodsList 호출=====");
		return ss.selectList("strProduct.goodsList",pvo);
	}

	@Override
	public void deleteProduct(String str_pro_no) {
		System.out.println("=====StoreProductMapper delPro 호출=====");
		ss.delete("strProduct.delPro", str_pro_no);
	}

	@Override
	public HashMap<String, Object> storeInfo() {
		System.out.println("=====StoreProductMapper storeInfo호출=====");
		return ss.selectOne("strProduct.storeInfo");
	}

	@Override
	public int totalCnt(HashMap<String,String> map) {
		System.out.println("=====StoreProductMapper totalCnt 호출=====");
//		System.out.println("////////////"+map.get("searchStatus")+"/////////////////");
		return ss.selectOne("strProduct.totalCnt",map);
	}

	@Override
	public StoreProductDTO storeGoodsDetail(String str_pro_no) {
		System.out.println("=====StoreProductMapper goodsDetail 호출=====");
		return ss.selectOne("strProduct.goodsDetail", str_pro_no);
	}
}
