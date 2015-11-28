package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the treatment_plan database table.
 * 
 */
@Entity
@Table(name="treatment_plan")
@NamedQuery(name="TreatmentPlan.findAll", query="SELECT t FROM TreatmentPlan t")
public class TreatmentPlan implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name="duration_in_days")
	private int durationInDays;

	private String status;

	//bi-directional many-to-one association to ContinuosAssesment
	@OneToMany(mappedBy="treatmentPlan")
	private List<ContinuosAssesment> continuosAssesments;

	//bi-directional many-to-one association to TreatmentAssessment
	@OneToMany(mappedBy="treatmentPlan")
	private List<TreatmentAssessment> treatmentAssessments;

	//bi-directional many-to-one association to EvaluationCriteria
	@ManyToOne
	private EvaluationCriteria evaluationCriteria;

	//bi-directional many-to-one association to Department
	@ManyToOne
	private Department department;

	public TreatmentPlan() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDurationInDays() {
		return this.durationInDays;
	}

	public void setDurationInDays(int durationInDays) {
		this.durationInDays = durationInDays;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<ContinuosAssesment> getContinuosAssesments() {
		return this.continuosAssesments;
	}

	public void setContinuosAssesments(List<ContinuosAssesment> continuosAssesments) {
		this.continuosAssesments = continuosAssesments;
	}

	public ContinuosAssesment addContinuosAssesment(ContinuosAssesment continuosAssesment) {
		getContinuosAssesments().add(continuosAssesment);
		continuosAssesment.setTreatmentPlan(this);

		return continuosAssesment;
	}

	public ContinuosAssesment removeContinuosAssesment(ContinuosAssesment continuosAssesment) {
		getContinuosAssesments().remove(continuosAssesment);
		continuosAssesment.setTreatmentPlan(null);

		return continuosAssesment;
	}

	public List<TreatmentAssessment> getTreatmentAssessments() {
		return this.treatmentAssessments;
	}

	public void setTreatmentAssessments(List<TreatmentAssessment> treatmentAssessments) {
		this.treatmentAssessments = treatmentAssessments;
	}

	public TreatmentAssessment addTreatmentAssessment(TreatmentAssessment treatmentAssessment) {
		getTreatmentAssessments().add(treatmentAssessment);
		treatmentAssessment.setTreatmentPlan(this);

		return treatmentAssessment;
	}

	public TreatmentAssessment removeTreatmentAssessment(TreatmentAssessment treatmentAssessment) {
		getTreatmentAssessments().remove(treatmentAssessment);
		treatmentAssessment.setTreatmentPlan(null);

		return treatmentAssessment;
	}

	public EvaluationCriteria getEvaluationCriteria() {
		return this.evaluationCriteria;
	}

	public void setEvaluationCriteria(EvaluationCriteria evaluationCriteria) {
		this.evaluationCriteria = evaluationCriteria;
	}

	public Department getDepartment() {
		return this.department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

}