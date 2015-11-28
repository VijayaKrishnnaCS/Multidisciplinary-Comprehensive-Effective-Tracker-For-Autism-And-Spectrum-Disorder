package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the evaluation_criteria database table.
 * 
 */
@Entity
@Table(name="evaluation_criteria")
@NamedQuery(name="EvaluationCriteria.findAll", query="SELECT e FROM EvaluationCriteria e")
public class EvaluationCriteria implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String description;

	private String diagnosis;

	private String name;

	//bi-directional many-to-one association to Case
	@ManyToOne
	private CaseItem caseItem;

	//bi-directional many-to-one association to TreatmentPlan
	@OneToMany(mappedBy="evaluationCriteria")
	private List<TreatmentPlan> treatmentPlans;

	public EvaluationCriteria() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDiagnosis() {
		return this.diagnosis;
	}

	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<TreatmentPlan> getTreatmentPlans() {
		return this.treatmentPlans;
	}

	public void setTreatmentPlans(List<TreatmentPlan> treatmentPlans) {
		this.treatmentPlans = treatmentPlans;
	}

	public TreatmentPlan addTreatmentPlan(TreatmentPlan treatmentPlan) {
		getTreatmentPlans().add(treatmentPlan);
		treatmentPlan.setEvaluationCriteria(this);

		return treatmentPlan;
	}

	public TreatmentPlan removeTreatmentPlan(TreatmentPlan treatmentPlan) {
		getTreatmentPlans().remove(treatmentPlan);
		treatmentPlan.setEvaluationCriteria(null);

		return treatmentPlan;
	}

	public CaseItem getCaseItem() {
		return caseItem;
	}

	public void setCaseItem(CaseItem caseItem) {
		this.caseItem = caseItem;
	}

}