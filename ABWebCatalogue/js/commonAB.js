function fLookupCmbOnChange( txtID, cmbID) {
    //text change
    var cmbFieldID = "#" + cmbID;
    var txtField = $("#" + txtID);

    if (typeof txtField !== "undefined") {
        txtField.keyup('input', function () {
            var maxLength = parseInt(txtField.attr('maxlength'));
            if (txtField.val().length <= maxLength) {
                var textToCompare = txtField.val().trim().toLocaleLowerCase();

                $(cmbFieldID + " option").each(function () {
                    if (textToCompare == $(this).val().toLocaleLowerCase()) {
                        $(cmbFieldID).val(textToCompare.toLocaleUpperCase());

                    }
                });
            }
        });

        //combo change
        if (typeof $(cmbFieldID) !== "undefined")
            $(cmbFieldID).change(function () {
                txtField.val($(cmbFieldID + " option:selected").val());
            });
    }
}

function fAccordionController() {


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