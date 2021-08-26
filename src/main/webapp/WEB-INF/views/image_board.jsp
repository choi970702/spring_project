<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.btn
	{
		text-align: center;
		height: 2%;
		border: 2px solid black;
	}
	
	a
	{
		text-decoration: none;
		color: black;
	}
	footer
	{
		background-color: gray;
		width: 100%;
		height: 60px;
		font-size: 10px;
		margin-bottom: 0px;
		padding: 10px;
	}
	a:hover
	{
		color: silver;
		cursor: pointer;
	}
	table, tr, td
	{
		border: 1px solid black;
		text-align: center;
		margin: auto;
	}
	table, form
	{
		width: 90%;
		height: 90%;
		background-color: silver;
	}
	fieldset
	{
		width: 90%;
		margin: auto;
		height: 400px;
		margin-bottom: 5%;
	}
	tr
	{
		background-color: #F6F6F6;
	}
	td > input
	{
		width: 80%;
	}
</style>
<script type="text/javascript">
	function main() 
	{
		alert("메인 페이지로 이동");
		location.href="main.do?cPage=${cPage}";
	}
</script>
</head>
<body>
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
	<%@ include file="top.jsp" %>
	<div>
		<fieldset>
			<table>
				<thead>
					<tr>
						<th></th><th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%; height: 5%;">작성자</td>
						<td>${bvo.writer }</td>
					</tr>
					<tr>
						<td>내용</td>
						<td>${bvo.content }</td>
					</tr>
					<tr>
						<td>첨부파일</td>
						<c:choose>
						<c:when test="${!empty bvo.file_name}">
							<td style="text-align: center">
								<img alt="" src="resources/image/${bvo.file_name }" style="width: 150px;"><br>
								<a href="download.do?file_name=${bvo.file_name }">${bvo.file_name}</a> 
							</td>
						</c:when>
						<c:otherwise>
							<td><b>첨부파일없음</b></td>
						</c:otherwise>
					</c:choose>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<button value="" onclick="main()">메인 페이지로 이동</button>
						</td>
					</tr>
				</tfoot>
			</table>
		</fieldset>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>