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
 * TFood entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_food", catalog = "food")
public class TFood implements java.io.Serializable {

	// Fields

	private Integer foodid;
	private String foodname;
	private Double unitprice;
	private Set<TOrder> TOrders = new HashSet<TOrder>(0);

	// Constructors

	/** default constructor */
	public TFood() {
	}

	/** minimal constructor */
	public TFood(Integer foodid) {
		this.foodid = foodid;
	}

	/** full constructor */
	public TFood(Integer foodid, String foodname, Double unitprice,
			Set<TOrder> TOrders) {
		this.foodid = foodid;
		this.foodname = foodname;
		this.unitprice = unitprice;
		this.TOrders = TOrders;
	}

	// Property accessors
	@Id
	@Column(name = "foodid", unique = true, nullable = false)
	public Integer getFoodid() {
		return this.foodid;
	}

	public void setFoodid(Integer foodid) {
		this.foodid = foodid;
	}

	@Column(name = "foodname", length = 40)
	public String getFoodname() {
		return this.foodname;
	}

	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}

	@Column(name = "unitprice", precision = 22, scale = 0)
	public Double getUnitprice() {
		return this.unitprice;
	}

	public void setUnitprice(Double unitprice) {
		this.unitprice = unitprice;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "TFood")
	public Set<TOrder> getTOrders() {
		return this.TOrders;
	}

	public void setTOrders(Set<TOrder> TOrders) {
		this.TOrders = TOrders;
	}

}