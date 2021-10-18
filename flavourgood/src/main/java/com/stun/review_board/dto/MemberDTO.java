package com.stun.review_board.dto;

public class MemberDTO {
	public int idx;
	public String nickname;
	public String name;
	public String id;
	public String pw;
	
	@Override
	public String toString() {
		return "MemberDTO [idx=" + idx + ", nickname=" + nickname + ", name=" + name + ", id=" + id + ", pw=" + pw + "]";
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	
	
}
