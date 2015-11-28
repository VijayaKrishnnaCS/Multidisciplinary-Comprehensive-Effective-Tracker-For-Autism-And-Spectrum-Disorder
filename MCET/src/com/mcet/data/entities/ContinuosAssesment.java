package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the continuos_assesment database table.
 * 
 */
@Entity
@Table(name="continuos_assesment")
@NamedQuery(name="ContinuosAssesment.findAll", query="SELECT c FROM ContinuosAssesment c")
public class ContinuosAssesment implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name="case_notes")
	private String caseNotes;

	//bi-directional many-to-one association to TreatmentPlan
	@ManyToOne
	@JoinColumn(name="treatment_plan_id")
	private TreatmentPlan treatmentPlan;

	public ContinuosAssesment() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCaseNotes() {
		return this.caseNotes;
	}

	public void setCaseNotes(String caseNotes) {
		this.caseNotes = caseNotes;
	}

	public TreatmentPlan getTreatmentPlan() {
		return this.treatmentPlan;
	}

	public void setTreatmentPlan(TreatmentPlan treatmentPlan) {
		this.treatmentPlan = treatmentPlan;
	}

}