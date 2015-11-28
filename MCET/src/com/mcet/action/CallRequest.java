package com.mcet.action;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.mcet.data.dao.CallRequestD;

public class CallRequest {
private List<CallRequest> callReqList=new ArrayList<CallRequest>();
private com.mcet.data.entities.CallRequest callRequest;
public String execute()
{
	CallRequestD callReqD=new CallRequestD(null);
	callReqList.addAll((Collection<? extends CallRequest>) callReqD.listQuery("FROM CallRequest"));
	System.out.println(callReqList.size());
	return "CALL_REQUEST_SCREEN";
}
public String view()
{
	CallRequestD callReqD=new CallRequestD(null);
	callRequest=(com.mcet.data.entities.CallRequest) callReqD.findById(callRequest.getId(), com.mcet.data.entities.CallRequest.class);
	return "VIEW_CALL_REQUEST";
}
public String delete()
{
	CallRequestD callReqD=new CallRequestD(callRequest);
	callReqD.delete();
	return "DELETE_CAL_REQUEST";
}
public List<CallRequest> getCallReqList() {
	return callReqList;
}
public void setCallReqList(List<CallRequest> callReqList) {
	this.callReqList = callReqList;
}
public com.mcet.data.entities.CallRequest getCallRequest() {
	return callRequest;
}
public void setCallRequest(com.mcet.data.entities.CallRequest callRequest) {
	this.callRequest = callRequest;
}
}
