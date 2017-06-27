<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Кабінет адміна</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|Yanone+Kaffeesatz"
	rel="stylesheet" type='text/css'>
<link rel="stylesheet" href="<c:url value='/static/css/animate.css'/>">
<link rel="stylesheet" href="<c:url value='/static/css/bootstrap.css'/>">
<link rel="stylesheet" href="<c:url value='/static/css/hover.css'/>">
<link rel="stylesheet" href="<c:url value='/static/css/flat-ui.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/css/tabs.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/css/tabstyles.css'/>" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<c:url value='/static/css/component.css'/>">

<link rel="stylesheet" href="<c:url value='/static/css/style.css'/>">
<link rel="stylesheet" href="<c:url value='/static/css/style-chp.css'/>">
<link rel="stylesheet"
	href="<c:url value='/static/css/style-child.css'/>">
<link rel="stylesheet" href="<c:url value='/static/css/style-cab.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/css/tabsuser.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/static/css/style-admin.css'/>">
<link rel="stylesheet" href="<c:url value='/static/css/usertab.css'/>">

</head>
<body>

<c:set scope="page" value="anonymousUser" var="anon"/>

	<div class="usertab">
		<div class="img-border"></div>
		<div class="userpic"></div>
		<center>
			<div class="gifts-info">
				<div class="centered">
					<i class="fa fa-gift"></i><span>&nbsp;&nbsp;&nbsp;200
						подарунків</span>
				</div>
			</div>
		</center>
		<ul class="btns">
        <li><a href="/user">Кабінет</a></li>
        <li><a href="/logout">Вийти</a></li>
		</ul>
	</div>
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
				<li><a href="#"><span>Головна</span></a></li>
				<li><a href="#" class="login-btn hvr-reveal"><span>Увійти</span></a></li>
				<li><a id="user-nav"><i class="fa fa-user-circle-o"></i></a></li>
			</ul>
		</div>
		</nav>
	</div>
	</header>
	<section>
	<div class="tabs tabs-style-linemove">
		<nav>
		<ul>
			<li></li>
			<li><a href="#section-linemove-1" class="icon fa fa-paper-plane"><span>Заявки</span></a></li>
			<li><a href="#section-linemove-3" class="icon fa fa-home"><span>Всі
						будинки</span></a></li>
			<li><a href="#section-linemove-4" class="icon fa fa-sitemap"><span>Категорії
						подарунків</span></a></li>
			<li></li>
		</ul>
		</nav>
		<div class="content-wrap">
			<section id="section-linemove-1"></section>
			<section id="section-linemove-2">
			<div id="fh5co-press" data-section="press">
				<div class="container">
					<div class="row">

						<c:forEach items="${requests}" var="r">
							<div class="col-md-6">
								<div class="fh5co-press-item to-animate">
									<div class="fh5co-press-img"
										style="background-image: url(http://www.mcgough.com/wp-content/uploads/2013/09/ChildHomeExt1_L.jpg)">
									</div>
									<div class="fh5co-press-text">
										<h3 class="h2 fh5co-press-title">${r.name}<span
												class="fh5co-border"></span>
										</h3>
										<p>
											<strong>Адреса: </strong>${r.city}, ${r.street}, ${r.number }
										</p>
										<p style="margin-top: -40px !important">
											<strong>Адреса для звернення: </strong>${r.email }</p>
										<p>${r.description }</p>
										<a href="/Children/register/${r.id}"
											class="btn btn-primary btn-sm">Зареєструвати</a>
									</div>

								</div>
							</div>
						</c:forEach>


					</div>
					<center>

						<div>
							<ul class="pagination to-animate">
								<li class="previous"><a href="#fakelink"
									class="fui-arrow-left">Попередня</a></li>
								<li class="active"><a href="#fakelink">1</a></li>
								<li class="hvr-sink"><a href="#fakelink">2</a></li>
								<li class="hvr-sink"><a href="#fakelink">3</a></li>
								<li class="hvr-sink"><a href="#fakelink">4</a></li>
								<li class="hvr-sink"><a href="#fakelink">5</a></li>
								<li class="hvr-sink"><a href="#fakelink">6</a></li>
								<li class="hvr-sink"><a href="#fakelink">7</a></li>
								<li class="hvr-sink"><a href="#fakelink">8</a></li>
								<li class="next"><a href="#fakelink"
									class="fui-arrow-right">Наступна</a></li>
							</ul>
						</div>
					</center>
				</div>
			</div>
			</section>
			<section id="section-linemove-3">
			<div id="fh5co-press" data-section="press">
				<div class="container">
					<div class="row">
						<c:forEach items="${houses}" var="h">
							<div class="col-md-6">
								<div class="fh5co-press-item to-animate">
									<div class="fh5co-press-img"
										style="background-image: url(http://www.mcgough.com/wp-content/uploads/2013/09/ChildHomeExt1_L.jpg)">
									</div>
									<div class="fh5co-press-text">
										<h3 class="h2 fh5co-press-title">${h.name }<span
												class="fh5co-border"></span>
										</h3>
										<h2 class="fh5co-press-title years">${h.numberOfChildren }
											дітей</h2>
										<p class="address"
											style="margin-top: -45px !important; font-weight: 400 !important">${h.city },
											${h.street }, ${h.number }</p>
										<p>${h.description }</p>
										<a href="/Children/delete/${h.id}"
											class="btn btn-primary btn-sm">Видалити будинок</a>
									</div>

								</div>
							</div>
						</c:forEach>


					</div>
					<center>

						<div>
							<ul class="pagination to-animate">
								<li class="previous"><a href="#fakelink"
									class="fui-arrow-left">Попередня</a></li>
								<li class="active"><a href="#fakelink">1</a></li>
								<li class="hvr-sink"><a href="#fakelink">2</a></li>
								<li class="hvr-sink"><a href="#fakelink">3</a></li>
								<li class="hvr-sink"><a href="#fakelink">4</a></li>
								<li class="hvr-sink"><a href="#fakelink">5</a></li>
								<li class="hvr-sink"><a href="#fakelink">6</a></li>
								<li class="hvr-sink"><a href="#fakelink">7</a></li>
								<li class="hvr-sink"><a href="#fakelink">8</a></li>
								<li class="next"><a href="#fakelink"
									class="fui-arrow-right">Наступна</a></li>
							</ul>
						</div>
					</center>
				</div>
			</div>
			</section>
			<section id="section-linemove-4">
			<div id="fh5co-press" data-section="press">
				<button class="add-child-btn btn btn-primary hvr-grow to-animate"
					data-toggle="modal" data-target="#add-category">
					<i class="fa fa-plus"></i><span>Додати категорію</span>
				</button>
				<div class="container">
					<div class="row">
						<c:forEach items="${categories}" var="c">
							<div class="col-md-6">

								<div class="fh5co-press-item to-animate">
									<div class="fh5co-press-img"
										style="background-image: url(${c.pictureUrl})"></div>
									<div class="fh5co-press-text">
										<h3 class="h2 fh5co-press-title">${c.name }<span
												class="fh5co-border"></span>
										</h3>
										<a href="#" data-toggle="modal" data-target="#edit-category${c.id }"
											class="btn btn-primary btn-sm">Редагувати</a> <a href="#"
											data-toggle="modal" data-target="#delete-category${c.id }"
											class="btn btn-primary btn-sm">Видалити</a>
									</div>

								</div>

							</div>
							
							<div id="edit-category${c.id }" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Редагувати категорію</h4>
				</div>
				<form:form method="POST" modelAttribute="updateCategory"
					action="updateCategory">
					<div class="modal-body">
						<form:input path="name" type="text" id="title" placeholder="Назва" />
						<form:input path="id" type="hidden" id="title" placeholder="" value="${c.id }" />
						<form:input path="pictureUrl" type="text" id="photo"
							placeholder="URL фото" />
					</div>
					<div class="modal-footer">
						<input class="btn-submit" type="submit" value="Додати">
					</div>
				</form:form>

			</div>

		</div>
	</div>
					<div id="delete-category${c.id }" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Видалити категорію</h4>
				</div>
				<div class="modal-body">
					<p>Ви впевнені, що бажаєте видалити цю категорію подарунків?</p>
				</div>
				<div class="modal-footer">
					<center>
					
						<nav class="cl-effect-5"> <a href="/Children/deleteCategory/${c.id }"
							class="btn btn-primary yes"><span data-hover="Так">Так</span></a>
						<a href="#" data-dismiss="modal" class="btn btn-primary no"><span
							data-hover="Ні">Ні</span></a> </nav>
					</center>
				</div>
			</div>

		</div>
	</div>
							
						</c:forEach>

					</div>
					<center>

						<div>
							<ul class="pagination to-animate">
								<li class="previous"><a href="#fakelink"
									class="fui-arrow-left">Попередня</a></li>
								<li class="active"><a href="#fakelink">1</a></li>
								<li class="hvr-sink"><a href="#fakelink">2</a></li>
								<li class="hvr-sink"><a href="#fakelink">3</a></li>
								<li class="hvr-sink"><a href="#fakelink">4</a></li>
								<li class="hvr-sink"><a href="#fakelink">5</a></li>
								<li class="hvr-sink"><a href="#fakelink">6</a></li>
								<li class="hvr-sink"><a href="#fakelink">7</a></li>
								<li class="hvr-sink"><a href="#fakelink">8</a></li>
								<li class="next"><a href="#fakelink"
									class="fui-arrow-right">Наступна</a></li>
							</ul>
						</div>
					</center>
				</div>
			</div>
			</section>
			<section id="section-linemove-5"></section>
		</div>
	</div>
	</section>

	<div id="edit-info-house" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Редагувати інформацію про будинок</h4>
				</div>
				<div class="modal-body">
					<button class="btn btn-default" data-toggle="modal"
						data-target="#del-house">Видалити будинок</button>
					<input type="text" id="title" placeholder="Назва" />
					<textarea id="description" placeholder="Опис"></textarea>
					<input type="text" id="address" placeholder="Адреса" /> <input
						type="text" id="pic" placeholder="URL фото будинку" />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn-sub" data-dismiss="modal">Зберегти</button>
				</div>
			</div>

		</div>
	</div>

	<div id="del-house" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Видалити будинок</h4>
				</div>
				<div class="modal-body">
					<p>Ви впевнені, що бажаєте видалити будинок?</p>
				</div>
				<div class="modal-footer">
					<center>
						<nav class="cl-effect-5"> <a href="#" data-dismiss="modal"
							class="btn btn-primary yes"><span data-hover="Так">Так</span></a>
						<a href="#" data-dismiss="modal" class="btn btn-primary no"><span
							data-hover="Ні">Ні</span></a> </nav>
					</center>
				</div>
			</div>

		</div>
	</div>

	<div id="accept" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Обробити подарунок</h4>
				</div>
				<div class="modal-body">
					<center>
						<nav class="cl-effect-5"> <a href="#" data-dismiss="modal"
							class="btn btn-primary yes"><span data-hover="Підтвердити">Підтвердити</span></a>
						<a href="#" data-dismiss="modal" class="btn btn-primary no"><span
							data-hover="Скасувати">Скасувати</span></a> </nav>
					</center>
				</div>
			</div>

		</div>
	</div>

	<div id="add-child" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Додати дитину</h4>
				</div>
				<div class="modal-body">
					<input type="text" id="firstname" placeholder="Ім'я" /> <input
						type="text" id="lastname" placeholder="Прізвище" />
					<textarea id="description" placeholder="Опис"></textarea>
					<label>Дата народження</label> <input type="date" id="birth" />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn-sub" data-dismiss="modal">Додати</button>
				</div>
			</div>

		</div>
	</div>


	
	<div id="add-category" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Додати категорію</h4>
				</div>
				<form:form method="POST" modelAttribute="category"
					action="newcategory">
					<div class="modal-body">
						<form:input path="name" type="text" id="title" placeholder="Назва" />
						<form:input path="pictureUrl" type="text" id="photo"
							placeholder="URL фото" />
					</div>
					<div class="modal-footer">
						<input class="btn-submit" type="submit" value="Додати">
					</div>
				</form:form>
			</div>

		</div>
	</div>

	
	<footer id="footer" role="contentinfo">
	<div class="container">
		<div class="row row-bottom-padded-sm">
			<div class="col-md-12">
				<p class="copyright text-center">
					&copy; KMA 2017<br> Children web-project by <a href="#"
						target="_blank">Natalia, Julia, Oleksii</a>
				</p>
			</div>
		</div>
	</div>
	</footer>

	<script src="<c:url value='/static/js/jquery.min.js'/>"></script>
	<script src="<c:url value='/static/js/jquery.easing.1.3.js'/>"></script>
	<script src="<c:url value='/static/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/static/js/jquery.waypoints.min.js'/>"></script>
	<script src="<c:url value='/static/js/owl.carousel.min.js'/>"></script>
	<script src="<c:url value='/static/js/jquery.style.switcher.js'/>"></script>
	<script src="<c:url value='/static/js/nlform.js'/>"></script>
	<script src="<c:url value='/static/js/cbpFWTabs.js'/>"></script>
	<script src="<c:url value='/static/js/usertab.js'/>"></script>
	<script>
        (function() {

            [].slice.call(document.querySelectorAll('.tabs')).forEach(function(el) {
                new CBPFWTabs(el);
            });

        })();
    </script>

</body>
</html>