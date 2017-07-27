function fLookupCmbOnChange(maxLength, txtID, cmbID) {
    //text change
    var cmbFieldID = "#" + cmbID;
    var txtField = $("#" + txtID);

    if (typeof txtField !== "undefined") {
        txtField.on('input', function () {

            if (txtField.val().length <= parseInt(maxLength)) {
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
                txtField.val($(cmbFieldID + " option:selected").text());
            });
    }
}