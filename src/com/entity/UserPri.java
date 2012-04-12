package com.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * UserPri entity. @author MyEclipse Persistence Tools
 */

public class UserPri implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String password;
	private Integer gold;
	private String toux;
	private Set yhbyLies = new HashSet(0);
	private Set yhbyPris = new HashSet(0);

	// Constructors

	/** default constructor */
	public UserPri() {
	}

	/** minimal constructor */
	public UserPri(String name, String password, Integer gold) {
		this.name = name;
		this.password = password;
		this.gold = gold;
	}

	/** full constructor */
	public UserPri(String name, String password, Integer gold, String toux,
			Set yhbyLies, Set yhbyPris) {
		this.name = name;
		this.password = password;
		this.gold = gold;
		this.toux = toux;
		this.yhbyLies = yhbyLies;
		this.yhbyPris = yhbyPris;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Set getYhbyLies() {
		return this.yhbyLies;
	}

	public void setYhbyLies(Set yhbyLies) {
		this.yhbyLies = yhbyLies;
	}

	public Set getYhbyPris() {
		return this.yhbyPris;
	}

	public void setYhbyPris(Set yhbyPris) {
		this.yhbyPris = yhbyPris;
	}

}