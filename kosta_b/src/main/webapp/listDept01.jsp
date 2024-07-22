<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kosta.dao.DeptDAO"%>
<%@page import="com.kosta.vo.DeptVO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	DeptDAO dao = new DeptDAO();
	ArrayList<DeptVO> list = dao.findAll();
	Gson gson = new Gson();
	String data = gson.toJson(list);
%>	
<%=data%>