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
 * User entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user", catalog = "daigou")
public class User implements java.io.Serializable {

	// Fields

	private Integer userid;
	private String name;
	private String password;
	private Set<Order> orders = new HashSet<Order>(0);
	private Set<Order> orders_1 = new HashSet<Order>(0);
	private Set<Order> orders_2 = new HashSet<Order>(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String name, String password, Set<Order> orders,
			Set<Order> orders_1, Set<Order> orders_2) {
		this.name = name;
		this.password = password;
		this.orders = orders;
		this.orders_1 = orders_1;
		this.orders_2 = orders_2;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "userid", unique = true, nullable = false)
	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	@Column(name = "name", length = 40)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "password", length = 40)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "user")
	public Set<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "user")
	public Set<Order> getOrders_1() {
		return this.orders_1;
	}

	public void setOrders_1(Set<Order> orders_1) {
		this.orders_1 = orders_1;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "user")
	public Set<Order> getOrders_2() {
		return this.orders_2;
	}

	public void setOrders_2(Set<Order> orders_2) {
		this.orders_2 = orders_2;
	}

}