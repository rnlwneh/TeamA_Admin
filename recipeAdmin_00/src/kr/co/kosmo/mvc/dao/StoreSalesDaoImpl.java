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
		System.out.println("=====StoreSalesMapper salesPerDate 호출=====");
		List<HashMap<String,String>> searchDateList = ss.selectList("strSales.salesPerDate", date);
		System.out.println("리스트값 : "+searchDateList.size());
		return ss.selectList("strSales.salesPerDate", date);
	}
	
//	public List<HashMap<String,String>> test(){
//		return ss.selectList("strSales.test");
//	}

}
