<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Кабінет house</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|Yanone+Kaffeesatz" rel="stylesheet" type='text/css'>
    <link rel="stylesheet" href="<c:url value='/static/css/animate.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/hover.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/flat-ui.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/tabs.css'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/tabstyles.css'/>" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<c:url value='/static/css/component.css'/>">
    
	<link rel="stylesheet" href="<c:url value='/static/css/style.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/style-chp.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/style-child.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/style-cab.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/usertab.css'/>">

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
                    <li><a href="#section-linemove-1" class="icon fa fa-home"><span>Будинок</span></a></li>
                    <li><a href="#section-linemove-2" class="icon fa fa-child"><span>Діти</span></a></li>
                    <li><a href="#section-linemove-3" class="icon fa fa-gift"><span>Подарунки</span></a></li>
                    <li></li>
                </ul>
            </nav>
            <div class="content-wrap">
                <section id="section-linemove-1"></section>
                <section id="section-linemove-2">
                    <img class="back-house" src="<c:url value='/static/images/child-back.png'/>" />
                    <div class="row">
                        <div class="col-md-4">
                            <div class="house-img to-animate"></div>
                        </div>
                        <div class="col-md-6 section-heading-main text-center">
                            <div>
                                <h2 class="single-animate animate-press-1">${house.name}</h2>
                                <div class="child-info">
                                    <div>${house.numberOfChildren } дітей</div>
                                    <div>${house.city}, ${house.street}, ${house.number}</div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 subtext single-animate animate-press-2">
                                        <div class="main clearfix">
                                        	${house.description }
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-primary hvr-grow to-animate" data-toggle="modal" data-target="#edit-info-house">Редагувати</button>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="section-linemove-3">
                    <button class="add-child-btn btn btn-primary hvr-grow to-animate" data-toggle="modal" data-target="#add-child"><i class="fa fa-plus"></i><span>Додати дитину</span></button>
                    <div id="fh5co-press" data-section="press">
                        <div class="container">
                            <div class="row">
                            <c:forEach items="${children}" var="c">
                                <div class="col-md-6">
                                   
                                    <div class="fh5co-press-item to-animate">
                                        <div class="fh5co-press-img" style="background-image: url(${c.photo})">
                                        </div>
                                        <div class="fh5co-press-text">
                                            <h3 class="h2 fh5co-press-title">${c.firstName} ${c.lastName}<span class="fh5co-border"></span></h3>
                                            <h2 class="fh5co-press-title years">12 років</h2>
                                            <p>${c.description}</p>
                                            <a href="/child?id=${c.id}" class="btn btn-primary btn-sm">Дізнатися більше</a>
                                        </div>

                                    </div>
                                </div>
