<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Кабінет user</title>
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
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/tabsuser.css'/>" />
    <link rel="stylesheet" href="<c:url value='/static/css/usertab.css'/>">

</head>
<body>

<c:set scope="page" value="anonymousUser" var="anon"/>

<script type="text/javascript">
window.fbAsyncInit = function() {
    FB.init({
      appId      : '796463480514850',
      cookie     : true,
      xfbml      : true,
      version    : 'v2.8'
    });
    FB.AppEvents.logPageView();   
  };
  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
 <div class="usertab">
        <div class="img-border"></div>
        <div class="userpic"></div>
        <center>
        <div class="gifts-info"><div class="centered"><i class="fa fa-gift"></i><span>&nbsp;&nbsp;&nbsp;200 подарунків</span></div></div>
            </center>
        <ul class="btns">
        <li><a href="/all">Діти</a></li>
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
                    <li><a href="#section-linemove-2" class="icon fa fa-user"><span>Акаунт</span></a></li>
                    <li><a href="#section-linemove-3" class="icon fa fa-gift"><span>Мої подарунки</span></a></li>
                    <li></li>
                </ul>
            </nav>
            <div class="content-wrap">
                <section id="section-linemove-1"></section>
                <section id="section-linemove-2">
                    <img class="back-house" src="<c:url value='/static/images/child-back.png'/>" />
                    <div class="row">
                        <div class="col-md-4">
                            <div class="halo hvr-bounce-in"></div>
                            <div class="user-img to-animate"></div>
                        </div>
                        <div class="col-md-6 section-heading-main text-center">
                            <div>
                                <h2 class="single-animate animate-press-1">${loggedinuser }</h2>
                                <div class="child-info">
                                    <div>220 подарунків</div>
                                </div>
                                <div class="share">
                                    <p>Розкажи про свої подарунки друзям!</p>
                                    <div class="social">
                                        <a href="https://facebook.com/ondrej.p.barta" class="link facebook" target="_parent"><span class="fa fa-facebook-square"></span></a>
                                    </div>
                                </div>
                                <button style="margin-top: 20px" class="btn btn-primary hvr-grow to-animate" data-toggle="modal" data-target="#edit-user">Редагувати</button>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="section-linemove-3">
                    <div id="fh5co-press" data-section="press">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="fh5co-press-item to-animate">
                                        <div class="fh5co-press-img" style="background-image: url(http://www.pravsworld.com/wp-content/uploads/2013/12/Child-Smile-e1402671131894.jpg)">
                                        </div>
                                        <div class="fh5co-press-text">
                                            <h3 class="h2 fh5co-press-title">Іграшка для <a href="#linktochild">Вася</a><span class="fh5co-border"></span></h3>
                                            <div class="gift-info">
                                                <h2 class="fh5co-press-title years">Дитбудинок "Сонечко"</h2>
                                                <p><strong>Номер замовлення:</strong> 4892348934</p>
                                                <p><strong>Дата створення:</strong> 12-12-2016</p>
                                            </div>
                                            <nav class="cl-effect-5">
                                                <a href="#" data-toggle="modal" data-target="#cancel" class="btn btn-primary"><span data-hover="Скасувати">Статус: заплановано</span></a>
                                            </nav>
                                        </div>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="fh5co-press-item to-animate">
                                        <div class="fh5co-press-img" style="background-image: url(https://www.barnardos.org.uk/how-to-adopt-a-child-in-scotland-top-banner.jpg)">
                                        </div>
                                        <div class="fh5co-press-text">
                                            <h3 class="h2 fh5co-press-title">Катя <span class="fh5co-border"></span></h3>
                                            <h2 class="fh5co-press-title years">10 років</h2>
                                            <p>Любить малювати</p>
                                            <a href="#" class="btn btn-primary btn-sm">Дізнатися більше</a>
                                        </div>
                                    </div>
                                </div>
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
                <section id="section-linemove-4"></section>
            </div>
        </div>
    </section>

    <div id="cancel" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Скасувати запланований подарунок</h4>
                </div>
                <div class="modal-body">
                    <p>Ви впевнені, що більше не плануєте цей подарунок?</p>
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
    
    <div id="edit-user" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Редагувати інформацію</h4>
                </div>
                <form:form method="POST" modelAttribute="updateUser"
					action="updateUser">
                <div class="modal-body">
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                <form:input path="firstName" type="text" id="fn" placeholder="Ім'я" />
=======
                 <form:input path="firstName" type="text" id="fn" placeholder="Ім'я" />
>>>>>>> master
=======
                 <form:input path="firstName" type="text" id="fn" placeholder="Ім'я" />
>>>>>>> master
=======
                 <form:input path="firstName" type="text" id="fn" placeholder="Ім'я" />
>>>>>>> master
                     <form:input path="lastName" type="text" id="ln" placeholder="Прізвище" />
                     <form:input path="email" type="text" id="email" placeholder="E-mail" />
                     <form:input path="ssoId" type="text" id="sso" placeholder="Логін" />
                     <form:input path="password" type="password" id="pass" placeholder="Новий пароль" />
<<<<<<< HEAD
=======
                    <form:input path="photoUrl" type="text" id="av" placeholder="URL аватарки" />
                    
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> master
                     
                    
                    
                </div>
                <div class="modal-footer">
                   <input class="btn-submit" type="submit" value="Зберегти">
                </div>
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                </form:form>
=======
                </form:form> 
>>>>>>> master
=======
                </form:form> 
>>>>>>> master
=======
                </form:form> 
>>>>>>> master
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
    $(document).ready(function() {
        $(".facebook").click(function() {
            FB.ui({method: 'share', href: 'https://developers.facebook.com/docs/'
            }, function(response) {
                console.log(response);
            });
        });
    });
        (function() {
            [].slice.call(document.querySelectorAll('.tabs')).forEach(function(el) {
                new CBPFWTabs(el);
            });
        })();
    </script>

</body>
</html>