<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<!-- navbar-header -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-collapse"></button>
			<a id="navbar-brand" class="navbar-brand" href="index.jsp"><span
				class="glyphicon glyphicon-home"></span> </a>
		</div>

		<!-- navbar-collapse -->
		<div id="navbar-collapse" class="collapse navbar-collapse">
			<!-- navbar-righter -->
			<ul class="nav navbar-nav navbar-left">
				<li><a href="food.jsp">Food</a></li>
				<li><a href="scenery.jsp">Scenery</a></li>
				<li><a href="cultural.jsp">Cultural</a></li>
				<li><a href="house.jsp">House</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Communicate<b class="caret"></b></a>
					<span class="dropdown-arrow"></span>
					<ul class="dropdown-menu">
						<li><a href="blackboard.jsp">留言板</a></li>
						<li><a href="policy.jsp">论坛</a></li>
					</ul>
				</li>
				
			</ul>

			<!-- navbar-righter -->
				<ul class="nav navbar-nav navbar-right" id="login-register">
					<% if(session.getAttribute("userName")==null){ %>
					<li>
					<a href="#" id="register-btn" class="login-register-btn" data-toggle="modal" data-target="#register-modal"><span class="glyphicon glyphicon-user"></span> 注册&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					</li>
					<li>
						<a href="#" id="login-btn" class="login-register-btn" data-toggle="modal" data-target="#login-modal"><span class="glyphicon glyphicon-log-in"></span> 登录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					</li>
					<%}else{ %>
					<li class="dropdown" id="user-dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=session.getAttribute("userName") %>
						<b class="caret"></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
						<span class="dropdown-arrow"></span>
						<ul class="dropdown-menu">
							<li><a href="userinfo.jsp">个人资料</a></li>
							<li><a href="javascript:exit();"><span class="glyphicon glyphicon-log-out"></span> 退出</a></li>
						</ul>
					</li>
					<%} %>
				</ul>
		</div>

	</div>
</nav>

<!-- modal -->
<div>
	<!-- login modal -->
	<div class="modal fade " id="login-modal" tabindex="-1" role="dialog"
		aria-labelledby="loginModalLabel" aria-hidden="true"
		onkeydown="tologin()">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="loginModalLabel">用户登录</h4>
				</div>
				<div id="login-modal-body" class="modal-body">

					<!-- Avgrund -->
					<div id="login-info" class="avgrund-info avgrund-popup">
						<p>帐号或密码错误！</p>
						<button class="btn btn-warning" onClick="closeAvgrund()">确定</button><br>
					</div>

					<div class="login-form">
						<div id="userNameTip" class="form-group" data-toggle="popover"
							data-placement="top" data-html="true">
							<input type="text" class="form-control login-field"
								placeholder="用户名" id="userName" maxlength="10"> <label
								class="login-field-icon fui-user" for="login-name"></label>
						</div>
						<div id="passwordTip" class="form-group" data-toggle="popover"
							data-placement="top" data-html="true">
							<input type="password" class="form-control login-field"
								placeholder="密码" id="password" maxlength="16"> <label
								class="login-field-icon fui-lock" for="login-pass"></label>
						</div>
						<a id="login" class="btn btn-primary btn-lg btn-block">登录</a> 
						<a class="forget-password" href="#">忘记密码？</a>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- register modal -->
	<div class="modal fade login_register" id="register-modal"
		tabindex="-1" role="dialog" aria-labelledby="registerModalLabel"
		aria-hidden="true" onkeydown="toregister()">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="registerModalLabel">用户注册</h4>
				</div>
				<div id="register-modal-body" class="modal-body">

					<div class="form-register-container">
						<div class="form-register">
							<div id="register-userNameTip" class="form-group"
								data-toggle="popover" data-placement="top" data-html="true">
								<input id="register-userName" type="text" class="form-control"
									placeholder="用户名" maxlength="10">
							</div>
							<div id="register-passwordTip" class="form-group"
								data-toggle="popover" data-placement="top" data-html="true">
								<input id="register-password" type="password"
									class="form-control" placeholder="密码" maxlength="16">
							</div>
							<div id="register-confirmTip" class="form-group"
								data-toggle="popover" data-placement="top" data-html="true">
								<input id="register-confirm" type="password"
									class="form-control" placeholder="确认密码" maxlength="16">
							</div>
							<div id="register-emailTip" class="form-group"
								data-toggle="popover" data-placement="top" data-html="true">
								<input id="register-email" type="email" class="form-control"
									placeholder="邮箱">
							</div>
							<button id="register" class="btn btn-md btn-primary btn-block"
								type="submit">注册</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
