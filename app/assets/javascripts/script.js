$(document).ready(function() {
    //Script pour "Musique"
    $('.submenu').click(function () {

        var position = ($('.gauche').length>0) ? '100%' : '0%';
        if ($('.gauche').length>0)
            $('#wrapper').removeClass('gauche');
        else
            $('#wrapper').addClass('gauche');
        $('#wrapper').scrollTo({top:'0%', left: position}, 800);

        $('.submenu').removeClass("submenu-shown");
        $(this).addClass("submenu-shown");

    });

	$(window).resize(function () {
		resizePanel();
	});

	$(window).resize(function () {
		resizePanel();
	});

    //Script pour le header
    //Définir sur quelle page on est
    var currentURL = document.location.href;
    $('div.header-link.active').removeClass('active');
    activeLinks = $('div.header-link a').filter(function () {
        return this.href === currentURL;
    }).closest('div.header-link').addClass('active');

    //Effet de passage de la souris sur un lien
    $(".header-link").not(".active").mouseenter(function(){
        $(this).addClass("hover");
        $(this).parent().css("margin-top", "-3px")
    }).mouseleave(function(){
        $(this).removeClass("hover");
        $(this).parent().css("margin-top", "")
    });

    //Script pour "Musiques"

    $("#b2009").on("click", function(){
        $("p.selected").not(this).removeClass("selected");
        $(this).addClass("selected");

    });

	
});

function resizePanel() {

	width = $(window).width();
	height = $(window).height();

	mask_width = width * $('.item').length;
		
	$('#debug').html(width  + ' ' + height + ' ' + mask_width);
		
	$('#wrapper, .item').css({width: width, height: height});
	$('#mask').css({width: mask_width, height: height});
	$('#wrapper').scrollTo($('a.selected').attr('href'), 0);
		
}


