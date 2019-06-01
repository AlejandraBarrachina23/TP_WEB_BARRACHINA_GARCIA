
function mostrar() {

    alert("Funcion mostar()");
}

function ValidarTextoBoxVacio(){

    var valor = document.getElementById('<%=tboxNombre.ClientID%>').value;
    if (valor.value.length == 0) {

        alert("mal");
        return false;
    }

    else {

        alert("bien");
        return true;
    }
}