<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="springForm"%>
<html class="no-js">

<head>
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

    <link rel="stylesheet" href="<c:url value='/static/css/style.css'/>">
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
                    <a class="navbar-brand" href="index.html">Children</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="#" data-nav-section="home"><span>Головна</span></a></li>
                        <li><a href="#" data-nav-section="about"><span>Про нас</span></a></li>
                        <li><a href="#" data-nav-section="testimonials"><span>Як працює</span></a></li>
                        <li><a href="#" data-nav-section="press"><span>Діти</span></a></li>
                        <c:if test="${loggedinuser eq anon}"><li><a href="/login" class="login-btn hvr-reveal"><span>Увійти</span></a></li></c:if>
                        <c:if test="${loggedinuser ne anon}"><li><a id="user-nav"><i class="fa fa-user-circle-o"></i></a></li></c:if>

                    </ul>
                </div>
            </nav>
        </div>
    </header>

    <div id="slider" data-section="home">
        <div class="owl-carousel owl-carousel-fullwidth">
            <div class="item" style="background-image:url(<c:url value='/static/images/slide_1.png'/>)">
                <div class="container" style="position: relative;">
                    <div class="row">
                        <div class="col-md-7 col-sm-7">
                            <div class="fh5co-owl-text-wrap">
                                <div class="fh5co-owl-text">
                                    <h1 class="fh5co-lead to-animate">Разом ми можемо допомогти!</h1>
                                    <h2 class="fh5co-sub-lead to-animate">Не будь байдужим<br> Поділися частинкою радості з тими, хто її потребує</h2>
                                    <p class="to-animate-2"><a href="all" class="btn btn-primary btn-lg">Подарувати мрію</a></p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="item" style='background-color:#b39edc;'/>">
                <div class="overlay"></div>
                <div class="container" style="position: relative;">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="fh5co-owl-text-wrap">
                                <div class="fh5co-owl-text">
                                    <iframe style="margin-left:-280px; margin-top:50px;" width="1280" height="720" src="https://www.youtube.com/embed/YupP_qDH1IY" frameborder="0" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item" style="background-image:url(<c:url value='/static/images/donate.png'/>)">
                <div class="container" style="position: relative;">
                    <div class="row">
                        <div class="col-md-7 col-sm-7">
                            <div class="fh5co-owl-text-wrap">
                                <div class="fh5co-owl-text">
                                    <h1 class="fh5co-lead to-animate">Зацікавився?</h1>
                                    <p class="to-animate-2"><a href="registration" class="btn btn-primary btn-lg">Приєднуйся!</a></p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            

        </div>
    </div>

    <div id="fh5co-about-us" data-section="about">
        <div class="container">
            <div class="row row-bottom-padded-lg" id="about-us">
                <div class="col-md-12 section-heading text-center">
                
                    <h2 class="to-animate">Про нас</h2>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 to-animate">
                            <h3>Подпись</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 to-animate">
                    <img src="<c:url value='/static/images/img_1.jpg'/>" class="img-responsive img-rounded">
                </div>
                <div class="col-md-4 to-animate">
                    <h2>Зачем мы это сделали</h2>
                    <p>типа много текста, зачем мы это делали</p>
                    <p><a href="https://github.com/natalya118/Children_New" class="btn btn-primary">Наша команда</a></p>
                </div>
            </div>
            <div class="row" id="team">
                <div class="col-md-12 section-heading text-center to-animate">
                    <h2>Наша команда</h2>
                </div>
                <div class="col-md-12">
                    <div class="row row-bottom-padded-lg">
                        <div class="col-md-4 text-center to-animate">
                            <div class="person">
                                <img src="http://i.imgur.com/AliJoXr.gif" class="img-responsive img-rounded" alt="Person">
                                <h3 class="name">Наталія Дранчук</h3>
                                <div class="position">Роль</div>
                                <p>Подпись</p>
                            </div>
                        </div>
                        <div class="col-md-4 text-center to-animate">
                            <div class="person">
                                <img src="http://data.whicdn.com/images/124857899/original.gif" class="img-responsive img-rounded" alt="Person">
                                <h3 class="name">Юлія Подпругіна</h3>
                                <div class="position">Роль</div>
                                <p>Подпись</p>
                            </div>
                        </div>
                        <div class="col-md-4 text-center to-animate">
                            <div class="person">
                                <img src="https://s-media-cache-ak0.pinimg.com/originals/7a/74/15/7a7415cff43a866092668e8c05f1b27e.gif" class="img-responsive img-rounded" alt="Person">
                                <h3 class="name">Олексій Ретізник</h3>
                                <div class="position">Роль</div>
                                <p>Подпись</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="fh5co-testimonials" data-section="testimonials">
        <div class="container">
            <div class="row">
                <div class="col-md-12 section-heading text-center">
                    <h2 class="to-animate">Як працює наш сервіс?</h2>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 subtext to-animate">
                            <h3>Some text</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="box-testimony to-animate">
                            <img class="hvr-bounce-in" src="<c:url value='/static/images/girl.svg'/>"/>
                        <div class="circle hvr-bounce-in"></div>
                        <center>
                        <h2>Обирай дитину</h2>
                        </center>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="box-testimony to-animate">
                            <img class="hvr-bounce-in" src="<c:url value='/static/images/gift.svg'/>"/>
                         <div class="circle hvr-bounce-in"></div>
                        <center>
                        <h2>Допомагай</h2>
                        </center>
                        </div>


                </div>
                <div class="col-md-4">
                    <div class="box-testimony to-animate">
                        <img class="hvr-bounce-in" src="<c:url value='/static/images/pay-per-click.svg'/>"/>
                         <div class="circle hvr-bounce-in"></div>
                        <center>
                        <h2>Отримуй бонуси</h2>
                            </center>
                    </div>

                </div>
            </div>
        </div>
    </div>
    
        <div id="fh5co-press" data-section="press">
        <div class="container">
            <div class="row">
                <div class="col-md-12 section-heading text-center">
                    <h2 class="single-animate animate-press-1">Діти</h2>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 subtext single-animate animate-press-2">
                            <h3>Оберіть дитину, якій бажаєте допомогти</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
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
					<a href="all" class="btn btn-primary allchildren">Усі діти</a>
				</center>

            </div>
        </div>
    </div>
    
        <div id="fh5co-applic">
        <div class="container">
            <div class="row">
                <div class="col-md-12 section-heading text-center">
                    <h2 class="to-animate">Реєструйте свій будинок</h2>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 subtext to-animate">
                            <h3>Хочете допомогти дітям зі свого будинку? Відправте нам заявку на його реєстрацію!</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <center>
                    <button data-toggle="modal" data-target="#applic" class="btn btn-default">Заповнити заявку</button>
                </center>
            </div>
        </div>
    </div>
    
    <div id="applic" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Заявка на реєстрацію будинка</h4>
                </div>
                <springForm:form method="POST" modelAttribute="request"
								action="addRequest">
                <div class="modal-body">
                    <springForm:input path="firstName" type="text" id="fname" placeholder="Ім'я" />
                    <springForm:input path="lastName" type="text" id="lname" placeholder="Прізвище" />
                    <springForm:input path="ssoId" type="text" id="login" placeholder="Логін" />
                    <springForm:input path="password" type="password" id="password" placeholder="Пароль" />
                    <springForm:input path="email" type="text" id="email" placeholder="E-mail" />
                    <springForm:input path="name" type="text" id="title" placeholder="Назва" />
                    <springForm:textarea path="description" id="description" placeholder="Опис"></springForm:textarea>
                    <springForm:input path="city" type="text" id="address" placeholder="Місто" />
                    <springForm:input path="street" type="text" id="address" placeholder="Вулиця" />
                    <springForm:input path="number" type="text" id="address" placeholder="Номер" />
                    <springForm:input path="photoUrl" type="text" id="pic" placeholder="URL фото будинку" />
                </div>
                <div class="modal-footer">
                <input class="btn-submit" type="submit" value="Register">
                </div>
                </springForm:form>
            </div>

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

    <c:if test="${not empty message}">
    <div class="modal fade" id="Request_Status" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">REQUEST PROCESSING</h4>
                </div>
                <div class="modal-body">
                	 ${message}
                </div>
            </div>

        </div>
    </div>
    </c:if>
    <script src="<c:url value='/static/js/jquery.min.js'/>"></script>
    <script src="<c:url value='/static/js/main.js'/>"></script>
    <script src="<c:url value='/static/js/jquery.easing.1.3.js'/>"></script>
    <script src="<c:url value='/static/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/static/js/jquery.waypoints.min.js'/>"></script>
    <script src="<c:url value='/static/js/owl.carousel.min.js'/>"></script>
    <script src="<c:url value='/static/js/jquery.style.switcher.js'/>"></script>
    <script src="<c:url value='/static/js/usertab.js'/>"></script>
    <script type="text/javascript">
