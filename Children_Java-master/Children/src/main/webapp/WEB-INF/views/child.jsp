<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${child.firstName} ${child.lastName}</title>
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
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/default.css'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/component.css'/>" />
    <link href="<c:url value='/static/css/imagehover.css'/>" rel="stylesheet" media="all">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/icons.css'/>" />
    <link href="http://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<c:url value='/static/dist/switchery.css'/>"/>
	<link rel="stylesheet" href="<c:url value='/static/dist/switchery.css'/>"/>
    <link rel="stylesheet" href="<c:url value='/static/css/style.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/style-chp.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/style-child.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/css/usertab.css'/>">
</head>
<body>
 <div class="usertab">
        <div class="img-border"></div>
        <div class="userpic"></div>
        <center>
        <div class="gifts-info"><div class="centered"><i class="fa fa-gift"></i><span>&nbsp;&nbsp;&nbsp;200 подарунків</span></div></div>
            </center>
        <ul class="btns">
        <li><a>Кабінет</a></li>
        <li><a>Вийти</a></li>
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
                        <li><a href="#"><span>Головна</span></a></li>
                        <li><a href="#" class="login-btn hvr-reveal"><span>Увійти</span></a></li>
                        <li><a id="user-nav"><i class="fa fa-user-circle-o"></i></a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
    <img class="babyback" src="<c:url value='/static/images/child-back.png'/>" />

    <div id="fh5co-press" data-section="press">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img class="child-photo to-animate" src="http://www.pravsworld.com/wp-content/uploads/2013/12/Child-Smile-e1402671131894.jpg" />
                </div>
                <div class="col-md-3 section-heading-main text-center">
                    <h2 class="single-animate animate-press-1">${child.firstName} ${child.lastName}</h2>
                    <div class="child-info">
                        <div>${age} років</div>
                        <div>${child.house.city}, ${child.house.name}</div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 subtext single-animate animate-press-2">
                            <div class="main clearfix">
								${child.description}
                            </div>
                        </div>
                    </div>
                    
                    <center>
                        <button class="btn btn-primary edit-btn hvr-grow" data-toggle="modal" data-target="#edit-child"><i class="fa fa-edit"></i><span>Редагувати</span></button>
                    </center>
                    <center>
                        <button class="add-child-btn btn btn-primary hvr-grow" data-toggle="modal" data-target="#add-gift"><i class="fa fa-plus"></i><span>Додати бажання</span></button>
                    </center>
                </div>
            </div>
        </div>
    </div>

    <div id="fh5co-wishes">
        <div class="row">
            <div class="col-md-12">
                <div id="myCarousel" class="carousel slide">
                    <div class="col-md-12 section-heading text-center">
                        <h2 class="single-animate animate-press-1">Бажання</h2>
                    </div>
                    <ol class="carousel-indicators">
                    </ol>
                    <div class="carousel-inner">
					<c:forEach items="${wishes}" var="set">
                        <div class="item">
                            <ul class="ch-grid">
                        <c:forEach items="${set}" var="item">
                                <li>
                                    <div class="ch-item ch-img-1" style='background-image: url(${item.category.pictureUrl});'>
                                        <div class="ch-info">
                                            <h3>${item.name }</h3>
                                            <a data-toggle="modal" data-target="#gift" class="hvr-grow btn btn-primary" onclick="{$('#wishId').val('${item.id}');}">Подарувати</a>
                                        </div>
                                    </div>
                                </li>
                        </c:forEach>
                            </ul>
                        </div>
					</c:forEach>
                    </div>
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                </div>
            </div>
        </div>
    </div>

    <div id="gift" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Здійснити мрію</h4>
                </div>
                <div class="modal-body container">
                    <center>
                        <div class="row">
                            <div class="wish-img col-md-6">
                            </div>
                            <div class="wish-info col-md-6">
                                <h2>Котя</h2>
                                <p id="from"><strong>від:</strong> user123</p>
                                <p id="for"><strong>для:</strong> Вася Іванов</p>
                                <p id="to"><strong>куди:</strong> дитбудинок "Сонечко"</p>
                            </div>
                        </div>
                    </center>
                    <div class="col-md-12 btn-book">
                        <center><button data-toggle="collapse" data-target="#booking" class="btn-sub">Забронювати</button></center>

                        <div id="booking" class="collapse">
                        <form action="/Children/completeWish" method="GET">
                            <div class="row"><div class="col-md-6">
                            <input name="parcelNumber" class="input-id" type="text" placeholder="Номер замовлення" id="order-id" />
                            <textarea name="letter" placeholder="Лист щастя" class="input-id" style="height:200px; padding-top:5px;"></textarea>
                            </div>
                            <div class="can-toggle demo-rebrand-1 col-md-4">
                            <input id="wishId" style="visibility:hidden" name="wishId">
                            <input style="visibility:hidden" name="userId" value="1">
                                <input name="prst" id="d" type="checkbox">
                                <label for="d">
                                    <div class="can-toggle__switch" data-checked="Відправлено" data-unchecked="Заплановано"></div>
                                </label>
                            </div></div>
                            <ol class="grid">
                                <li class="grid__item">
                                    <center>
                                        <button class="icobutton icobutton--unicorn">
							                 <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 504.124 504.124" style="enable-background:new 0 0 504.124 504.124;"  width="86px" height="86px" xml:space="preserve">
                                                <path style="fill:#DB5449;" d="M15.754,133.909l236.308,118.154L488.37,133.909v252.062L252.062,504.123L15.754,385.969V133.909z"/>
                                                 <path style="fill:#C54B42;" d="M15.754,157.538v73.649l235.52,115.397l237.095-115.791v-73.255L252.062,273.33L15.754,157.538z"/>
                                                 <path style="fill:#D05045;" d="M252.062,504.123V252.063L31.508,141.786H15.754v244.185L252.062,504.123z"/>
                                                 <path style="fill:#BB483E;" d="M15.754,157.538v73.649l235.52,115.397l0.788-0.394v-73.255v0.394L15.754,157.538z"/>
                                                 <path style="fill:#EB6258;" d="M0,125.638L252.062,0.001l252.062,125.637v16.542L252.062,267.815L0,142.573V125.638z"/>
                                                 <path style="fill:#EFEFEF;" d="M396.603,39.779c-8.271-14.966-25.994-24.025-46.868-24.025c-47.655,0-81.132,44.505-97.674,72.862 c-16.542-28.357-50.412-72.468-97.674-72.468c-30.326,0-51.988,18.511-51.988,43.717c0,44.898,49.231,74.043,148.086,74.043 s151.237-37.415,151.237-73.649C401.723,53.17,400.148,46.081,396.603,39.779z M164.628,88.223 c-11.028-7.483-14.966-15.754-14.966-21.268c0-6.695,6.302-11.815,15.36-11.815c21.268,0,38.203,27.963,47.655,47.262 C187.865,100.432,173.292,93.736,164.628,88.223z M339.495,88.223c-8.665,5.514-23.237,12.209-48.049,14.178 c9.058-19.298,25.994-47.262,47.655-47.262c9.058,0,15.36,5.12,15.36,11.815C354.462,72.469,350.523,80.739,339.495,88.223z"/>
                                                 <path style="fill:#E2574C;" d="M0,126.032l252.062,123.274l252.062-123.274v81.526l-252.85,123.274L0,207.558V126.032z"/>
                                                 <path style="fill:#EFEFEF;" d="M346.585,213.859v-9.058l-94.523-51.2l-94.523,51.2v9.058L94.524,186.29v-12.603l154.387-81.526 l3.151,1.575l3.151-1.575L409.6,173.293v12.603L346.585,213.859z"/>
                                                 <path style="fill:#DCDCDC;" d="M346.585,204.801v251.668l63.015-31.508V173.293L346.585,204.801z"/>
                                                 <path style="fill:#D1D1D1;" d="M94.523,425.354l63.015,31.508V205.195l-63.015-31.902C94.523,173.292,94.523,425.354,94.523,425.354 z"/>
                                            </svg>
						                  </button>
                                        <div class="subtext-gift hvr-bubble-float-top">Здійснити мрію!</div>
                                    </center>
                                </li>
                            </ol>
	                        </form>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Скасувати</button>
                </div>
            </div>

        </div>
    </div>
    
    
    <div id="edit-child" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Редагувати інформацію про дитину</h4>
                </div>
                <div class="modal-body">
                <form action="/Children/child_edit" method="GET">
                <input style="visibility:hidden" name="id" value="${child.id}"/>
                    <input type="text" id="firstname" placeholder="Ім'я" name="firstName"/>
                    <input type="text" id="lastname" placeholder="Прізвище" name="lastName" />
                    <textarea id="description" placeholder="Опис" name="description"></textarea>
                    <input type="text" id="photo" placeholder="URL фото" name="photo"/>
                    <label>Дата народження</label>
                    <input type="date" id="birth" name="birthDate" />
                    <select name="sex">
                    	<option value="2">Хлопчик</option>
						<option value="3">Дівчинка</option>
                    </select>
                    <input type="submit" class="btn-sub" value="Зберегти"/>
                </form>
                </div>
            </div>

        </div>
    </div>

    <div id="add-gift" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Додати бажання</h4>
                </div>
                <div class="modal-body">
                	 <form id="add-wish-form" action="addWishMyOwn" method="GET">
                        <input name="name" type="text" id="title-wish" placeholder="Назва" />
                        <textarea name="description" id="desc-wish" placeholder="Опис"></textarea>
                        <select name="categoryWish">
	                        <option value="" disabled selected>Оберіть категорію бажання</option>
                        	<c:forEach items="${categories}" var="c">
	                        <option value="${c.name }">${c.name }</option>
	                        
	                        </c:forEach>
                    	</select>
                    	<input style="display:none" name="childId" value="${child.id}">
                        <div class="sr"><input type="checkbox" class="srochno" /><label>Терміново потрібно</label></div>
                        <br/>
                        <input type="submit" class="btn-sub" value="Додати" />
                    </form>
                </div>
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
    <script src="<c:url value='/static/js/mo.min.js'/>"></script>
    <script src="<c:url value='/static/js/burst.js'/>"></script>
    <script src="<c:url value='/static/dist/switchery.js'/>"></script>
	<script src="http://malsup.github.com/jquery.form.js"></script> 
	<script src="<c:url value='/static/js/usertab.js'/>"></script>
    <script>
        $(document).ready(function() {
            $('#myCarousel').carousel({
                interval: 10000
            });
            var elem = document.querySelector('.srochno');
            var init = new Switchery(elem, {
                color: '#b39edc'
            });
            $('#add-wish-form').ajaxForm(function() {
                alert("Thank you for your comment!");
            });
            $($(".item")[0]).addClass('active');
        });
    </script>
	
</body>
</html>