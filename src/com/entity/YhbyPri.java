package com.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * YhbyPri entity. @author MyEclipse Persistence Tools
 */

public class YhbyPri implements java.io.Serializable {

	// Fields

	private Integer id;
	private UserPri userPri;
	private String title;
	private Integer gold;
	private String detail;
	private Set yhbyLies = new HashSet(0);

	// Constructors

	/** default constructor */
	public YhbyPri() {
	}

	/** minimal constructor */
	public YhbyPri(UserPri userPri, String title, Integer gold, String detail) {
		this.userPri = userPri;
		this.title = title;
		this.gold = gold;
		this.detail = detail;
	}

	/** full constructor */
	public YhbyPri(UserPri userPri, String title, Integer gold, String detail,
			Set yhbyLies) {
		this.userPri = userPri;
		this.title = title;
		this.gold = gold;
		this.detail = detail;
		this.yhbyLies = yhbyLies;
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

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getGold() {
		return this.gold;
	}

	public void setGold(Integer gold) {
		this.gold = gold;
	}

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Set getYhbyLies() {
		return this.yhbyLies;
	}

	public void setYhbyLies(Set yhbyLies) {
		this.yhbyLies = yhbyLies;
	}

}