'use strict';

var owlCrouselFeatureSlide = function() {
	
	var owl = $('.owl-carousel');

	owl.on('initialized.owl.carousel change.owl.carousel',function(elem){
		var current = elem.item.index;
		$(elem.target).find(".owl-item").eq(current).find(".to-animate").removeClass('fadeInUp animated');
		$(elem.target).find(".owl-item").eq(current).find(".to-animate-2").removeClass('fadeInUp animated');
	
	});
	owl.on('initialized.owl.carousel changed.owl.carousel',function(elem){
		setTimeout(function(){
			var current = elem.item.index;
			$(elem.target).find(".owl-item").eq(current).find(".to-animate").addClass('fadeInUp animated');
		}, 700);
		setTimeout(function(){
			var current = elem.item.index;
			$(elem.target).find(".owl-item").eq(current).find(".to-animate-2").addClass('fadeInUp animated');
		}, 900);
 	});
	owl.owlCarousel({
		items: 1,
	    loop: true,
	    margin: 0,
	    responsiveClass: true,
	    nav: true,
	    dots: true,
	    autoHeight: true,
	    smartSpeed: 500,
	    autoplay: true,
		autoplayTimeout: 5000,
		autoplayHoverPause: true,
	    navText: [	
	      "<i class='icon-arrow-left2 owl-direction'></i>",
	      "<i class='icon-arrow-right2 owl-direction'></i>"
     	]
	});

};



