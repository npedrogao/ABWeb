function changeTipoRev(cmbtipo, txtRev, setValue) {

    var cmb = "#" + cmbtipo;
    var txt = "#" + txtRev;

    $(cmb).change(function () {
        if ($(cmb).val() == 'R') {
            $(txt).val(setValue);
            $(txt).attr('disabled', 'disabled');
        }
        else
        {
            $(txt).val('');
            $(txt).removeAttr('disabled');
        }
    });

}

