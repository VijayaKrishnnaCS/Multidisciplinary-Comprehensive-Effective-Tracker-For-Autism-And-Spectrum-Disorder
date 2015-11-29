package com.mcet.action;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.mcet.data.dao.ContinuosAssesmentD;
import com.mcet.data.dao.TreatmentAssessmentD;
import com.mcet.data.dao.TreatmentPlanD;
import com.mcet.data.entities.ContinuosAssesment;
import com.mcet.data.entities.EvaluationCriteria;
import com.mcet.data.entities.TreatmentAssessment;
import com.mcet.data.entities.TreatmentPlan;

public class Treatments {
private TreatmentPlan treatmentPlan;
private List<TreatmentPlan> planList=new ArrayList<TreatmentPlan>();
private EvaluationCriteria evalCritO;
private ContinuosAssesment contAssess;
private List<ContinuosAssesment> contAssessList=new ArrayList<ContinuosAssesment>();
private TreatmentAssessment trtmntAssess;
private List<TreatmentAssessment> trtmntAssessList=new ArrayList<TreatmentAssessment>();
public String execute()
{
	TreatmentPlanD treatmentPlanD=new TreatmentPlanD(null);
	planList.addAll((Collection<? extends TreatmentPlan>) treatmentPlanD.listQuery("FROM TreatmentPlan WHERE evaluationCriteria.id='"+evalCritO.getId()+"'"));
	return "ASSES_list";
}
public String saveTreatment()
{
	TreatmentPlanD treatmentPlanD=new TreatmentPlanD(treatmentPlan);
	treatmentPlanD.save();
	return "ASSES_list";
}
public String treatmentProgress()
{
	ContinuosAssesmentD continuosAssesmentD=new ContinuosAssesmentD(null);
	contAssessList.addAll((Collection<? extends ContinuosAssesment>) continuosAssesmentD.listQuery("FROM ContinuosAssesment WHERE treatmentPlan.id='"+treatmentPlan.getId()+"'"));
	TreatmentAssessmentD treatmentAssessmentD=new TreatmentAssessmentD(null);
	trtmntAssessList.addAll((Collection<? extends TreatmentAssessment>) treatmentAssessmentD.listQuery("FROM TreatmentAssessment WHERE treatmentPlan.id='"+treatmentPlan.getId()+"'"));
	return "TREATMENT_REPORT";
}
public String saveTreatmentAssessment()
{
	TreatmentAssessmentD treatmentAssessmentD=new TreatmentAssessmentD(trtmntAssess);
	trtmntAssess=(TreatmentAssessment) treatmentAssessmentD.save();
	return "TREATMENT_REPORT";
}
public String saveContAssessment()
{
	ContinuosAssesmentD continuosAssesmentD=new ContinuosAssesmentD(contAssess);
	contAssess=(ContinuosAssesment) continuosAssesmentD.save();
	return "TREATMENT_REPORT";
}
public TreatmentPlan getTreatmentPlan() {
	return treatmentPlan;
}
public void setTreatmentPlan(TreatmentPlan treatmentPlan) {
	this.treatmentPlan = treatmentPlan;
}
public EvaluationCriteria getEvalCritO() {
	return evalCritO;
}
public void setEvalCritO(EvaluationCriteria evalCritO) {
	this.evalCritO = evalCritO;
}
public List<TreatmentPlan> getPlanList() {
	return planList;
}
public void setPlanList(List<TreatmentPlan> planList) {
	this.planList = planList;
}
public ContinuosAssesment getContAssess() {
	return contAssess;
}
public void setContAssess(ContinuosAssesment contAssess) {
	this.contAssess = contAssess;
}
public List<ContinuosAssesment> getContAssessList() {
	return contAssessList;
}
public void setContAssessList(List<ContinuosAssesment> contAssessList) {
	this.contAssessList = contAssessList;
}
public TreatmentAssessment getTrtmntAssess() {
	return trtmntAssess;
}
public void setTrtmntAssess(TreatmentAssessment trtmntAssess) {
	this.trtmntAssess = trtmntAssess;
}
public List<TreatmentAssessment> getTrtmntAssessList() {
	return trtmntAssessList;
}
public void setTrtmntAssessList(List<TreatmentAssessment> trtmntAssessList) {
	this.trtmntAssessList = trtmntAssessList;
}

}
