package com.rx.rmip.corebiz.service.modules.freq.allocation.model;

import java.io.Serializable;

/**
 * 脚注
 * 
 * @author 章江方
 * @createTime 2016年5月16日 下午4:03:40
 */
public class FrmFootnote implements Serializable {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -4621319461036455605L;

	/**
	 * 脚注码
	 */
	private String footnoteCode;

	/**
	 * 脚注性质
	 */
	private String footnoteProperty;

	/**
	 * 脚注分类
	 */
	private String footnoteClass;

	/**
	 * 脚注内容
	 */
	private String footnoteContent;

	/**
	 * 脚注备注
	 */
	private String footnoteNote;

	public String getFootnoteCode() {
		return footnoteCode;
	}

	public void setFootnoteCode(String footnoteCode) {
		this.footnoteCode = footnoteCode;
	}

	public String getFootnoteProperty() {
		return footnoteProperty;
	}

	public void setFootnoteProperty(String footnoteProperty) {
		this.footnoteProperty = footnoteProperty;
	}

	public String getFootnoteClass() {
		return footnoteClass;
	}

	public void setFootnoteClass(String footnoteClass) {
		this.footnoteClass = footnoteClass;
	}

	public String getFootnoteContent() {
		return footnoteContent;
	}

	public void setFootnoteContent(String footnoteContent) {
		this.footnoteContent = footnoteContent;
	}

	public String getFootnoteNote() {
		return footnoteNote;
	}

	public void setFootnoteNote(String footnoteNote) {
		this.footnoteNote = footnoteNote;
	}
}
