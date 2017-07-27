function AccordionController(){


    $.each($.find('.accordion'), function (index, value) {

        var val = $(value);

        val.click(function () {
            var panel = val.parent().next();

            if (panel.hasClass('hidden')) {
                panel.removeClass('hidden');
                val.addClass("active");
            }
            else {
                panel.addClass('hidden');
                val.removeClass("active");
            }
        })
    });


    $("#CPH_btnOpenAll").on("click", function () {
        $(".row.hidden").each(function () {
            $(this).removeClass('hidden');
            $("a.accordion").each(function () {
                $(this).addClass("active");

            })
        });
    });


    $("#CPH_btnCloseAll").on("click", function () {
        $(".closeAccordion").each(function () {
            $(this).addClass('hidden');
            $("a.accordion").each(function () {
                $(this).removeClass("active");

            })
        });
    });
}