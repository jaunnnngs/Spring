package com.my.reviewflavour.Dto;

public class BoardDto {

	private String title;
	private String nickname;
	private String content;
	private String wdate;

	@Override
	public String toString() {
		return "BoardDto [title=" + title + ", nickname=" + nickname + ", content=" + content + ", wdate=" + wdate
				+ "]";
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

}
