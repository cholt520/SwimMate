<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- Begin Login and Sign up button -->
<s:if test="%{loginUserID==-1}">
	<div class="top-menu">
		<ul class="nav navbar-nav pull-right">
			<li class="droddown dropdown-separator"><s:form
					action="jumpToLoginPage.action">
					<button type="submit"
						class="btn green-sharp btn-outline sbold uppercase">Log
						in or Sign up</button>
				</s:form></li>
			<li class="droddown dropdown-separator">&emsp;</li>

			<li class="droddown dropdown-separator">&emsp;</li>
		</ul>
	</div>
</s:if>
<!-- End Login and Sign up button -->

<!-- Begin user info -->
<s:else>
	<div class="top-menu">
		<ul class="nav navbar-nav pull-right">
			<!-- BEGIN USER LOGIN DROPDOWN -->
			<li class="dropdown dropdown-user dropdown-dark"><a
				href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"
				data-hover="dropdown" data-close-others="true"> <!--   <img alt="" class="img-circle" src="../assets/layouts/layout3/img/avatar9.jpg"> -->
					<span class="username username-hide-mobile"> <s:property
							value="currentLoginUser.userName" /> &#x25bc;
				</span>
			</a>
				<ul class="dropdown-menu dropdown-menu-default">
					<li><a
						href="jumpToProfilePage.action?loginUserID=<s:property value="loginUserID"/>">
							<i class="icon-user"></i> My Profile
					</a></li>

					<li><a href="index.action?loginUserID=-1"> <i
							class="icon-key"></i> Log Out
					</a></li>
				</ul></li>
			<li class="droddown dropdown-separator">&emsp;</li>
			<li class="droddown dropdown-separator">&emsp;</li>
			<!-- END USER LOGIN DROPDOWN -->
		</ul>
	</div>

</s:else>
<!-- End user info -->
