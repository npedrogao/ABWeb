changeCombo(function (classe, copybook) {
                $(classe).change(function () {
                var aux = $(classe).val();
                if (aux === "C" || aux === "D") {
                    $(copybook).val("N").change();
                }
           });
});