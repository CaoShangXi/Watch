package com.aten.entity;

import java.sql.Date;

/**
 * 工單類
 * @author cao
 *
 */
public class WorkOrder {
	private Integer id;//工單ID
	private String machining_center;//加工中心
	private String work_number;//工單號碼
	private String product_number;//產品料號
	private Date start_date;//開工日期
	private Date end_date;//完工日期
	private Integer total;//總數量
	private Integer produced;//已生產
	private Integer maintain_total;//維修總數
	private Integer maintain;//已維修
	private Integer work_hours;//報工
	private String QM_receipts;//QM單據
	private String efficiency;//效率
	private Integer assemblage;//組立
	private Integer test;//測試
	private Integer packaging;//包裝
	private String yield;//良率
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMachining_center() {
		return machining_center;
	}
	public void setMachining_center(String machining_center) {
		this.machining_center = machining_center;
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
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Integer getProduced() {
		return produced;
	}
	public void setProduced(Integer produced) {
		this.produced = produced;
	}
	public Integer getMaintain_total() {
		return maintain_total;
	}
	public void setMaintain_total(Integer maintain_total) {
		this.maintain_total = maintain_total;
	}
	public Integer getMaintain() {
		return maintain;
	}
	public void setMaintain(Integer maintain) {
		this.maintain = maintain;
	}
	public Integer getWork_hours() {
		return work_hours;
	}
	public void setWork_hours(Integer work_hours) {
		this.work_hours = work_hours;
	}
	public String getQM_receipts() {
		return QM_receipts;
	}
	public void setQM_receipts(String qM_receipts) {
		QM_receipts = qM_receipts;
	}
	public String getEfficiency() {
		return efficiency;
	}
	public void setEfficiency(String efficiency) {
		this.efficiency = efficiency;
	}
	public Integer getAssemblage() {
		return assemblage;
	}
	public void setAssemblage(Integer assemblage) {
		this.assemblage = assemblage;
	}
	public Integer getTest() {
		return test;
	}
	public void setTest(Integer test) {
		this.test = test;
	}
	public Integer getPackaging() {
		return packaging;
	}
	public void setPackaging(Integer packaging) {
		this.packaging = packaging;
	}
	public String getYield() {
		return yield;
	}
	public void setYield(String yield) {
		this.yield = yield;
	}
	@Override
	public String toString() {
		return "WorkOrder [id=" + id + ", machining_center=" + machining_center + ", work_number=" + work_number
				+ ", product_number=" + product_number + ", start_date=" + start_date + ", end_date=" + end_date
				+ ", total=" + total + ", produced=" + produced + ", maintain_total=" + maintain_total + ", maintain="
				+ maintain + ", work_hours=" + work_hours + ", QM_receipts=" + QM_receipts + ", efficiency="
				+ efficiency + ", assemblage=" + assemblage + ", test=" + test + ", packaging=" + packaging + ", yield="
				+ yield + "]";
	}
	
	
}
