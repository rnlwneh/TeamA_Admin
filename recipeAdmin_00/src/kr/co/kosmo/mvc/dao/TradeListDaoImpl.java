package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.TradeListDTO;

//����
@Repository
public class TradeListDaoImpl implements TradeListDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<TradeListDTO> getTradeList() {
		System.out.println("=====TradeListMapper tradeListȣ��=====");
		return ss.selectList("tradeList.tradeList");
	}
}
