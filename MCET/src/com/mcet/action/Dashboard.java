package com.mcet.action;

import com.mcet.data.dao.CallRequestD;

public class Dashboard {
private int newCalls;
public String execute()
{
	CallRequestD callReqD=new CallRequestD(null);
	//newCalls=callReqD.getRowCount("SELECT id FROM CallRequest");
	System.out.println(newCalls);
	return "HOME";
}
}
