package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.TradeListDTO;

//µø¡÷
@Repository
public class TradeListDaoImpl implements TradeListDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<TradeListDTO> getTradeList() {
		return ss.selectList("tradeList.tradeList");
	}

	@Override
	public TradeListDTO trdDetail(int trd_list_no) {
		return ss.selectOne("tradeList.trdDetail", trd_list_no);
	}

	@Override
	public List<HashMap<String, String>> trdDetailInfo(int trd_list_no) {
		return ss.selectList("tradeList.trdDetailInfo", trd_list_no);
	}

	@Override
	public int trdTotSell() {
		return ss.selectOne("tradeList.trdTotSell");
	}

	@Override
	public void addTrdList(TradeListDTO vo) {
		ss.insert("tradeList.addTrdList", vo);
	}
}
