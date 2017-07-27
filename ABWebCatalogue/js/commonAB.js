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