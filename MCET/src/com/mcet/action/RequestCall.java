package com.mcet.action;

import com.mcet.data.dao.CallRequestD;

public class RequestCall {
private com.mcet.data.entities.CallRequest callRequest;
private String msg;
public String execute()
{
	return "REQUEST_CALL_SCREEN";
}
public String submitCallRequest()
{
	CallRequestD callRequestD=new CallRequestD(callRequest);
	callRequestD.save();
	return "SUCCESS";
}
public com.mcet.data.entities.CallRequest getCallRequest() {
	return callRequest;
}
public void setCallRequest(com.mcet.data.entities.CallRequest callRequest) {
	this.callRequest = callRequest;
}
public String getMsg() {
	return msg;
}
public void setMsg(String msg) {
	this.msg = msg;
}
}
