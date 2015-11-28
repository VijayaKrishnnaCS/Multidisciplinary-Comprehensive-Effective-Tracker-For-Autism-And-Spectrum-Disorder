package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the treatment_assessment database table.
 * 
 */
@Entity
@Table(name="treatment_assessment")
@NamedQuery(name="TreatmentAssessment.findAll", query="SELECT t FROM TreatmentAssessment t")
public class TreatmentAssessment implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name="assessed_from")
	private String assessedFrom;

	@Column(name="assessment_notes")
	private String assessmentNotes;

	private int rating;

	//bi-directional many-to-one association to TreatmentPlan
	@ManyToOne
	@JoinColumn(name="treatment_plan_id")
	private TreatmentPlan treatmentPlan;

	public TreatmentAssessment() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAssessedFrom() {
		return this.assessedFrom;
	}

	public void setAssessedFrom(String assessedFrom) {
		this.assessedFrom = assessedFrom;
	}

	public String getAssessmentNotes() {
		return this.assessmentNotes;
	}

	public void setAssessmentNotes(String assessmentNotes) {
		this.assessmentNotes = assessmentNotes;
	}

	public int getRating() {
		return this.rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public TreatmentPlan getTreatmentPlan() {
		return this.treatmentPlan;
	}

	public void setTreatmentPlan(TreatmentPlan treatmentPlan) {
		this.treatmentPlan = treatmentPlan;
	}

}