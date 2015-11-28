package com.mcet.data.dao;

import com.mcet.data.entities.Illness;


public class IllnessD extends GenericMethods{
	public IllnessD(Illness obj){
		super();
		transientInstance=obj;
	}
}
