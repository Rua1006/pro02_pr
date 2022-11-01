package kr.co.myshop.vo;
//Product -> ProductVo
public class Product {
	private int proNo;		//상품번호
	private int cateNo;		//카테 분류
	private String proName;	//상품명
	private String proSpec;	//상품규격
	private int proPrice;	//상품금액
	private String proPic;	//상품이미지
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	public int getCateNo() {
		return cateNo;
	}
	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getProSpec() {
		return proSpec;
	}
	public void setProSpec(String proSpec) {
		this.proSpec = proSpec;
	}
	public int getProPrice() {
		return proPrice;
	}
	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}
	public String getProPic() {
		return proPic;
	}
	public void setProPic(String proPic) {
		this.proPic = proPic;
	}
	
}
