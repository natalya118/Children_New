var navOpened = false;

$(document).ready(function(){
    $("#user-nav").click(function(){
        if(!navOpened){
            $(".usertab").animate({
                right: '0'
            });
            $(".navbar-right").animate({
                marginRight: '100px'
            });
            navOpened = true;
        }else{
             $(".usertab").animate({
                right: '-250px'
            });
            $(".navbar-right").animate({
                marginRight: '0px'
            });
            navOpened = false;
        }
    });
});