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
        "<ul><li>Eridan, documentary with the Lumière Lyon 2 University, short movie by Vincent Turpin</li></ul>"
    );

});

$("#b2015").on("click", function(){
    $("p.selected").not(this).removeClass("selected");
    $("p.detceles").removeClass("detceles");
    $(this).addClass("selected");

    $(".biography-desc").empty().append(
        "<h3>2015</h3>" +
        "<ul>" +
        "<li>La tombe du Typhon, videogame created by Emile Cohl's students (Lyon)</li>"+
        "<li>Palingénésie, created for choir, clarinet and classical guitar, inspired by St Dominic and St " +
        "Francis, preserving the world from the Christ's wrath, by Pierre-Paul Rubens, at the Musée des Beaux-Arts in Lyon</li>" +
        "<li>Stuntman, animated short by ARIES 3D's students (Lyon), in collaboration with Samy Qoraiche</li>" +
        "<li>Dying Moon, videogame realized by Emile Cohl's students (Lyon), in collaboration with Samy Qoraiche </li>" +
        "<li>OE, short film actors directed by DUCCI2's students in Lyon 2</li>"+
        "</ul>"

    );

});

$("#soon").on("click", function(){
    $("p.selected").not(this).removeClass("selected");
    $("p.detceles").removeClass("detceles");
    $(this).addClass("selected");

    $(".biography-desc").empty().append(
        "<h3>Soon</h3>" +
        "<p>Many projects including actor films, videogames, and animation films</p>"

    );

});

//Partie Basse

$("#b2003").on("click", function(){
    $("p.selected").removeClass("selected");
    $("p.detceles").not(this).removeClass("detceles");
    $(this).addClass("detceles");

    $(".biography-desc").empty().append(
        "<h3>2003</h3>" +
        "<ul><li>Private Projection, short film by Vincent Turpin</li></ul>"

    );

});


$("#b2011").on("click", function(){
    $("p.selected").removeClass("selected");
    $("p.detceles").not(this).removeClass("detceles");
    $(this).addClass("detceles");

    $(".biography-desc").empty().append(
        "<h3>2011</h3>" +
        "<ul><li>Avec les Yeux, fiction with the Lumiere Lyon 2 university, short film by Vincent Turpin</li></ul>"

    );

});

$("#b2016").on("click", function(){
    $("p.selected").removeClass("selected");
    $("p.detceles").not(this).removeClass("detceles");
    $(this).addClass("detceles");

    $(".biography-desc").empty().append(
        "<h3>2016</h3>" +
        "<ul>" +
        "<li>La Horde, action / strategy videogame freely based on Alain Dmamasio's \"The Windwalkers\""+
        "<li>III, short actors film directed by Ingrid Franchi</li>"  +
        "<li>Calice, theatrical improvisation championship by Royal Gambas (Lyon)</li>" +

        "<li>Webimatics, motion design for the Lyon 1 Science faculty, directed by Anaïs Gaudioz</li>" +
        "<li>Web book WCK Production, website WCK Production's introduction video </li>" +
        "<li>And more to come!</li>" +
        "</ul>"

    );

});