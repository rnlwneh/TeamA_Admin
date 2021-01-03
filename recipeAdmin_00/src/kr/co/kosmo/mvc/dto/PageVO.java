package kr.co.kosmo.mvc.dto;


public class PageVO {

		private int nowPage, startPage, endPage, total, cntPerPage, lastPage, start, end;
		private int cntPage = 10;
		//===============================tables
		private String searchType;
		private String keyword;
		
		//===============================storeGoodsList
		private String searchProName;
		private String searchTrdList;
		private String searchStatus;
		
		//===============================memberOrderList
		private String startSearchDate;
		private String endSearchDate;
		private String mem_name;
		private String str_pro_name;
		
		//================================
		
		public PageVO() {
		}
		public PageVO(int total, int nowPage, int cntPerPage) {
			this.nowPage=nowPage;
			this.cntPerPage=cntPerPage;
			this.total=total;
			memberLastPage(total, cntPerPage);
			memberStartEndPage(nowPage, cntPage);
			memberStartEnd(nowPage, cntPerPage);
		}
		private void memberLastPage(int total, int cntPerPage) {
			lastPage = (int) Math.ceil((double)total / (double)cntPerPage);
		}

		private void memberStartEndPage(int nowPage, int cntPage) {
			endPage = ((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage;
			if (getLastPage() < getEndPage()) {
				endPage = getLastPage();
			}
			startPage =getEndPage() - cntPage + 1;
			if (getStartPage() < 1) {
				startPage = 1;
			}
		}
		private void memberStartEnd(int nowPage, int cntPerPage) {
			end = nowPage * cntPerPage;
			start = end - cntPerPage + 1;
		}
		
		public int getNowPage() {
			return nowPage;
		}
		public void setNowPage(int nowPage) {
			this.nowPage = nowPage;
		}
		public int getStartPage() {
			return startPage;
		}
		public void setStartPage(int startPage) {
			this.startPage = startPage;
		}
		public int getEndPage() {
			return endPage;
		}
		public void setEndPage(int endPage) {
			this.endPage = endPage;
		}
		public int getTotal() {
			return total;
		}
		public void setTotal(int total) {
			this.total = total;
		}
		public int getCntPerPage() {
			return cntPerPage;
		}
		public void setCntPerPage(int cntPerPage) {
			this.cntPerPage = cntPerPage;
		}
		public int getLastPage() {
			return lastPage;
		}
		public void setLastPage(int lastPage) {
			this.lastPage = lastPage;
		}
		public int getStart() {
			return start;
		}
		public void setStart(int start) {
			this.start = start;
		}
		public int getEnd() {
			return end;
		}
		public void setEnd(int end) {
			this.end = end;
		}	
		public int setCntPage() {
			return cntPage;
		}
		public void getCntPage(int cntPage) {
			this.cntPage = cntPage;
		}
		public int getCntPage() {
			return cntPage;
		}
		public void setCntPage(int cntPage) {
			this.cntPage = cntPage;
		}
		
		
		//================================
		public String getSearchType() {
			return searchType;
		}
		public void setSearchType(String searchType) {
			this.searchType = searchType;
		}
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}
		
		
		//==================================
		public String getSearchProName() {
			return searchProName;
		}
		public void setSearchProName(String searchProName) {
			this.searchProName = searchProName;
		}
		public String getSearchTrdList() {
			return searchTrdList;
		}
		public void setSearchTrdList(String searchTrdList) {
			this.searchTrdList = searchTrdList;
		}
		public String getSearchStatus() {
			return searchStatus;
		}
		public void setSearchStatus(String searchStatus) {
			this.searchStatus = searchStatus;
		}
		
		
		//====================================
		public String getStartSearchDate() {
			return startSearchDate;
		}
		public void setStartSearchDate(String startSearchDate) {
			this.startSearchDate = startSearchDate;
		}
		public String getEndSearchDate() {
			return endSearchDate;
		}
		public void setEndSearchDate(String endSearchDate) {
			this.endSearchDate = endSearchDate;
		}
		public String getMem_name() {
			return mem_name;
		}
		public void setMem_name(String mem_name) {
			this.mem_name = mem_name;
		}
		public String getStr_pro_name() {
			return str_pro_name;
		}
		public void setStr_pro_name(String str_pro_name) {
			this.str_pro_name = str_pro_name;
		}
		
		
		@Override
		public String toString() {
			return "PagingVO [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total=" + total
					+ ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", end=" + end
					+ ", cntPage=" + cntPage + "]";
		}
}

