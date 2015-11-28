package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the patient_rel database table.
 * 
 */
@Entity
@Table(name="patient_rel")
@NamedQuery(name="PatientRel.findAll", query="SELECT p FROM PatientRel p")
public class PatientRel implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String address;

	@Lob
	private String email;

	@Column(name="first_name")
	private String firstName;

	@Column(name="last_name")
	private String lastName;

	private String mobile;

	private String relation;

	//bi-directional many-to-one association to Patient
	@ManyToOne
	private Patient patient;

	public PatientRel() {
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

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getRelation() {
		return this.relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public Patient getPatient() {
		return this.patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

}