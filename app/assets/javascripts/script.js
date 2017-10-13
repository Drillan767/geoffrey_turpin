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

    var datepicker = $('.datepicker');

    datepicker.datepicker({
        format: 'dd/mm/yyyy',
        daysMin: ['Di', 'Lu', 'Ma', 'Me', 'Je', 'Ve', 'Sa'],
        monthsShort: ['Janvier', 'Fevrier', 'Mars',
            'Avril', 'Mai', 'Juin',
            'Juillet', 'Aout', 'Septembre',
            'Octobre', 'Novembre', 'Decembre']
    });

    $('.if-deadline').on('click', function() {
       if(datepicker.prop('disabled')) {
           console.log('ouais');
           datepicker.prop('disabled', false);
       } else {
           datepicker.prop('disabled', true);
       }
    });

    if($('body').is('.admin_devis, .status')) {
        $('#status').DataTable(
            {
                "oLanguage": {
                    "sProcessing":     "Traitement en cours...",
                    "sSearch":         "Rechercher :",
                    "sLengthMenu":     "Afficher _MENU_ éléments",
                    "sInfo":           "Affichage de l'élément _START_ à _END_ sur _TOTAL_ éléments",
                    "sInfoEmpty":      "Affichage de l'élément 0 à 0 sur 0 élément",
                    "sInfoFiltered":   "(filtré de _MAX_ éléments au total)",
                    "sInfoPostFix":    "",
                    "sLoadingRecords": "Chargement en cours...",
                    "sZeroRecords":    "Aucun élément à afficher",
                    "sEmptyTable":     "Aucune donnée disponible dans le tableau",
                    "oPaginate": {
                        "sFirst": "Premier",
                        "sPrevious": "Précédent",
                        "sNext": "Suivant",
                        "sLast": "Dernier"
                    }
                }
            }
        );
    }

    else if($('body').is('.admin_devis, .show')) {
        $('#confirmer').on('click', function(e) {
            e.preventDefault();
            $('#update').modal('toggle');
        })
    }
});