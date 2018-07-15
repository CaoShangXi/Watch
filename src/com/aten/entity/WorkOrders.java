package com.aten.entity;
/**
 * 工單實體類
 * @author fuzhoucao
 *
 */
public class WorkOrders {
	private String lineId;//加工中心
	private String moId;//工單號碼
	private String productId;//料品編號
	private String startDate;//開工日期
	private String endDate;//完工日期
	private Integer moQuantity;//工單總數量
	private Integer producted;//已生產
	private Integer assy;//組立
	private Integer test;//測試
	private Integer pack;//包裝
	private Integer alreadyRepair;//已維修數量
	private Integer repairTotal;//維修總數量
	private Integer workHours;//報工
	private String qmReceipts;//QM單據
	private String efficiency;//效率
	public WorkOrders(){
		System.out.println("正在實例化WorkOrders對象。。。");
	}
	public String getLineId() {
		return lineId;
	}
	public void setLineId(String lineId) {
		this.lineId = lineId;
	}
	public String getMoId() {
		return moId;
	}
	public void setMoId(String moId) {
		this.moId = moId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public Integer getMoQuantity() {
		return moQuantity;
	}
	public void setMoQuantity(Integer moQuantity) {
		this.moQuantity = moQuantity;
	}
	public Integer getProducted() {
		return producted;
	}
	public void setProducted(Integer producted) {
		this.producted = producted;
	}
	
	public Integer getAssy() {
		return assy;
	}
	public void setAssy(Integer assy) {
		this.assy = assy;
	}
	public Integer getTest() {
		return test;
	}
	public void setTest(Integer test) {
		this.test = test;
	}
	public Integer getPack() {
		return pack;
	}
	public void setPack(Integer pack) {
		this.pack = pack;
	}
	public Integer getAlreadyRepair() {
		return alreadyRepair;
	}
	public void setAlreadyRepair(Integer alreadyRepair) {
		this.alreadyRepair = alreadyRepair;
	}
	public Integer getRepairTotal() {
		return repairTotal;
	}
	public void setRepairTotal(Integer repairTotal) {
		this.repairTotal = repairTotal;
	}
	public Integer getWorkHours() {
		return workHours;
	}
	public void setWorkHours(Integer workHours) {
		this.workHours = workHours;
	}
	public String getQmReceipts() {
		return qmReceipts;
	}
	public void setQmReceipts(String qmReceipts) {
		this.qmReceipts = qmReceipts;
	}
	public String getEfficiency() {
		return efficiency;
	}
	public void setEfficiency(String efficiency) {
		this.efficiency = efficiency;
	}
	@Override
	public String toString() {
		return "WorkOrders [lineId=" + lineId + ", moId=" + moId + ", productId=" + productId + ", startDate="
				+ startDate + ", endDate=" + endDate + ", moQuantity=" + moQuantity + ", producted=" + producted
				+ ", assay=" + assy + ", test=" + test + ", pack=" + pack + ", alreadyRepair=" + alreadyRepair
				+ ", repairTotal=" + repairTotal + ", workHours=" + workHours + ", qmReceipts=" + qmReceipts
				+ ", efficiency=" + efficiency + "]";
	}
	
	
}
