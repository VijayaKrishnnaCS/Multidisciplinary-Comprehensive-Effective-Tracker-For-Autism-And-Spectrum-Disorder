package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the illness database table.
 * 
 */
@Entity
@NamedQuery(name="Illness.findAll", query="SELECT i FROM Illness i")
public class Illness implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String name;

	//bi-directional many-to-one association to Case
	@ManyToOne
	private CaseItem caseItem;

	public Illness() {
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

	public CaseItem getCase() {
		return this.caseItem;
	}

	public void setCase(CaseItem caseItem) {
		this.caseItem = caseItem;
	}

}