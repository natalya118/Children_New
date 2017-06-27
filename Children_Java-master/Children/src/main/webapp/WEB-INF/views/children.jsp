<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Children</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|Yanone+Kaffeesatz" rel="stylesheet" type='text/css'>
    <link rel="stylesheet" href="<c:url value='/static/css/animate.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/icomoon.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/simple-line-icons.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/owl.carousel.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/owl.theme.default.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/hover.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/flat-ui.css'/>">
        <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/default.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/component.css'/>"/>

    <link rel="stylesheet" href="<c:url value='/static/css/style.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/style-chp.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/usertab.css'/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<c:set scope="page" value="anonymousUser" var="anon"/>

 <div class="usertab">
        <div class="img-border"></div>
        <div class="userpic"></div>
        <center>
        <div class="gifts-info"><div class="centered"><i class="fa fa-gift"></i><span>&nbsp;&nbsp;&nbsp;200 подарунків</span></div></div>
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
                    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
                    <a class="navbar-brand" href="/">Children</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/"><span>Головна</span></a></li>
                        <c:if test="${loggedinuser eq anon}"><li><a href="/login" class="login-btn hvr-reveal"><span>Увійти</span></a></li></c:if>
                        <c:if test="${loggedinuser ne anon}"><li><a id="user-nav"><i class="fa fa-user-circle-o"></i></a></li></c:if>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
    <img class="babyback" src="<c:url value='/static/images/back.png'/>"/>

    <div id="fh5co-press" data-section="press">
        <div class="container">
            <div class="row">
                <div class="col-md-12 section-heading text-center">
                    <h2 class="single-animate animate-press-1">Діти</h2>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 subtext single-animate animate-press-2">
                            <div class="main clearfix">
				<form id="nl-form" class="nl-form" action="" method="get">
					Я хочу подарувати мрію
					<select name="sex">
						<option value="" selected>дитині</option>
						<option value="2">хлопчику</option>
						<option value="3">дівчинці</option>
					</select>
					<input name="age" class="years" type="text" value="" placeholder="будь-якого віку" data-subline="Наприклад: <em>від 5 до 9 років</em>"/>
					з <input  name="city" type="text" value="" placeholder="будь-якого міста" data-subline="Наприклад: <em>Київ</em> або <em>Львів</em>"/>
					<div class="nl-submit-wrap">
						<button class="nl-submit hvr-grow-rotate" type="submit">Знайти дитину</button>
					</div>
                    <div class="nl-overlay"></div>
				</form>
			</div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">
            <c:if test="${fn:length(children) == 0}">
            <center>
            	<h4 class="not-found">На жаль, за таким запитом нічого не знайдено</h4>
            	</center>
            </c:if>
            
            <c:forEach items="${children}" var="child">
                <div class="col-md-6">
                    <div class="fh5co-press-item to-animate">
                        <div class="fh5co-press-img" style="background-image: url(http://www.pravsworld.com/wp-content/uploads/2013/12/Child-Smile-e1402671131894.jpg)">
                        </div>
                        <div class="fh5co-press-text">
                            <h3 class="h2 fh5co-press-title">${child.firstName} <span class="fh5co-border"></span></h3>
                            <h2 class="fh5co-press-title years">12 років</h2>
                            <p>Мріє про родину</p>
                            <p><a href="child?id=${child.id}" class="btn btn-primary btn-sm">Дізнатися більше</a></p>
                        </div>
                        
                    </div>
                </div>
                </c:forEach>
            </div>
            <center>
                    <div>
                        <ul class="pagination to-animate">
                        <c:if test="${pageNow eq 1}">
                            <li class="previous">
                                <a style="background:#eee" class="fui-arrow-left">Попередня</a>
                            </li>
                            </c:if>
                        <c:if test="${pageNow ne 1}">
                            <li class="previous">
                                <a href="all?page=<c:out value="${pageNow-1}"/>" class="fui-arrow-left">Попередня</a>
                            </li>
                            </c:if>
                            <c:forEach var="i" begin="1" end="${totalPages}">
                             <c:if test="${i eq pageNow}">
                               <li class="active"><a><c:out value="${i}"/></a></li>
                            </c:if>
                            <c:if test="${i ne pageNow}">
                               <li class="hvr-sink"><a href="all?page=<c:out value="${i}"/>"><c:out value="${i}"/></a></li>
                            </c:if>
                            </c:forEach>
                            <c:if test="${pageNow ne totalPages}">
                            <li class="next">
                                <a href="all?page=<c:out value="${pageNow+1}"/>"class="fui-arrow-right">Наступна</a>
                            </li>
                            </c:if>
                            <c:if test="${pageNow eq totalPages}">
                            <li class="next">
                                <a style="background:#eee" class="fui-arrow-right">Наступна</a>
                            </li>
                            </c:if>
                        </ul>
                    </div>
                </center>
        </div>
    </div>

    <footer id="footer" role="contentinfo">
        <div class="container">
            <div class="row row-bottom-padded-sm">
                <div class="col-md-12">
                    <p class="copyright text-center">&copy; KMA 2017<br> Children web-project by <a href="https://github.com/natalya118/Children_New" target="_blank">Natalia, Julia, Oleksii</a></p>
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
    <script src="<c:url value='/static/js/usertab.js'/>"></script>
    <script>
        var nlform = new NLForm(document.getElementById('nl-form'));
    </script>
</body>
</html>