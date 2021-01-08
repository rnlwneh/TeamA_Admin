package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.PageVO;
import kr.co.kosmo.mvc.dto.StoreOrderDTO;

@Repository
public class StoreOrderDaoImpl implements StoreOrderDao {

	@Autowired
	SqlSessionTemplate ss;
	
	@Override
	public List<StoreOrderDTO> storeOrderList(PageVO pvo) {
		return ss.selectList("strOrdList.strOrderList", pvo);
	}

	@Override
	public int strOrdTot(PageVO pvo) {
		return ss.selectOne("strOrdList.strOrdTot",pvo);
	}
}
