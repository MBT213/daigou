package com.daigou.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "goods", catalog = "daigou")
public class Goods implements java.io.Serializable {

	// Fields

	private Integer goodsid;
	private String goodsname;
	private Double price;
	private Set<Order> orders = new HashSet<Order>(0);
	private Set<Order> orders_1 = new HashSet<Order>(0);
	private Set<Order> orders_2 = new HashSet<Order>(0);

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** full constructor */
	public Goods(String goodsname, Double price, Set<Order> orders,
			Set<Order> orders_1, Set<Order> orders_2) {
		this.goodsname = goodsname;
		this.price = price;
		this.orders = orders;
		this.orders_1 = orders_1;
		this.orders_2 = orders_2;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "goodsid", unique = true, nullable = false)
	public Integer getGoodsid() {
		return this.goodsid;
	}

	public void setGoodsid(Integer goodsid) {
		this.goodsid = goodsid;
	}

	@Column(name = "goodsname", length = 40)
	public String getGoodsname() {
		return this.goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	@Column(name = "price", precision = 22, scale = 0)
	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "goods")
	public Set<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "goods")
	public Set<Order> getOrders_1() {
		return this.orders_1;
	}

	public void setOrders_1(Set<Order> orders_1) {
		this.orders_1 = orders_1;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "goods")
	public Set<Order> getOrders_2() {
		return this.orders_2;
	}

	public void setOrders_2(Set<Order> orders_2) {
		this.orders_2 = orders_2;
	}

}