package com.mcet.data.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the call_requests database table.
 * 
 */
@Entity
@Table(name="call_requests")
public class CallRequest implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Lob
	private String email;

	@Lob
	private String message;

	private String name;

	private String phone;

	//bi-directional many-to-one association to Case
	@OneToMany(mappedBy="callRequest")
	private List<CaseItem> cases;

	public CallRequest() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public List<CaseItem> getCases() {
		return this.cases;
	}

	public void setCases(List<CaseItem> cases) {
		this.cases = cases;
	}

	public CaseItem addCas(CaseItem cas) {
		getCases().add(cas);
		cas.setCallRequest(this);

		return cas;
	}

	public CaseItem removeCas(CaseItem cas) {
		getCases().remove(cas);
		cas.setCallRequest(null);

		return cas;
	}

}