package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.StoreProductDTO;
import kr.co.kosmo.mvc.dto.TradeListDTO;

//����
@Repository
public class StoreProductDaoImpl implements StoreProductDao {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<TradeListDTO> trdListName() {
		System.out.println("=====StoreProductMapper trdListName ȣ��=====");
		return ss.selectList("strProduct.trdListName");
	}

	@Override
	public void addStoreGoods(StoreProductDTO vo) {
		System.out.println("=====StoreProductMapper addStoreGoods ȣ��=====");
		ss.insert("strProduct.addStoreGoods", vo);
	}
}
