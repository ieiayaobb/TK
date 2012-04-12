package com.entity;

/**
 * StPri entity. @author MyEclipse Persistence Tools
 */

public class StPri implements java.io.Serializable {

	// Fields

	private Integer id;
	private String stmc;
	private String name;
	private String password;
	private Integer gold;
	private String toux;
	private String brief;
	private String introduction;

	// Constructors

	/** default constructor */
	public StPri() {
	}

	/** minimal constructor */
	public StPri(String stmc, String name, String password, Integer gold) {
		this.stmc = stmc;
		this.name = name;
		this.password = password;
		this.gold = gold;
	}

	/** full constructor */
	public StPri(String stmc, String name, String password, Integer gold,
			String toux, String brief, String introduction) {
		this.stmc = stmc;
		this.name = name;
		this.password = password;
		this.gold = gold;
		this.toux = toux;
		this.brief = brief;
		this.introduction = introduction;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStmc() {
		return this.stmc;
	}

	public void setStmc(String stmc) {
		this.stmc = stmc;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getGold() {
		return this.gold;
	}

	public void setGold(Integer gold) {
		this.gold = gold;
	}

	public String getToux() {
		return this.toux;
	}

	public void setToux(String toux) {
		this.toux = toux;
	}

	public String getBrief() {
		return this.brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

}