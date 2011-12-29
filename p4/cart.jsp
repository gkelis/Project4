<%-- 
    Document   : cart
    Created on : Dec 28, 2011, 2:21:49 PM
    Author     : FoG
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%@ taglib uri="http://jakarta.apache.org/taglibs/response-1.0" prefix="res"%>
<%@ taglib uri="http://jakarta.apache.org/taglibs/session-1.0" prefix="sess"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="cafe" class="beans.QuantityBean" scope="session"/>
<jsp:setProperty name="cafe" property="*"/>
<jsp:useBean id="sugar" class="beans.QuantityBean" scope="session"/>
<jsp:setProperty name="sugar" property="*"/>
<jsp:useBean id="water" class="beans.QuantityBean" scope="session"/>
<jsp:setProperty name="water" property="*"/>

<html>
  <head>
  <meta http-equiv="content-type" content="text/html;charset=utf-8" >
        <title>Your Shopping Cart</title>
    </head>
    <body bgcolor="#E6E6FA">
	<br>
        
        <res:addCookie name="CafeCookie">
		<res:value><jsp:getProperty name="cafe" property="cafe_quantity"/></res:value>
		<res:maxAge>31536000</res:maxAge>
	</res:addCookie>
	<res:addCookie name="SugarCookie">
		<res:value><jsp:getProperty name="sugar" property="sugar_quantity"/></res:value>
		<res:maxAge>31536000</res:maxAge>
	</res:addCookie>
	<res:addCookie name="WaterCookie">
		<res:value><jsp:getProperty name="water" property="water_quantity"/></res:value>
		<res:maxAge>31536000</res:maxAge>
	</res:addCookie>
                
        <form method=POST action="cart.jsp">
        <div align="center">
        <h1>Your Login Was Successful</h1>
        <h2>Your Info:</h2>
        User Name: <s:property value="userName" /><br>
        Gender: <s:property value="gender" /><br>
        Country: <s:property value="country" /><br>
        About You:<s:property value="about"/><br>
        Community: <s:property value="community" /><br>
        Mailing List: <s:property value="mailingList" />
        </div>
	<br>
	<h1 align="center"> Your Shopping Cart </h1>
	<h3 align="center"> by Fotios Gkelis </h3>
	<br>
	<br>
	<table bgcolor="#FFFFFF" border="3" cellpadding="5" align="center">
		<thead>
			<tr>
				<th>Item</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Cafe</td>
				<td>${initParam.cafe_price}</td>
				<c:if test="${cafe.cafe_quantity >= '0.0'}">
					<td><input type="text" name="cafe_quantity" size="6" value="${cafe.cafe_quantity}" ></td>
					<td>${cafe.cafe_quantity * initParam.cafe_price}</td>
				</c:if>
				<c:if test="${cafe.cafe_quantity < '0.0'}">
					<c:if test="${empty cookie.CafeCookie.value}">
						<td><input type="text" name="cafe_quantity" size="6" value="0.0" ></td>
						<td>0.0</td>
						<jsp:setProperty name="cafe" property="cafe_quantity" value="0.0" />
					</c:if>
					<c:if test="${!empty cookie.CafeCookie.value}">
						<td>
						<input type="text" name="cafe_quantity" size="6" value="${cookie.CafeCookie.value}" ></td>
						<td>${cookie.CafeCookie.value * initParam.cafe_price}</td>
						<jsp:setProperty name="cafe" property="cafe_quantity" value="${cookie.CafeCookie.value}" />
					</c:if>
				</c:if>
			</tr>
                        
			<tr>
				<td>Sugar</td>
				<td>${initParam.sugar_price}</td>
				<c:if test="${sugar.sugar_quantity >= '0.0'}">
					<td><input type="text" name="sugar_quantity" size="6" value="${sugar.sugar_quantity}" ></td>
					<td>${sugar.sugar_quantity * initParam.sugar_price}</td>
				</c:if>
				<c:if test="${sugar.sugar_quantity < '0.0'}">
					<c:if test="${empty cookie.SugarCookie.value}">
						<td><input type="text" name="sugar_quantity" size="6" value="0.0" ></td>
						<td>0.0</td>
						<jsp:setProperty name="sugar" property="sugar_quantity" value="0.0" />
					</c:if>
					<c:if test="${!empty cookie.SugarCookie.value}">
						<td>
						<input type="text" name="sugar_quantity" size="6" value="${cookie.SugarCookie.value}" ></td>
						<td>${cookie.SugarCookie.value * initParam.sugar_price}</td>
						<jsp:setProperty name="sugar" property="sugar_quantity" value="${cookie.SugarCookie.value}" />
					</c:if>
				</c:if>
			</tr>
                        
			<tr>
				<td>Water</td>
				<td>${initParam.water_price}</td>
				<c:if test="${water.water_quantity >= '0.0'}">
					<td><input type="text" name="water_quantity" size="6" value="${water.water_quantity}" ></td>
					<td>${water.water_quantity * initParam.water_price}</td>
				</c:if>
				<c:if test="${water.water_quantity < '0.0'}">
					<c:if test="${empty cookie.WaterCookie.value}">
						<td><input type="text" name="water_quantity" size="6" value="0.0" ></td>
						<td>0.0</td>
						<jsp:setProperty name="water" property="water_quantity" value="0.0" />
					</c:if>
					<c:if test="${!empty cookie.WaterCookie.value}">
						<td>
						<input type="text" name="water_quantity" size="6" value="${cookie.WaterCookie.value}" ></td>
						<td>${cookie.WaterCookie.value * initParam.water_price}</td>
						<jsp:setProperty name="water" property="water_quantity" value="${cookie.WaterCookie.value}" />
					</c:if>
				</c:if>
			</tr>
                        
			<tr>
				<td>Total:</td>
				<td></td>
				<td></td>
				<td>
                                    ${(initParam.cafe_price * cafe.cafe_quantity)+(initParam.sugar_price * sugar.sugar_quantity)+(initParam.water_price * water.water_quantity)}
                                </td>
			</tr>
		</tbody>
	</table>
	<br>
	<br>
	<div align="center">
	<input type=submit name="Checkout" value="Add to cart" title="Hit to add the desired items to your cart">
	</div>
	</form>
	<br>
	<br>
		<div align="center">
		<form action="http://dl.dropbox.com/u/29354428/P4.pdf" style="display:inline">
		 <input type=submit name="report" value="   &#63;   " title="Get the report">
		</form>
		<form action="https://github.com/gkelis/Project4/tarball/master" style="display:inline">
		 <input type=submit name="code" value="   &#33;   " title="Get the entire project in .tar">
		</form>
		<br>
		<br>
		<br>
		<p><a href="http://gkelis.github.com/Project4/">My GitHub Page</a></p>
		</div>
 </body>
</html>
