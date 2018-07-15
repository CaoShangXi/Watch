package com.aten.dao;

import java.util.List;
import java.util.Map;

import com.aten.annotation.MybatisRepository;
import com.aten.entity.WorkOrder;
import com.aten.entity.WorkOrders;

/**
 * 定義操作數據庫的方法
 * 
 * @author MIS
 *
 */
@MybatisRepository
public interface OrderDao {
	/**
	 * 查詢所有工單
	 * 
	 * @param order
	 * @return
	 */
	List<WorkOrder> findAll(WorkOrder order);

	/**
	 * 根據部門ID查詢所有產線
	 * 
	 * @param dept_number
	 * @return
	 */
	List<Map<Object, String>> findLine(int dept_number);

	int findLine();

	/**
	 * 查詢所有工單的基本信息
	 * @param wo
	 * @return
	 */
	List<WorkOrders> findWorkOrders(WorkOrders wo);

	/**
	 * 查詢某一工單的生產進度
	 * 
	 * @param moId
	 * @return
	 */
	Map<String, Object> findLineStatus(String moId);
	/**
	 * 查詢某一工單的維修進度
	 * @return
	 */
	Map<String, Object> findRepairStatus(String moId);
}
