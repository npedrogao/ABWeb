function lockUnlockField(cmbValue, cmbId, txtId) {
    var cmbFieldID = "#" + cmbID;
    var txtField = "#" + txtID;

    $(cmbFieldID).change(function () {
        if (cmbValue == $(cmbFieldID).val()) {
            $(txtField).removeAttr('disabled');
        } else {
            $(txtField).attr('disabled', 'disabled');
        }
    });
}