</c:forEach>

                            </div>
                            <center>

                    <div>
                        <ul class="pagination to-animate">
                            <li class="previous">
                                <a href="#fakelink" class="fui-arrow-left">Попередня</a>
                            </li>
                            <li class="active"><a href="#fakelink">1</a></li>
                            <li class="hvr-sink"><a href="#fakelink">2</a></li>
                            <li class="hvr-sink"><a href="#fakelink">3</a></li>
                            <li class="hvr-sink"><a href="#fakelink">4</a></li>
                            <li class="hvr-sink"><a href="#fakelink">5</a></li>
                            <li class="hvr-sink"><a href="#fakelink">6</a></li>
                            <li class="hvr-sink"><a href="#fakelink">7</a></li>
                            <li class="hvr-sink"><a href="#fakelink">8</a></li>
                            <li class="next">
                                <a href="#fakelink" class="fui-arrow-right">Наступна</a>
                            </li>
                        </ul>
                    </div>
                </center>
                        </div>
                    </div>
                </section>
                <section id="section-linemove-4">
                    <div id="fh5co-press" data-section="press">
                        <div class="container">
                        <c:forEach items="${wishes}" var="item">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="fh5co-press-item to-animate">
                                        <div class="fh5co-press-img" style="background-image: url(${item.wish.category.pictureUrl})">
                                        </div>
                                        <div class="fh5co-press-text">
                                            <h3 class="h2 fh5co-press-title">${item.wish.category.name} для <a href="/child?id=${item.wish.child.id}">${item.wish.child.firstName}</a><span class="fh5co-border"></span></h3>
                                            <div class="gift-info">
                                                <h2 class="fh5co-press-title years"><strong>Від </strong>${item.user.firstName}</h2>
                                                <p><strong>Номер замовлення:</strong> ${item.parcelNumber }</p>
                                                <p><strong>Дата створення:</strong> ${item.dateOpened }</p>
                                            </div>
                                            <nav class="cl-effect-5">
                                                <a href="#" data-toggle="modal" data-target="#accept" class="btn btn-primary"><span data-hover="Обробити подарунок">Статус: ${item.presentStatus.status.presentStatusType }</span></a>
                                            </nav>
                                        </div>

                                    </div>
                                </div>
							</div>
							</c:forEach>
                            <center>

                                <div>
                                    <ul class="pagination to-animate">
                                        <li class="previous">
                                            <a href="#fakelink" class="fui-arrow-left">Попередня</a>
                                        </li>
                                        <li class="active"><a href="#fakelink">1</a></li>
                                        <li class="hvr-sink"><a href="#fakelink">2</a></li>
                                        <li class="hvr-sink"><a href="#fakelink">3</a></li>
                                        <li class="hvr-sink"><a href="#fakelink">4</a></li>
                                        <li class="hvr-sink"><a href="#fakelink">5</a></li>
                                        <li class="hvr-sink"><a href="#fakelink">6</a></li>
                                        <li class="hvr-sink"><a href="#fakelink">7</a></li>
                                        <li class="hvr-sink"><a href="#fakelink">8</a></li>
                                        <li class="next">
                                            <a href="#fakelink" class="fui-arrow-right">Наступна</a>
                                        </li>
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
                <form action="" method="POST">
                    <button class="btn btn-default" data-toggle="modal" data-target="#del-house">Видалити будинок</button>
                    <input name="name" type="text" id="title" placeholder="Назва" />
                    <textarea name="description" id="description" placeholder="Опис"></textarea>
                    <input name="city" type="text" id="address" placeholder="Місто" />
                    <input name="street" type="text" id="address" placeholder="Вулиця" />
                    <input name="number" type="text" id="address" placeholder="Номер дому" />
                    <input name="" type="text" id="pic" placeholder="URL фото будинку" />
                    <button type="button" class="btn-sub" data-dismiss="modal">Зберегти</button>
                </form>
                </div>
                <div class="modal-footer">
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
                        <nav class="cl-effect-5">
                            <a href="#" data-dismiss="modal" class="btn btn-primary yes"><span data-hover="Так">Так</span></a>
                            <a href="#" data-dismiss="modal" class="btn btn-primary no"><span data-hover="Ні">Ні</span></a>
                        </nav>
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
                        <nav class="cl-effect-5">
                            <a href="#" data-dismiss="modal" class="btn btn-primary yes"><span data-hover="Підтвердити">Підтвердити</span></a>
                            <a href="#" data-dismiss="modal" class="btn btn-primary no"><span data-hover="Скасувати">Скасувати</span></a>
                        </nav>
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
                <form:form method="POST" modelAttribute="child"
					action="/house/${house.id }/newchild">
                <div class="modal-body">
                <h1>hhhh ${house.id }</h1>
                   <form:input path="firstName" type="text" id="firstname" placeholder="Ім'я" />
                    <form:input path="lastName" type="text" id="lastname" placeholder="Прізвище" />
                    <form:textarea path="description" id="description" placeholder="Опис"></form:textarea>
                    <label>Дата народження</label>
                    <form:input path="birthDate" type="date" id="birth"/>
                    <form:input path="sex" type="text" id="sex" value="3"/>
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
                    <p class="copyright text-center">&copy; KMA 2017<br> Children web-project by <a href="#" target="_blank">Natalia, Julia, Oleksii</a></p>
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