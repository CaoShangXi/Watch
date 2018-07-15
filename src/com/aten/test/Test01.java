package com.aten.test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.aten.dao.OrderDao;
import com.aten.entity.WorkOrder;
import com.aten.entity.WorkOrders;

public class Test01 {
	private String conf = "applicationContext.xml";

	/**
	 * 測試能否正常連接上數據庫
	 */
	@Test
	public void testOrder() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(conf);
		OrderDao dao = ac.getBean("orderDao", OrderDao.class);
		WorkOrder order1 = new WorkOrder();
		List<WorkOrder> list = dao.findAll(order1);
		for (WorkOrder order : list) {
			System.out.println(order.getId() + " , " + order.getWork_number());
		}
	}

	/**
	 * 讀取文本上面的數據
	 * 
	 * @throws IOException
	 */
	@Test
	public void readerText() throws IOException {
		FileInputStream fis = new FileInputStream("C:" + File.separator + "Users" + File.separator + "fuzhoucao"
				+ File.separator + "Downloads" + File.separator + "haha.txt");
		InputStreamReader isd = new InputStreamReader(fis, "utf-8");
		BufferedReader br = new BufferedReader(isd);
		String line = null;
		while ((line = br.readLine()) != null) {
			System.out.println(line);
		}
		br.close();
	}

	@Test
	public void testConnection() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(conf);
		OrderDao dao = ac.getBean("orderDao", OrderDao.class);
		Map<String,Object> map = new HashMap<String,Object>();
		WorkOrders wo = new WorkOrders();
		List<WorkOrders> list = dao.findWorkOrders(wo);
		long startTime = System.currentTimeMillis();
		/**
		 * 將工單的生產進度數據與維修數據賦值給工單對象
		 */
		for (int i = 0; i < list.size(); i++) {
			// 返回對應工單的生產進度數據
			map = dao.findLineStatus(list.get(i).getMoId());
			Object assy = map.get("ASSY");
			Object test01 = map.get("TEST01");
			Object pack = map.get("PACK");
			list.get(i).setAssy(Integer.parseInt(assy.toString()));
			list.get(i).setTest(Integer.parseInt(test01.toString()));
			list.get(i).setPack(Integer.parseInt(pack.toString()));
			// 返回對應工單的維修進度數據
			map = dao.findRepairStatus(list.get(i).getMoId());
			if (map != null) {
				Object alreadyRepair = map.get("ALREADYREPAIR");
				Object repairTotal = map.get("REPAIRTOTAL");
				list.get(i).setAlreadyRepair(Integer.parseInt(alreadyRepair.toString()));
				list.get(i).setRepairTotal(Integer.parseInt(repairTotal.toString()));
			}
		}
		System.out.println(list);
		long endTime = System.currentTimeMillis();
		System.out.println("總計耗時：" + (endTime - startTime));
	}
}
