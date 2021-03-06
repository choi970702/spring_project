<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	#menu_id
	{
		width: 80%;
		text-align: center;
		margin-top: 3%;
		margin-left: 10%;
	}
	
	#menu_id > div
	{
		width: 23%;
		height: 40px;
		display: inline-block;
		text-align: center;
		cursor: pointer;
		line-height: 40px;
		margin: auto;	
		background-color: gray;
	}
	#menu_id > div > a
	{
		display: block;
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
	#menu_id > div:hover
	{
		background-color: black;
	}
	#field1
	{
		width: 90%;
		margin: auto;
		margin-top: 4%;
	}
	#logo_img
	{
		width: 20%;
		height: 20%;
		float: left;
	}
	#home
	{
		float: left;
		margin-top: 0%;
		
	}
	#table
	{
		border: 1px solid black;
		width: 50%;
		margin: auto;
	}
	#review
	{
		width: 50%;
		margin-right: 10%;
		float: left;
		text-align: right;
	}
	#review_write
	{
		width: 70%;
	}
	#field2
	{
		width: 90%;
		margin: auto;
		text-align: center;
	}
	.img
	{
		width: 50%;
	}
	.img_div
	{
		width: 33%;
		float: left;
		margin: auto;
	}
	table,th,td
	{
		border: 1px solid gray;
		border-spacing: 0px;
		padding: 1%;
	}
	tr 
	{
		
	    text-align:center;
	    padding:2px 6px;
	    background-color: #F6F6F6;
	    margin: 0px;
	}
	
	th 
	{
	    text-align:center;
	    padding:2px 6px;
	    background-color: silver;
	    margin: 0px;
	}
</style>
<script type="text/javascript">
	function way() 
	{
		location.href="loadfind.do?cPage=${cPage}&restaurant=${restaurant}&place=${place}";
	}
	function boardlist() 
	{
		location.href="board.do?cPage=${cPage}";
	}
	function write4(f) 
	{
		f.action="write4.do?cPage=${cPage}&restaurant=${restaurant}";
		f.submit();
	}
</script>
</head>
<body>
	<%-- ?????? ??????????????? ?????? ????????? ????????????  --%>
	<%@ include file="top.jsp" %>
	<!-- ????????? -->
	<div>
		<div id="menu_id">
			<div><a href="search.do?cPage=${cPage}&search=">??????</a></div>
			<div><a href="food_restaurant.do?cPage=${cPage}">?????? ??? ????????? ??????</a></div>
			<div><a onclick="boardlist()">?????????</a></div>
			<div><a href="mypage.do?cPage=${cPage}">???????????????</a></div>
		</div>
	</div>
	<div>
		<fieldset id="field1">
			<div>
				<img src="resources/image/${file_name }" id="logo_img">
			</div>
			<div id="home">
				<a href="${home }" style="margin-top: 0px;">?????? ??????????????? ??????</a>
				<br>
				<span style="text-align: left;"> 
					???????????? : ${restaurant}<br>
					???????????? : ${Food_name}<br>
					???????????? : ${restaurant_time }<br>
					???????????? : ${phone }<br>
					?????? : ${place }<br>
					?????? : ${food_star }<br>
					?????? : ${food_like }/${count }<br>
				</span>
				<button onclick="way()">?????????</button>
			</div>
			<div>
				<table id="table">
					<thead>
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="4"><h3>???????????? ????????? ???????????? ????????????</h3></td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<th>??????</th>
									<th>?????????</th>
									<th>??????</th>
								</tr>
							</c:otherwise>
						</c:choose>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="4"><h3>???????????? ????????? ???????????? ????????????</h3></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${list}" varStatus="vs">
									<tr>
										<td>${k.idx}</td>
										<td style="text-align: left;">
											<a href="FVOboard.do?idx=${k.idx}&cPage=${cPage}">${k.writer }</a>
										</td>
										<td>${k.content }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<form id="review">
					<input id="review_write" type="text" placeholder="????????????">
					<input id="review_btn" type="submit" value="write" onclick="write4(this.form)">
					<input type="hidden" name="cPage" value="${cPage }">
					<input type="hidden" name="restaurant" value="${restaurant }">
				</form>
			</div>
			<div>
				<fieldset id="field2">
					<legend>?????????</legend>
					<div class="img_div">
						<img src="resources/image/${menupan }" class="img">
						<h3>??????1</h3>
					</div>
					<div class="img_div">
						<img src="resources/image/${menupan }" class="img">
						<h3>??????2</h3>
					</div>
					<div class="img_div">
						<img src="resources/image/${menupan }" class="img">
						<h3>??????3</h3>
					</div>
					
				</fieldset>
			</div>
		</fieldset>
	</div>
	<div>
		<footer>footer??????</footer>
	</div>
</body>
</html>