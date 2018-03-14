package com.daigou.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "orders", catalog = "daigou")
public class Order implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private Goods goods;
	private User user;
	private Integer goodsnum;
	private Double total;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(Goods goods) {
		this.goods = goods;
	}

	/** full constructor */
	public Order(Goods goods, User user, Integer goodsnum, Double total) {
		this.goods = goods;
		this.user = user;
		this.goodsnum = goodsnum;
		this.total = total;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "orderid", unique = true, nullable = false)
	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "goods", nullable = false)
	public Goods getGoods() {
		return this.goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user")
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "goodsnum")
	public Integer getGoodsnum() {
		return this.goodsnum;
	}

	public void setGoodsnum(Integer goodsnum) {
		this.goodsnum = goodsnum;
	}

	@Column(name = "total", precision = 22, scale = 0)
	public Double getTotal() {
		return this.total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

}