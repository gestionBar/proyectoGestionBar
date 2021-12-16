function multi(){
    var total = 1;
    var change= false; //
    $(".monto").each(function(){
        if (!isNaN(parseFloat($(this).val()))) {
            change= true;
            total *= parseFloat($(this).val());
        }
    });
    // Si se modifico el valor , retornamos la multiplicación
    // caso contrario 0
    total = (change)? total:0;
    document.getElementById('Costo').innerHTML = total;
}