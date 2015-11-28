package com.mcet.data.dao;


import com.mcet.data.entities.Patient;


public class PatientD extends GenericMethods{
	public PatientD(Patient obj){
		super();
		transientInstance=obj;
	}
}
