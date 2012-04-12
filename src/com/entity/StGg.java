package com.entity;

import java.util.Date;

/**
 * StGg entity. @author MyEclipse Persistence Tools
 */

public class StGg implements java.io.Serializable {

	// Fields

	private Integer id;
	private StPri stPri;
	private String title;
	private String detail;
	private Date date;

	// Constructors

	/** default constructor */
	public StGg() {
	}

	/** full constructor */
	public StGg(StPri stPri, String title, String detail, Date date) {
		this.stPri = stPri;
		this.title = title;
		this.detail = detail;
		this.date = date;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public StPri getStPri() {
		return this.stPri;
	}

	public void setStPri(StPri stPri) {
		this.stPri = stPri;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}