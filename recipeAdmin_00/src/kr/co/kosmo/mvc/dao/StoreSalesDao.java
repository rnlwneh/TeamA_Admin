package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;

public interface StoreSalesDao {
	public List<HashMap<String,String>> storeSales(String date);
}
