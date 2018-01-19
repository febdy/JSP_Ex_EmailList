package com.javaex.dao;

import java.util.List;

import com.javaex.vo.EmailVo;

public class DaoTest {
	public static void main(String[] args) {
		EmaillistDao dao = new EmaillistDao();
		EmailVo vo = new EmailVo(0, "test", "test", "test");

		// dao.insert(vo);

		List<EmailVo> eList = dao.getList();

		for (EmailVo eVo : eList) {
			System.out.println(eVo.toString());
		}

	}
}
