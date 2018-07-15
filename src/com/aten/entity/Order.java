package com.aten.entity;

import java.sql.Date;

/**
 * 工單類
 * @author MIS
 *
 */
public class Order {
	private Integer id;//工單ID
	private Integer department;//部門
	private Date start_date;//開工日期
	private String beltline;//生產線
	private Integer total;//總數量
	private String work_number;//工單號碼
	private String product_number;//料品編號
	private Integer order_number;//工單數量
	private Integer last_time_volume;//前次以排程量
	private Integer today_volume;//本日排程數量
	private Date end_date;//預計完工日期
	private String serial_number;//序號
	private String check_model;//檢查模式
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getDepartment() {
		return department;
	}
	public void setDepartment(Integer department) {
		this.department = department;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public String getBeltline() {
		return beltline;
	}
	public void setBeltline(String beltline) {
		this.beltline = beltline;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public String getWork_number() {
		return work_number;
	}
	public void setWork_number(String work_number) {
		this.work_number = work_number;
	}
	public String getProduct_number() {
		return product_number;
	}
	public void setProduct_number(String product_number) {
		this.product_number = product_number;
	}
	public Integer getOrder_number() {
		return order_number;
	}
	public void setOrder_number(Integer order_number) {
		this.order_number = order_number;
	}
	public Integer getLast_time_volume() {
		return last_time_volume;
	}
	public void setLast_time_volume(Integer last_time_volume) {
		this.last_time_volume = last_time_volume;
	}
	public Integer getToday_volume() {
		return today_volume;
	}
	public void setToday_volume(Integer today_volume) {
		this.today_volume = today_volume;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getSerial_number() {
		return serial_number;
	}
	public void setSerial_number(String serial_number) {
		this.serial_number = serial_number;
	}
	public String getCheck_model() {
		return check_model;
	}
	public void setCheck_model(String check_model) {
		this.check_model = check_model;
	}
	
	
}
