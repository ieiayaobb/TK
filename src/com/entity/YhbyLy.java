package com.entity;

/**
 * YhbyLy entity. @author MyEclipse Persistence Tools
 */

public class YhbyLy implements java.io.Serializable {

	// Fields

	private Integer id;
	private UserPri userPri;
	private YhbyPri yhbyPri;
	private String detail;
	private Integer gold;

	// Constructors

	/** default constructor */
	public YhbyLy() {
	}

	/** full constructor */
	public YhbyLy(UserPri userPri, YhbyPri yhbyPri, String detail, Integer gold) {
		this.userPri = userPri;
		this.yhbyPri = yhbyPri;
		this.detail = detail;
		this.gold = gold;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public UserPri getUserPri() {
		return this.userPri;
	}

	public void setUserPri(UserPri userPri) {
		this.userPri = userPri;
	}

	public YhbyPri getYhbyPri() {
		return this.yhbyPri;
	}

	public void setYhbyPri(YhbyPri yhbyPri) {
		this.yhbyPri = yhbyPri;
	}

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Integer getGold() {
		return this.gold;
	}

	public void setGold(Integer gold) {
		this.gold = gold;
	}

}