var contentWayPoint = function() {

	$('.animate-box').waypoint( function( direction ) {

		if( direction === 'down' && !$(this).hasClass('animated') ) {
		
			$(this.element).addClass('fadeInUp animated');
		
		}

	} , { offset: '75%' } );

};


var burgerMenu = function() {

	$('body').on('click', '.js-fh5co-nav-toggle', function(event){

		if ( $('#navbar').is(':visible') ) {
			$(this).removeClass('active');	
		} else {
			$(this).addClass('active');	
		}

		event.preventDefault();
		
	});

};



var clickMenu = function() {

	$('a:not([class="external"])').click(function(event){
		var section = $(this).data('nav-section'),
			navbar = $('#navbar');
	    $('html, body').animate({
	        scrollTop: $('[data-section="' + section + '"]').offset().top
	    }, 500);

	    if ( navbar.is(':visible')) {
	    	navbar.removeClass('in');
	    	navbar.attr('aria-expanded', 'false');
	    	$('.js-fh5co-nav-toggle').removeClass('active');
	    }

	    event.preventDefault();
	    return false;
	});

};

var navActive = function(section) {

	var $el = $('#navbar > ul');
	$el.find('li').removeClass('active');
	$el.each(function(){
		$(this).find('a[data-nav-section="'+section+'"]').closest('li').addClass('active');
	});

};
var navigationSection = function() {

	var $section = $('div[data-section]');
	
	$section.waypoint(function(direction) {
	  	if (direction === 'down') {
	    	navActive($(this.element).data('section'));
	    
	  	}
	}, {
	  	offset: '150px'
	});

	$section.waypoint(function(direction) {
	  	if (direction === 'up') {
	    	navActive($(this.element).data('section'));
	  	}
	}, {
	  	offset: function() { return -$(this.element).height() + 155; }
	});

};


