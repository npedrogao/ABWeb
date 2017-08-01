function CustodiaRulesSS(listener, target) {
    $("#" + listener).change(function () {
        var aux = $("#" + listener).val();
        if (aux === "D" || aux === "C") {
            $("#" + target).val("S").change();
        } else {
            $("#" + target).val("N").change();
        }
    })
};

function CustodiaRulesSN(listener, target) {
    $("#" + listener).change(function () {
        var aux = $("#" + listener).val();
        if (aux === "D") {
            $("#" + target).val("S").change();
        } else {
            $("#" + target).val("N").change();
        }
    })
};

function CustodiaRulesTwoList(listener1, listener2, target) {
    $("#" + listener1).change(function () {
        var value1 = $("#" + listener1).val();
        var value2 = $("#" + listener2).val();
        if ((value1 === "D" || value1 === "C") && value2 === "S") {
            $("#" + target).val("S").change();
        } else {
            $("#" + target).val("N").change();
        }
    })
};

function CustodiaRulesTwoListComplex(listener1, listener2, target) {
    $("#" + listener1).change(function () {
        var value1 = $("#" + listener1).val();
        var value2 = $("#" + listener2).val();
        if (value1 === "D" && value2 === "S") {
            $("#" + target).val("S").change();
        } else {
            $("#" + target).val("N").change();
        }
    })
};