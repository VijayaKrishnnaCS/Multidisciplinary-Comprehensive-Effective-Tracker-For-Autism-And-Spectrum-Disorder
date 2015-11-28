package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.util.List;


/**
 * The persistent class for the case database table.
 * 
 */
@Entity
@Table(name="case_item")
@NamedQuery(name="CaseItem.findAll", query="SELECT c FROM CaseItem c")
public class CaseItem implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String diagnosedWith;

	private String resolutionNotes;

	@Lob
	private String symptoms;

	//bi-directional many-to-one association to Patient
	@ManyToOne
	private Patient patient;

	//bi-directional many-to-one association to CallRequest
	@ManyToOne
	@JoinColumn(name="call_requests_id")
	private CallRequest callRequest;

	//bi-directional many-to-one association to EvaluationCriteria
	@OneToMany(mappedBy="caseItem")
	private List<EvaluationCriteria> evaluationCriterias;

	//bi-directional many-to-one association to Illness
	@OneToMany(mappedBy="caseItem")
	private List<Illness> illnesses;

	public CaseItem() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDiagnosedWith() {
		return this.diagnosedWith;
	}

	public void setDiagnosedWith(String diagnosedWith) {
		this.diagnosedWith = diagnosedWith;
	}

	public String getResolutionNotes() {
		return this.resolutionNotes;
	}

	public void setResolutionNotes(String resolutionNotes) {
		this.resolutionNotes = resolutionNotes;
	}

	public String getSymptoms() {
		return this.symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public Patient getPatient() {
		return this.patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public CallRequest getCallRequest() {
		return this.callRequest;
	}

	public void setCallRequest(CallRequest callRequest) {
		this.callRequest = callRequest;
	}

	public List<EvaluationCriteria> getEvaluationCriterias() {
		return this.evaluationCriterias;
	}

	public void setEvaluationCriterias(List<EvaluationCriteria> evaluationCriterias) {
		this.evaluationCriterias = evaluationCriterias;
	}

	public EvaluationCriteria addEvaluationCriteria(EvaluationCriteria evaluationCriteria) {
		getEvaluationCriterias().add(evaluationCriteria);
		evaluationCriteria.setCaseItem(this);

		return evaluationCriteria;
	}

	public EvaluationCriteria removeEvaluationCriteria(EvaluationCriteria evaluationCriteria) {
		getEvaluationCriterias().remove(evaluationCriteria);
		evaluationCriteria.setCaseItem(null);

		return evaluationCriteria;
	}

	public List<Illness> getIllnesses() {
		return this.illnesses;
	}

	public void setIllnesses(List<Illness> illnesses) {
		this.illnesses = illnesses;
	}

	public Illness addIllness(Illness illness) {
		getIllnesses().add(illness);
		illness.setCase(this);

		return illness;
	}

	public Illness removeIllness(Illness illness) {
		getIllnesses().remove(illness);
		illness.setCase(null);

		return illness;
	}

}