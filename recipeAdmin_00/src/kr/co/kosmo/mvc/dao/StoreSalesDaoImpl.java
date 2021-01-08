package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreSalesDaoImpl implements StoreSalesDao {
	
	@Autowired
	SqlSessionTemplate ss;

	@Override
	public List<HashMap<String, String>> storeSales(String date) {
		return ss.selectList("strSales.salesPerDate", date);
	}

}
