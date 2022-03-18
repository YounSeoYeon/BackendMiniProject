package com.multi.nuguna.model;

import java.util.Date;

public class CommunityVO {
	private int comNo;
	private String comTitle;
	private String comComent;
	private String comPwd;
	private Date comDate;
	private int comCount;
	private String memId;
	
	public int getComNo() {
		return comNo;
	}
	public void setComNo(int comNo) {
		this.comNo = comNo;
	}
	public String getComTitle() {
		return comTitle;
	}
	public void setConTitle(String comTitle) {
		this.comTitle = comTitle;
	}	
	public String getComComent() {
		return comComent;
	}
	public void setComComent(String comComent) {
		this.comComent = comComent;
	}
	
	public String getComPwd() {
		return comPwd;
	}
	public void setComPwd(String comPwd) {
		this.comPwd = comPwd;
	}
	public Date getComDate() {
		return comDate;
	}
	public void setComDate(Date comDate) {
		this.comDate = comDate;
	}
	public int getComCount() {
		return comCount;
	}
	public void setComCount(int comCount) {
		this.comCount = comCount;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
}
