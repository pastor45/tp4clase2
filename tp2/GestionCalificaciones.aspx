<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionCalificaciones.aspx.cs" Inherits="tp2.GestionCalificaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menu</title>
<style>
    /* Estilo para el cuerpo de la página */
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

/* Estilo para el contenedor principal */
div {
    text-align: center;
    margin-top: 100px;
}

/* Estilo para los enlaces convertidos en botones */
a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    margin: 10px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

/* Cambiar color de fondo al pasar el cursor sobre los botones */
a:hover {
    background-color: #0056b3;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CargarAlumno.aspx">Cargar Alumno</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/VerCalificaciones.aspx">Ver Calificaciones</asp:HyperLink>
        </div>
    </form>
</body>
</html>
