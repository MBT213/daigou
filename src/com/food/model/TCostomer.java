package com.food.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * TCostomer entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_costomer", catalog = "food")
public class TCostomer implements java.io.Serializable {

	// Fields

	private Integer costomerid;
	private String name;
	private String password;
	private String address;
	private Set<TOrder> TOrders = new HashSet<TOrder>(0);

	// Constructors

	/** default constructor */
	public TCostomer() {
	}

	/** minimal constructor */
	public TCostomer(Integer costomerid, String name, String password) {
		this.costomerid = costomerid;
		this.name = name;
		this.password = password;
	}

	/** full constructor */
	public TCostomer(Integer costomerid, String name, String password,
			String address, Set<TOrder> TOrders) {
		this.costomerid = costomerid;
		this.name = name;
		this.password = password;
		this.address = address;
		this.TOrders = TOrders;
	}

	// Property accessors
	@Id
	@Column(name = "costomerid", unique = true, nullable = false)
	public Integer getCostomerid() {
		return this.costomerid;
	}

	public void setCostomerid(Integer costomerid) {
		this.costomerid = costomerid;
	}

	@Column(name = "name", nullable = false, length = 20)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "password", nullable = false, length = 16)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "address", length = 40)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "TCostomer")
	public Set<TOrder> getTOrders() {
		return this.TOrders;
	}

	public void setTOrders(Set<TOrder> TOrders) {
		this.TOrders = TOrders;
	}

}