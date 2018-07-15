package com.aten.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aten.dao.OrderDao;

@Controller // 聲明為持久層
@RequestMapping("/hello")
public class JsonController {
	@Resource
	private OrderDao dao;

	@RequestMapping("/hello01")
	@ResponseBody
	public Map<String, Object> userJson() {
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("success", true);
		info.put("message", "Hello World!");
		return info;
	}

	@RequestMapping("hello02")
	@ResponseBody
	public List<Map<Object,String>> find() {
		List<Map<Object,String>> list = dao.findLine(1);
		System.out.println(list);
		return list;
	}

	@RequestMapping("/demo.do")
	public String demo() {
		return "/main/demo";
	}
}
