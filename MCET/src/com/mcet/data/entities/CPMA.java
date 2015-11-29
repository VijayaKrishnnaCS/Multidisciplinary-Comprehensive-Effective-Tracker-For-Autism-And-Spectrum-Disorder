package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the evaluation_criteria database table.
 * 
 */
@Entity
@Table(name="case_pre_asses_meta")
@NamedQuery(name="CPMA.findAll", query="SELECT e FROM CPMA e")
public class CPMA implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String name;
	private String value;
	private String type;

	//bi-directional many-to-one association to Case
	@ManyToOne
	private CaseItem caseItem;

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public CPMA() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public CaseItem getCaseItem() {
		return caseItem;
	}

	public void setCaseItem(CaseItem caseItem) {
		this.caseItem = caseItem;
	}

}