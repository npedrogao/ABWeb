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

function callServerSide(hiddenId, campo) {
    var hidden = "#" + hiddenId;

    $("input[id=" + campo + "]").keyup('input', function () {
        var length = parseInt($("input[id=" + campo + "]").attr("maxlength"));
        var valueLength = $("input[id=" + campo + "]").val().length;

        if (length === valueLength) {
            if ($(hidden).val().length === 0) {
                $(hidden).val(campo);
            } else {
                $(hidden).val($(hidden).val() + ", " + campo);
            }
            $("#form1").submit();
        }
    });
}
