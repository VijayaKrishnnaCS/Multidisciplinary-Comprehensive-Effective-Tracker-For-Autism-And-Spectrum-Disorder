package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the department database table.
 * 
 */
@Entity
@NamedQuery(name="Department.findAll", query="SELECT d FROM Department d")
public class Department implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String name;

	//bi-directional many-to-one association to TreatmentPlan
	@OneToMany(mappedBy="department")
	private List<TreatmentPlan> treatmentPlans;

	public Department() {
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

	public List<TreatmentPlan> getTreatmentPlans() {
		return this.treatmentPlans;
	}

	public void setTreatmentPlans(List<TreatmentPlan> treatmentPlans) {
		this.treatmentPlans = treatmentPlans;
	}

	public TreatmentPlan addTreatmentPlan(TreatmentPlan treatmentPlan) {
		getTreatmentPlans().add(treatmentPlan);
		treatmentPlan.setDepartment(this);

		return treatmentPlan;
	}

	public TreatmentPlan removeTreatmentPlan(TreatmentPlan treatmentPlan) {
		getTreatmentPlans().remove(treatmentPlan);
		treatmentPlan.setDepartment(null);

		return treatmentPlan;
	}

}