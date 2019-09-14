(function()
{

    /* jQuery(document).ready ejecuta la función definida dentro cuando la página web ya se terminó de cargar,
        lo que garantiza que todos los elementos de la página (botones, <div>, <a>, y lo que sea por ahí pa
        allá, ya se cargaron y por lo tanto se pueden manipular por js */

    jQuery(document).ready(
        
        function() {

            var headerContainer = jQuery("#header_main .av-logo-container .inner-container");
                headerContainer.append("<form action=\"/\" id=\"searchform\" method=\"get\" class=\"\">" + 
                "<div><input style=\"background:#507295\" type=\"submit\" value=\"\ue803\" id=\"searchsubmit\" class=\"button avia-font-entypo-fontello\">" +
                "<input  style=\"min-width: 250px;\" type=\"text\" id=\"s\" name=\"s\" value=\"\" placeholder=\"Search\"></div></form>");

            // Esto es para ejecutar el código de adentro en la página home solamente. Fíjense en el código html
            // que genera wordpress que a cada página, en el elemento body, le pone una clase que la distingue.
            // En el caso de home es la clase "home", en otras páginas es el número del post donde esa página se
            // guardó en la DB (ejemplo: "page-id-646").

            if ( jQuery('body').hasClass("home")) {

                equalizeProductHeights("#av_section_4");

                jQuery(window).resize(function() {
                    equalizeProductHeights("av_section_4");
                });
            }
        }
    );

    function equalizeProductHeights (selector){
        var full_selector = selector + " .product .inner_product_header_cell";
        var all =jQuery(full_selector).map(function(){
            return jQuery(this).outerHeight();
        }).toArray();
        jQuery(full_selector).height(Math.max.apply(Math, all));
    }

})();