$(document).ready(function() {

    $(".hr").hide().animate({width: 'show'}, 1000);

    //Script pour "Musique"
    $('.submenu').click(function () {

        var position = ($('.gauche').length>0) ? '100%' : '0%';
        if ($('.gauche').length>0)
            $('#wrapper').removeClass('gauche');
        else
            $('#wrapper').addClass('gauche');

        $('.submenu').removeClass("submenu-shown");
        $(this).addClass("submenu-shown");

    });


    //Script pour le header
    //Définir sur quelle page on est
    var currentURL = document.location.href;
    $('div.header-link.current').removeClass('current');
    activeLinks = $('div.header-link a').filter(function () {
        return this.href === currentURL;
    }).closest('div.header-link').addClass('current');

    //Effet de passage de la souris sur un lien
    $(".header-link").not(".current").mouseenter(function(){
        $(this).addClass("hover");
        $(this).parent().css("margin-top", "-3px")
    }).mouseleave(function(){
        $(this).removeClass("hover");
        $(this).parent().css("margin-top", "")
    });

});


