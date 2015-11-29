package com.mcet.action;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import com.mcet.data.dao.CPMAD;
import com.mcet.data.dao.CaseItemD;
import com.mcet.data.dao.EvaluationCriteriaD;
import com.mcet.data.dao.PatientD;
import com.mcet.data.dao.PatientRelD;
import com.mcet.data.entities.CPMA;
import com.mcet.data.entities.CallRequest;
import com.mcet.data.entities.CaseItem;
import com.mcet.data.entities.EvaluationCriteria;
import com.mcet.data.entities.Patient;
import com.mcet.data.entities.PatientRel;

public class Cases {
private CaseItem caseItem;
private List<CaseItem> caseItemList=new ArrayList<CaseItem>();
private Patient patient; 
private List<PatientRel> patientRels=new ArrayList<PatientRel>();
private List<String> evaluation=new ArrayList<String>();
private CallRequest callRequest;
private List<EvaluationCriteria> evalCritList=new ArrayList<EvaluationCriteria>();
private EvaluationCriteria evalCritO;
public String execute()
{
	CaseItemD caseItemD=new CaseItemD(null);
	caseItemList.addAll((Collection<? extends CaseItem>) caseItemD.listQuery("FROM CaseItem"));
	return "CASE_LIST";
}
public String view()
{
	return "CASE_VIEW";
}

public String edit()
{
	if(caseItem.getId()>0)
	{
	CaseItemD caseItemD=new CaseItemD(null);
	caseItem=(CaseItem) caseItemD.findById(caseItem.getId(), CaseItem.class);
	}
	System.out.println(caseItem.getPatient().getPatientRels().size());
	return "CASE_EDIT";
}
public String saveCase()
{
	PatientD patientD=new PatientD(patient);
	patient=(Patient) patientD.save(); 
	patientRels.get(0).setPatient(patient);
	PatientRelD patientRelD=new PatientRelD(patientRels.get(0));
	patientRels.set(0,(PatientRel) patientRelD.save());
	patientRels.get(1).setPatient(patient);
	patientRelD=new PatientRelD(patientRels.get(1));
	patientRels.set(1,(PatientRel) patientRelD.save());
	caseItem.setPatient(patient);
	caseItem.setCallRequest(callRequest);
	CaseItemD caseItemD=new CaseItemD(caseItem);
	caseItem=(CaseItem) caseItemD.save();
	Iterator itr=evaluation.iterator();
	EvaluationCriteriaD evalCritD;
	EvaluationCriteria evalCrit;
	while(itr.hasNext())
	{
		evalCrit=new EvaluationCriteria();
		evalCrit.setCaseItem(caseItem);
		evalCrit.setDescription("Diagonised by Teammate");
		evalCrit.setDiagnosis(caseItem.getDiagnosedWith());
		evalCrit.setName(itr.next().toString());
		evalCritD=new EvaluationCriteriaD(evalCrit);
		evalCritD.save();
	}
	return "CASE_EDIT";
}
public String caseAssessments()
{
	EvaluationCriteriaD evalCritD=new EvaluationCriteriaD(null);
	evalCritList.addAll((Collection<? extends EvaluationCriteria>) evalCritD.listQuery("FROM EvaluationCriteria WHERE caseItem.id="+caseItem.getId()));
	return "EVAL_LIST";
}
public CaseItem getCaseItem() {
	return caseItem;
}
public void setCaseItem(CaseItem caseItem) {
	this.caseItem = caseItem;
}
public List<CaseItem> getCaseItemList() {
	return caseItemList;
}
public void setCaseItemList(List<CaseItem> caseItemList) {
	this.caseItemList = caseItemList;
}
public Patient getPatient() {
	return patient;
}
public void setPatient(Patient patient) {
	this.patient = patient;
}
public List<PatientRel> getPatientRels() {
	return patientRels;
}
public void setPatientRels(List<PatientRel> patientRels) {
	this.patientRels = patientRels;
}
public CallRequest getCallRequest() {
	return callRequest;
}
public void setCallRequest(CallRequest callRequest) {
	this.callRequest = callRequest;
}
public List<String> getEvaluation() {
	return evaluation;
}
public void setEvaluation(List<String> evaluation) {
	this.evaluation = evaluation;
}
public List<EvaluationCriteria> getEvalCritList() {
	return evalCritList;
}
public void setEvalCritList(List<EvaluationCriteria> evalCritList) {
	this.evalCritList = evalCritList;
}
public EvaluationCriteria getEvalCritO() {
	return evalCritO;
}
public void setEvalCritO(EvaluationCriteria evalCritO) {
	this.evalCritO = evalCritO;
}

}
