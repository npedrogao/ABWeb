function TestMethod() {
    //$("#txtQMAXREN").focus();

    //Event.observe(window, 'load', function () {
    //    $("#txtQMAXREN").focus();
    //});

    $(document).keydown(function (e) {
        
        e.preventDefault();
        alert(String.fromCharCode(e.keyCode));
    });
}