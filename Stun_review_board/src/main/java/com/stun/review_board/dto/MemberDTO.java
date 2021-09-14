package com.stun.review_board.dto;

public class MemberDTO {
	public int idx;
	public String id;
	public String pw;
	public String phonenumber;
	
	@Override
	public String toString() {
		return "MemberDTO [idx=" + idx + ", id=" + id + ", pw=" + pw + ", phonenumber=" + phonenumber + "]";
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

}
