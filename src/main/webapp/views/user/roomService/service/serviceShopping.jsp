<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/plugin/simpleCalendar/date_pack.css"	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/ld/user/home/public.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/ld/user/roomService/roomService.css" rel="stylesheet" type="text/css" />
<title>代购费</title>
</head>
<body>
	<jsp:include page="../../_header.jsp"></jsp:include>
	<jsp:include page="../../_leftMenu.jsp" />
	<jsp:include page="../../_modal.jsp" />

	<!-- 页面内容 strat -->
	<div class="main">
		<div class="main-page">
			<div class="nav-path">
				<a href="../roomServiceIndex.jsp" title="回到首页"><i
					class="icon-home"></i></a> <i class="icon-path"></i> <a
					href="serviceIndex.jsp">客房服务</a> <i class="icon-path"></i> <a
					href="serviceShopping.jsp">代购费</a>
			</div>
			<a class="btn btn-new btnnew" href="serviceNewShopping.jsp">新增代购费记录</a>												
			
			<div class="bill-area">
			    <div class="search">
			        <span>房间号：</span><input id="search-input" type="text" value="">
					<span>日期：</span><input type="text" class="pack_maintain">
					<a class="btn btn-edit btnEdit" onclick="requestFirstShoppingByRoomNum(this);" >搜索</a>
			        <a class="btn btn-edit btnEdit btnRight" onclick="exportList();" >导出</a>
			        <a class="btn btn-edit btnEdit" onclick="printList('hahaha');">打印</a>	
			    </div>
				<div class="bill-table">
					<!-- 费用 table start -->
					<table>
						<thead>
							<tr>
								<th>房间号</th>
								<th>客户姓名</th>
								<th>物品</th>
								<th>数量</th>
								<th>垫付费</th>
								<th>服务费</th>
								<th>备注</th>
								<th>发生时间</th>
								<th>上传时间</th>
								<th>编辑时间</th>
								<th>操作</th>															
							</tr>
						</thead>
						<tbody id="shoppingTbody"></tbody>
					</table>
					<!-- 费用 table end -->

					<!-- 底部页面 start -->
					<div id="serviceShoppingBottom" class="bottom"></div>
					<!-- 底部页码 end -->
				</div>
			</div>
		</div>
	</div>
	<div class="shadow"></div>
	<!-- 页面内容 end -->

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/plugin/simpleCalendar/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/plugin/simpleCalendar/date_pack.js"></script>
		
	<!-- 导出插件 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugin/exportCsv/Blob.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugin/exportCsv/FileSaver.js"></script>

	<!-- 打印插件 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugin/printer/print.min.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/ld/user/home/public.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/ld/user/roomService/roomService.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/ld/user/roomService/service/serviceShopping.js"></script>
	<script type="text/javascript">
	    var nowDate = new Date();
	    $(".pack_maintain").val(formatDateForm(nowDate));
        $('.pack_maintain').date_input();
	    // 拉取第一页 代购费信息
		requestFirstShopping();
	</script>
</body>
</html>