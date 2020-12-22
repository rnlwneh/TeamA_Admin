package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
