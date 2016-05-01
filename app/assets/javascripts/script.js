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
        "<ul><li>Eridan, documentaire avec l'université Lumière Lyon 2, court métrage de Vincent Turpin</li></ul>"
    );

});

$("#b2015").on("click", function(){
    $("p.selected").not(this).removeClass("selected");
    $("p.detceles").removeClass("detceles");
    $(this).addClass("selected");

    $(".biography-desc").empty().append(
        "<h3>2015</h3>" +
        "<ul>" +
            "<li>La Tombe du Typhon, jeu vidéo réalisé par des élèves d'Emile Cohl (Lyon)</li>"+
            "<li>Palingénésie, composition pour choeur, clarinette et guitare classique inspiré de Saint Dominique et Saint " +
            "François préservant le monde de la colère du Christ de Pierre-Paul Rubens au musée des Beaux Arts de Lyon</li>" +
            "<li>Stuntman, court métrage d'animation par des élèves d'ARIES 3D (Lyon), collaboration avec Samy Qoraiche</li>" +
            "<li>Dying Moon, jeu vidéo réalisé par des élèves d'Emile Cohl (Lyon), en collaboration avec Samy Qoraiche</li>" +
            "<li>OE, court métrage d'acteurs réalisé par des élèves de DUCCI2 de Lyon2</li>"+
        "</ul>"

    );

});

$("#soon").on("click", function(){
    $("p.selected").not(this).removeClass("selected");
    $("p.detceles").removeClass("detceles");
    $(this).addClass("selected");

    $(".biography-desc").empty().append(
        "<h3>Bientôt</h3>" +
        "<p>De nombreux projets comprenant des films d'acteurs, des jeux vidéos et des films d'animation</p>"
    );

});

//Partie Basse

$("#b2003").on("click", function(){
    $("p.selected").removeClass("selected");
    $("p.detceles").not(this).removeClass("detceles");
    $(this).addClass("detceles");

    $(".biography-desc").empty().append(
        "<h3>2003</h3>" +
        "<ul><li>Projection Privée, court métrage de Vincent Turpin</li></ul>"
    );

});


$("#b2011").on("click", function(){
    $("p.selected").removeClass("selected");
    $("p.detceles").not(this).removeClass("detceles");
    $(this).addClass("detceles");

    $(".biography-desc").empty().append(
        "<h3>2011</h3>" +
        "<ul><li>Avec Les Yeux, fiction avec l'université Lumière Lyon 2, court métrage de Vincent Turpin</li></ul>"
    );

});

$("#b2016").on("click", function(){
    $("p.selected").removeClass("selected");
    $("p.detceles").not(this).removeClass("detceles");
    $(this).addClass("detceles");

    $(".biography-desc").empty().append(
        "<h3>2016</h3>" +
        "<ul>" +
            "<li>La Horde, jeu vidéo d'action / stratégie basé librement sur le Roman d'Alain Damasio \"La Horde du Contrevent\""+
            "<li>III, court métrage d'acteurs réalisé par Ingrid Franchi</li>"  +
            "<li>Calice, championnat d'improvisation théâtrale par Royal Gambas (Lyon)</li>" +
            "<li>Webimatics, motion design pour la faculté de Sciences de Lyon 1, réalisé par Anaïs Gaudioz</li>" +
            "<li>Web book WCK Production, vidéo d'introduction du site WCK Production</li>" +
            "<li>Et d'autres à venir !</li>" +
        "</ul>"

    );

});


