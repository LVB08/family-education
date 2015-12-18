<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> 腾飞家教网 </title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/parents.css">

  <script type="text/javascript" src="js/reg_parents.js"></script>
  <script type="text/javascript" src="js/ajax.js"></script>
  </head>

 <body class="main">
  <div class="start">
	<img src="images/bg6.jpg" alt="福大家教" class="img-circle img6">
  </div>
  
  <div class="container"><!-- 主体 -->
	<div class="col-md-3"></div>
   
	<div class="col-md-6 content">
		<div class="explain"><!-- 说明：家长注册 -->
			<span class="text-center word">家长注册</span>
		</div>
		
		<form action="parentCheck" method="post" id="myform" enctype="multipart/form-data">
			<div class="form-group">
				<div class="case1"><!-- 注册账号 -->
					<label for="exampleInputEmail1">注册账号</label>
					<input type="text" name="Plogname" class="form-control"	id="exampleInputEmail1" placeholder="注册账号" />
				</div>
			</div>


			<div class="form-group">
				<div class="case1"><!-- 密码 -->
					<label for="exampleInputEmail1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp密码</label>
					<input type="password" name="password" class="form-control"	id="exampleInputEmail1" placeholder="密码" />
				</div>
			</div>

			<div class="form-group">
				<div class="case1"><!-- 确认密码 -->
					<label for="exampleInputEmail1">确认密码</label>
					<input type="password" name="com-password" class="form-control"	id="exampleInputEmail1" placeholder="确认密码" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="case1"><!-- 真实姓名 -->
					<label for="exampleInputEmail1">真实姓名</label>
					<input type="text" name="Pname" class="form-control"	id="exampleInputEmail1" placeholder="真实姓名" />
				</div>
			</div>
			
			<div class="sex">
				<span class="sex1">性别</span>
				<label class=".radio-inline man">
				<input type="radio" name="sex" id="inlineRadio1" value="男" checked="true"> 男
				</label>
				<label class=".radio-inline woman">
				<input type="radio" name="sex" id="inlineRadio1" value="女"> 女
				</label>
			</div>

			<div class="form-group">
				<div class="case1"><!-- 地址 -->
					<label for="exampleInputEmail1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp地址</label>
					<input type="text" name="address" class="form-control"	id="exampleInputEmail1" placeholder="地址" />
				</div>
			</div>

			<div class="form-group">
				<div class="case1"><!-- 联系方式 -->
					<label for="exampleInputEmail1">联系方式</label>
					<input type="text" name="TEL" class="form-control"	id="exampleInputEmail1" placeholder="联系方式" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="case1"><!-- 身份证号 -->
					<label for="exampleInputEmail1">身份证号</label>
					<input type="text" name="PID" class="form-control"	id="exampleInputEmail1" placeholder="身份证号" />
				</div>
			</div>

			<div class="form-group">
				<div class="case1" ><!-- 邮箱 -->
					<label for="images">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp照片</label>
					<input type="file" name="images" class="form-control"	id="images" placeholder="" style="float:right"/>
				</div>
			</div>

			<div class="form-group">
				<div class="case1"><!-- 邮箱 -->
					<label for="exampleInputEmail1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp邮箱</label>
					<input type="text" name="email" class="form-control"	id="exampleInputEmail1" placeholder="邮箱" />
				</div>
			</div>
			
			<div class="checkbox"><!--  -->
				<label>
					<input type="checkbox" name="checkbox">我已阅读，并同意《福大家教平台用户协议》
				</label>
			</div>
			
			<div class="button"><!-- 立即注册按钮 -->
				<button type="button" id="button" class="btn btn-default btn-block button1">立即注册</button>
			</div>
			
			<div class="last"><!-- 直接登录 -->
				<span class="last1">已有&nbsp&nbsp福大家教&nbsp&nbsp账号？</span>
				<span class="login"><a href="login.jsp">直接登录</a></span>
			</div>

		</form>
	</div>
	
	<div class="col-md-3"></div>
  </div>
 </body>
</html>