var windowScroll = function() {
	var lastScrollTop = 0;

	$(window).scroll(function(event){

	   	var header = $('#fh5co-header'),
			scrlTop = $(this).scrollTop();

		if ( scrlTop > 500 && scrlTop <= 2000 ) {
			header.addClass('navbar-fixed-top fh5co-animated slideInDown');
		} else if ( scrlTop <= 500) {
			if ( header.hasClass('navbar-fixed-top') ) {
				header.addClass('navbar-fixed-top fh5co-animated slideOutUp');
				setTimeout(function(){
					header.removeClass('navbar-fixed-top fh5co-animated slideInDown slideOutUp');
				}, 100 );
			}
		} 
		
	});
};




var aboutAnimate = function() {

	if ( $('#about-us').length > 0 ) {	
		$('#about-us .to-animate').each(function( k ) {
			
			var el = $(this);
			
			setTimeout ( function () {
				el.addClass('fadeInUp animated');
			},  k * 200, 'easeInOutExpo' );
			
		});
	}

};
var aboutWayPoint = function() {

	if ( $('#about-us').length > 0 ) {
		$('#about-us').waypoint( function( direction ) {
									
			if( direction === 'down' && !$(this).hasClass('animated') ) {


				setTimeout(aboutAnimate, 200);

				
				$(this.element).addClass('animated');
					
			}
		} , { offset: '95%' } );
	}

};


var teamAnimate = function() {

	if ( $('#team').length > 0 ) {	
		$('#team .to-animate').each(function( k ) {
			
			var el = $(this);
			
			setTimeout ( function () {
				el.addClass('fadeInUp animated');
			},  k * 200, 'easeInOutExpo' );
			
		});
	}

};
var teamWayPoint = function() {

	if ( $('#team').length > 0 ) {
		$('#team').waypoint( function( direction ) {
									
			if( direction === 'down' && !$(this).hasClass('animated') ) {


				setTimeout(teamAnimate, 200);

				
				$(this.element).addClass('animated');
					
			}
		} , { offset: '95%' } );
	}

};



var testimonialsAnimate = function() {

	if ( $('#fh5co-testimonials').length > 0 ) {	
		$('#fh5co-testimonials .to-animate').each(function( k ) {
			
			var el = $(this);
			
			setTimeout ( function () {
				el.addClass('fadeInUp animated');
			},  k * 200, 'easeInOutExpo' );
			
		});
	}

};
var testimonialsWayPoint = function() {

	if ( $('#fh5co-testimonials').length > 0 ) {
		$('#fh5co-testimonials').waypoint( function( direction ) {
									
			
				setTimeout(testimonialsAnimate, 200);
				
				
				$(this.element).addClass('animated');
					
		
		} , { offset: '95%' } );
	}

};


var pressAnimate = function() {

	if ( $('#fh5co-press').length > 0 ) {	
		$('#fh5co-press .to-animate').each(function( k ) {
			
			var el = $(this);
			
			setTimeout ( function () {
				el.addClass('fadeInUp animated');
			},  k * 200, 'easeInOutExpo' );
			
		});
	}

};
var pressWayPoint = function() {

	if ( $('#fh5co-press').length > 0 ) {
		$('#fh5co-press').waypoint( function( direction ) {
									
				setTimeout(function(){
					$('.animate-press-1').addClass('animated fadeIn');
				}, 200);
				setTimeout(function(){
					$('.animate-press-2').addClass('animated fadeIn');
				}, 300);
				setTimeout(pressAnimate, 700);
				
				
				$(this.element).addClass('animated');
					
		
		} , { offset: '95%' } );
	}

};





$(function(){

	burgerMenu();
	owlCrouselFeatureSlide();
	clickMenu();
	windowScroll();
	navigationSection();

	aboutWayPoint();
	teamWayPoint();
	testimonialsWayPoint();
	pressWayPoint();
	if($("#Request_Status")!=null){
		console.log($("#Request_Status"));
		$("#Request_Status").modal('show');
	/*setTimeout(function(){
	    $("#Request_Status").modal('hide');
	}, 3000);*/
	}
});
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
</body>

</html>
