package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the patient database table.
 * 
 */
@Entity
@NamedQuery(name="Patient.findAll", query="SELECT p FROM Patient p")
public class Patient implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String address;

	private int age;

	@Temporal(TemporalType.DATE)
	private Date dob;

	@Column(name="first_name")
	private String firstName;

	private String gender;

	@Column(name="height_in_inches")
	private int heightInInches;

	@Column(name="last_name")
	private String lastName;

	@Column(name="weight_in_kgs")
	private int weightInKgs;

	//bi-directional many-to-one association to Case
	@OneToMany(mappedBy="patient")
	private List<CaseItem> cases;

	//bi-directional many-to-one association to PatientRel
	@OneToMany(mappedBy="patient")
	private List<PatientRel> patientRels;

	public Patient() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getAge() {
		return this.age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getDob() {
		return this.dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getHeightInInches() {
		return this.heightInInches;
	}

	public void setHeightInInches(int heightInInches) {
		this.heightInInches = heightInInches;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getWeightInKgs() {
		return this.weightInKgs;
	}

	public void setWeightInKgs(int weightInKgs) {
		this.weightInKgs = weightInKgs;
	}

	public List<CaseItem> getCases() {
		return this.cases;
	}

	public void setCases(List<CaseItem> cases) {
		this.cases = cases;
	}

	public CaseItem addCas(CaseItem cas) {
		getCases().add(cas);
		cas.setPatient(this);

		return cas;
	}

	public CaseItem removeCas(CaseItem cas) {
		getCases().remove(cas);
		cas.setPatient(null);

		return cas;
	}

	public List<PatientRel> getPatientRels() {
		return this.patientRels;
	}

	public void setPatientRels(List<PatientRel> patientRels) {
		this.patientRels = patientRels;
	}

	public PatientRel addPatientRel(PatientRel patientRel) {
		getPatientRels().add(patientRel);
		patientRel.setPatient(this);

		return patientRel;
	}

	public PatientRel removePatientRel(PatientRel patientRel) {
		getPatientRels().remove(patientRel);
		patientRel.setPatient(null);

		return patientRel;
	}

}