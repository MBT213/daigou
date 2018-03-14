package com.food.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * TOrder entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_order", catalog = "food")
public class TOrder implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private TFood TFood;
	private TCostomer TCostomer;
	private Integer foodnum;
	private Double total;

	// Constructors

	/** default constructor */
	public TOrder() {
	}

	/** minimal constructor */
	public TOrder(Integer orderid, TFood TFood) {
		this.orderid = orderid;
		this.TFood = TFood;
	}

	/** full constructor */
	public TOrder(Integer orderid, TFood TFood, TCostomer TCostomer,
			Integer foodnum, Double total) {
		this.orderid = orderid;
		this.TFood = TFood;
		this.TCostomer = TCostomer;
		this.foodnum = foodnum;
		this.total = total;
	}

	// Property accessors
	@Id
	@Column(name = "orderid", unique = true, nullable = false)
	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "food", nullable = false)
	public TFood getTFood() {
		return this.TFood;
	}

	public void setTFood(TFood TFood) {
		this.TFood = TFood;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "costomer")
	public TCostomer getTCostomer() {
		return this.TCostomer;
	}

	public void setTCostomer(TCostomer TCostomer) {
		this.TCostomer = TCostomer;
	}

	@Column(name = "foodnum")
	public Integer getFoodnum() {
		return this.foodnum;
	}

	public void setFoodnum(Integer foodnum) {
		this.foodnum = foodnum;
	}

	@Column(name = "total", precision = 22, scale = 0)
	public Double getTotal() {
		return this.total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

}