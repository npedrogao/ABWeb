function lockUnlockField(cmbValue, cmbId, txtId) {
    var cmbFieldID = "#" + cmbId;
    var txtField = "#" + txtId;

    $(cmbFieldID).change(function () {
        if (cmbValue == $(cmbFieldID).val()) {
            $(txtField).removeAttr('disabled');
        } else {
            $(txtField).attr('disabled', 'disabled');
        }
    });
}