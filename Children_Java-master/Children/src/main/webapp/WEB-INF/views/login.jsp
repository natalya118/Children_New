<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="springForm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Увійти до системи</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/css/componentlogin.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/css/content.css'/>" />
<link rel="stylesheet" href="<c:url value='/static/css/bootstrap.css'/>">
<link rel="stylesheet" href="<c:url value='/static/css/hover.css'/>">

<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/css/style.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/css/style-login.css'/>" />
<script src="<c:url value='/static/js/modernizr.custom.js'/>"></script>
</head>
<body>
	<header role="banner" id="fh5co-header">
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar"><i></i></a> <a class="navbar-brand"
				href="index.html">Children</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#" data-nav-section="home"><span>Головна</span></a></li>
				<li><a href="#" data-nav-section="about"><span>Про
							нас</span></a></li>
				<li><a href="#" data-nav-section="testimonials"><span>Як
							працює</span></a></li>
				<li><a href="#" data-nav-section="press"><span>Діти</span></a></li>
				<li><a href="#" class="login-btn hvr-reveal"><span>Увійти</span></a></li>
			</ul>
		</div>
		</nav>
	</div>
	</header>
	<div class="containerr">
		<section>
		<p style="margin-top: 100px">
			Click one of the buttons below to see a <strong>modal dialog</strong>:
		</p>
		<div class="mockup-content">
			<div
				class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed">
				<button type="button">Login</button>
				<div class="morph-content">
					<div>
						<div class="content-style-form content-style-form-1">
							<span class="icon icon-close">Close the dialog</span>
							<h2>Login</h2>
							
						</div>
					</div>
				</div>
			</div>
			<strong class="joiner">or</strong>
			<div
				class="morph-button morph-button-modal morph-button-modal-3 morph-button-fixed">
				<button type="button">Signup</button>
				<div class="morph-content">
					<div>
						<div class="content-style-form content-style-form-2">
							<span class="icon icon-close">Close the dialog</span>
							<h2>Sign Up</h2>
							<springForm:form method="POST" modelAttribute="house"
								action="registration">
								<table>
									<tr>
										<td>Name:</td>
										<td><springForm:input path="name" /></td>
										<td><springForm:errors path="name" cssClass="error" /></td>
									</tr>
									<tr>
										<td>City:</td>
										<td><springForm:input path="city" /></td>
										<td><springForm:errors path="city" cssClass="error" /></td>
									</tr>
									<tr>
										<td>Street:</td>
										<td><springForm:input path="street" /></td>
										<td><springForm:errors path="street" cssClass="error" /></td>
									</tr>
									<tr>
										<td>Number:</td>
										<td><springForm:input path="number" /></td>
										<td><springForm:errors path="number" cssClass="error" /></td>
									</tr>
									<tr>
										<td>Description:</td>
										<td><springForm:input path="description" /></td>
										<td><springForm:errors path="description" cssClass="error" /></td>
									</tr>
									<tr>
									<td colspan="3">
									<input type="submit" value="Register"></td>
									</tr>
								</table>
							</springForm:form>
						</div>
					</div>
				</div>
			</div>
			<p>Kohlrabi radish okra azuki bean corn fava bean mustard
				tigernut juccama green bean celtuce collard greens avocado quandong.</p>
		</div>
		</section>
	</div>
	<script src="<c:url value='/static/js/classie.js'/>"></script>
	<script src="<c:url value='/static/js/uiMorphingButton_fixed.js'/>"></script>
	<script>
		(function() {
			var docElem = window.document.documentElement, didScroll, scrollPosition;

			function noScrollFn() {
				window.scrollTo(scrollPosition ? scrollPosition.x : 0,
						scrollPosition ? scrollPosition.y : 0);
			}

			function noScroll() {
				window.removeEventListener('scroll', scrollHandler);
				window.addEventListener('scroll', noScrollFn);
			}

			function scrollFn() {
				window.addEventListener('scroll', scrollHandler);
			}

			function canScroll() {
				window.removeEventListener('scroll', noScrollFn);
				scrollFn();
			}

			function scrollHandler() {
				if (!didScroll) {
					didScroll = true;
					setTimeout(function() {
						scrollPage();
					}, 60);
				}
			}
			;

			function scrollPage() {
				scrollPosition = {
					x : window.pageXOffset || docElem.scrollLeft,
					y : window.pageYOffset || docElem.scrollTop
				};
				didScroll = false;
			}
			;

			scrollFn();

			[].slice.call(document.querySelectorAll('.morph-button')).forEach(
					function(bttn) {
						new UIMorphingButton(bttn, {
							closeEl : '.icon-close',
							onBeforeOpen : function() {
								noScroll();
							},
							onAfterOpen : function() {
								canScroll();
							},
							onBeforeClose : function() {
								noScroll();
							},
							onAfterClose : function() {
								canScroll();
							}
						});
					});

			[].slice.call(document.querySelectorAll('form button')).forEach(
					function(bttn) {
						bttn.addEventListener('click', function(ev) {
							ev.preventDefault();
						});
					});
		})();
	</script>
</body>
</html>