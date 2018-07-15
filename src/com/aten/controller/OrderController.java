package com.aten.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aten.dao.OrderDao;
import com.aten.entity.WorkOrder;
import com.aten.entity.WorkOrders;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Resource
	private OrderDao dao;

	/**
	 * 查詢所有工單
	 * 
	 * @param work_number
	 * @param product_number
	 * @param start_date
	 * @param end_date
	 * @param model
	 * @return
	 */
	@RequestMapping("/findOrder")
	public String findOrder(@Param("work_number") String work_number, @Param("product_number") String product_number,
			@Param("start_date") String start_date, @Param("end_date") String end_date, Model model) {
		WorkOrder wo = new WorkOrder();
		wo.setWork_number(work_number);
		wo.setProduct_number(product_number);
		if (start_date != null && start_date.length() > 0) {
			wo.setStart_date(Date.valueOf(start_date));
		}
		if (end_date != null && end_date.length() > 0) {
			wo.setEnd_date(Date.valueOf(end_date));
		}
		List<WorkOrder> list = dao.findAll(wo);
		model.addAttribute("wo", wo);
		model.addAttribute("list", list);
		return "/order/order_list";
	}

	/**
	 * 查詢所有產綫
	 * 
	 * @param dept_number
	 * @return
	 */
	@RequestMapping("/findLine")
	@ResponseBody
	public List<Map<Object, String>> findLine(@Param("dept_number") int dept_number) {
		List<Map<Object, String>> list = dao.findLine(dept_number);
		return list;
	}

	@RequestMapping("findOrders")
	public String findOrders(Model model, WorkOrders order) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<WorkOrders> list = dao.findWorkOrders(order);
		/**
		 * 將工單的生產進度數據與維修數據賦值給工單對象
		 */
		for (int i = 0; i < list.size(); i++) {
			WorkOrders wo = list.get(i);
			// 返回對應工單的生產進度數據
			map = dao.findLineStatus(wo.getMoId());
			wo.setAssy(Integer.parseInt(map.get("assy").toString()));
			wo.setTest(Integer.parseInt(map.get("test").toString()));
			wo.setPack(Integer.parseInt(map.get("pack").toString()));
			// 返回對應工單的維修進度數據
			map = dao.findRepairStatus(wo.getMoId());
			if (map != null) {
				wo.setAlreadyRepair(Integer.parseInt(map.get("alreadyRepair").toString()));
				wo.setRepairTotal(Integer.parseInt(map.get("repairTotal").toString()));
			}
		}
		// 將數據封裝到model讓頁面取用
		model.addAttribute("list", list);
		return "/order/order_list02";
	}
}
