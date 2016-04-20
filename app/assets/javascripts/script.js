$(document).ready(function() {

    $(".hr").hide().animate({width: 'show'}, 1000);

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

});

//Script pour "Musiques"

//Partie Haute
//Lorsque l'on clique sur "2009"
$("#b2009").on("click", function(){
    //Toutes les balises <p> ayant pour classe "selected" à part celle
    // venant d'être cliquée perdent cette balise
    // (Oui jQuery fait les choses VITES)
    $("p.selected").not(this).removeClass("selected");
    //Et toutes les balises <p> de classe "detceles" perdent leur balises également
    $("p.detceles").removeClass("detceles");
    //La cate venant d'être cliquée gagne une classe selected
    $(this).addClass("selected");
    //On vide le contenu du bloc "biography-desc (s'il y avait d'autres choses avant), et on rajoute :
    $(".biography-desc").empty().append(
        //Ceci :
        "<h3>2009</h3>" +
        "<p>Ceci est l'année 2009. C'était chouette, vraiment. Y'a eu une canicule, je crois.</p>"
    );

});

$("#b2015").on("click", function(){
    $("p.selected").not(this).removeClass("selected");
    $("p.detceles").removeClass("detceles");
    $(this).addClass("selected");

    $(".biography-desc").empty().append(
        "<h3>2015</h3>" +
        "<p>Et sinon ça va vous ? Moi je me fais un poil chier en vrai.</p>"
    );

});

$("#soon").on("click", function(){
    $("p.selected").not(this).removeClass("selected");
    $("p.detceles").removeClass("detceles");
    $(this).addClass("selected");

    $(".biography-desc").empty().append(
        "<h3>Bientôt</h3>" +
        "<p>VOUS N'ETES PAS PREEEEEEEEETS !</p>"
    );

});

//Partie Basse

$("#b2003").on("click", function(){
    $("p.selected").removeClass("selected");
    $("p.detceles").not(this).removeClass("detceles");
    $(this).addClass("detceles");

    $(".biography-desc").empty().append(
        "<h3>2003</h3>" +
        "<p>Ceci est l'année 2003. C'était chouette, vraiment. Y'a eu une canicule, je crois.</p>"
    );

});


$("#b2011").on("click", function(){
    $("p.selected").removeClass("selected");
    $("p.detceles").not(this).removeClass("detceles");
    $(this).addClass("detceles");

    $(".biography-desc").empty().append(
        "<h3>2011</h3>" +
        "<p>Cette année là j'ai passé mon bac. Je l'ai eu au rattrapage. MDR.</p>"
    );

});

$("#b2016").on("click", function(){
    $("p.selected").removeClass("selected");
    $("p.detceles").not(this).removeClass("detceles");
    $(this).addClass("detceles");

    $(".biography-desc").empty().append(
        "<h3>2016</h3>" +
        "<p>Ceci est l'année 2009. C'était chouette, vraiment. Y'a eu une canicule, je crois.</p>"
    );

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


