package model;

import java.sql.Date;

public class KhachHang {
 private String maKhachHangString; 
 private String tenDangNhapString;
 private String matkhauString;
 private String hoVaTenString ;
 private String gioitinhString;
 private String diachiString ;
 private Date 	ngaysinhDate ;
 private String soDienthoaiString;
 private String email ;
 private int	 isadmin ;
 public KhachHang() {
	}
public KhachHang(String maKhachHangString, String tenDangNhapString, String matkhauString, String hoVaTenString,
		String gioitinhString, String diachiString, Date ngaySinh, String soDienthoaiString, String email,
		int isadmin) {
	
	this.maKhachHangString = maKhachHangString;
	this.tenDangNhapString = tenDangNhapString;
	this.matkhauString = matkhauString;
	this.hoVaTenString = hoVaTenString;
	this.gioitinhString = gioitinhString;
	this.diachiString = diachiString;
	this.ngaysinhDate = ngaySinh;
	this.soDienthoaiString = soDienthoaiString;
	this.email = email;
	this.isadmin = isadmin;
}

public String getMaKhachHangString() {
	return maKhachHangString;
}
public void setMaKhachHangString(String maKhachHangString) {
	this.maKhachHangString = maKhachHangString;
}
public String getTenDangNhapString() {
	return tenDangNhapString;
}
public void setTenDangNhapString(String tenDangNhapString) {
	this.tenDangNhapString = tenDangNhapString;
}
public String getMatkhauString() {
	return matkhauString;
}
public void setMatkhauString(String matkhauString) {
	this.matkhauString = matkhauString;
}
public String getHoVaTenString() {
	return hoVaTenString;
}
public void setHoVaTenString(String hoVaTenString) {
	this.hoVaTenString = hoVaTenString;
}
public String getGioitinhString() {
	return gioitinhString;
}
public void setGioitinhString(String gioitinhString) {
	this.gioitinhString = gioitinhString;
}
public String getDiachiString() {
	return diachiString;
}
public void setDiachiString(String diachiString) {
	this.diachiString = diachiString;
}
public Date getNgaysinhDate() {
	return ngaysinhDate;
}
public void setNgaysinhDate(Date ngaysinhDate) {
	this.ngaysinhDate = ngaysinhDate;
}
public String getSoDienthoaiString() {
	return soDienthoaiString;
}
public void setSoDienthoaiString(String soDienthoaiString) {
	this.soDienthoaiString = soDienthoaiString;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

public int getIsadmin() {
	return isadmin;
}
public void setIsadmin(int isadmin) {
	this.isadmin = isadmin;
}
@Override
public String toString() {
	return "KhachHang [maKhachHangString=" + maKhachHangString + ", tenDangNhapString=" + tenDangNhapString
			+ ", matkhauString=" + matkhauString + ", hoVaTenString=" + hoVaTenString + ", gioitinhString="
			+ gioitinhString + ", diachiString=" + diachiString + ", ngaysinhDate=" + ngaysinhDate
			+ ", soDienthoaiString=" + soDienthoaiString + ", email=" + email + ", isadmin=" + isadmin + "]";
}



}
