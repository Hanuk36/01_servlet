package com.ict.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class P_GuestDAO {
	
	private static SqlSession ss;
	
	private synchronized static SqlSession getSession() {
		if(ss == null) {
			ss = P_GuestDBService.getFactory().openSession();
		}
		return ss;
	}
	
	public static List<P_GuestVO> getList(){
		List<P_GuestVO> list = null;
		list = getSession().selectList("p_guestbook.list");
		return list;
	}
	
	public static int getInsert(P_GuestVO gvo) {
		int result = 0;
		result = getSession().insert("p_guestbook.insert", gvo);
		ss.commit();
		return result;
	}
	
	public static P_GuestVO getOneList(String idx){
		P_GuestVO gvo = null;
		gvo = getSession().selectOne("p_guestbook.detail", idx);
		return gvo;
	}
	
	public static int getUpdate(P_GuestVO gvo) {
		int result = 0;
		result = getSession().update("p_guestbook.update", gvo);
		ss.commit();
		return result;	
	}
	public static int getDelete(String idx) {
		int result = 0;
		result = getSession().delete("p_guestbook.delete", idx);
		ss.commit();
		return result;
	}
}