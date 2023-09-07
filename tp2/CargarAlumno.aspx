<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargarAlumno.aspx.cs" Inherits="tp2.CargarAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Carga de alumno</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        text-align: center;  
      }
      
      form {
        display: inline-block;
        background-color: #f2f2f2; 
        padding: 20px;
        border-radius: 10px;
      }
      
      label {
        font-weight: bold;
      }
      
      input[type="text"], select {
        padding: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
      }
      
      button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }
      
    </style>
    
</head>

<body>

  <form id="form1" runat="server">
  
    <div>
    
      <asp:Label ID="Label1" runat="server" Text="Cargar Alumno:"></asp:Label>
      
      <br /><br />
      
      <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
      <asp:TextBox runat="server" ID="Textbox1"></asp:TextBox>

      <br /><br />
      
      <asp:Label ID="Label3" runat="server" Text="Apellido:"></asp:Label>
      <asp:TextBox runat="server" ID="Textbox2"></asp:TextBox>

      <br /><br />
      
      <asp:Label ID="Label4" runat="server" Text="Materia:"></asp:Label>
      <asp:DropDownList runat="server" Width="200px" ID="Drop1">
        <asp:ListItem>Matematica</asp:ListItem>
        <asp:ListItem>Biologia</asp:ListItem>
        <asp:ListItem>Lengua</asp:ListItem>
        <asp:ListItem>Ingles</asp:ListItem>
      </asp:DropDownList>

      <br /><br />
      
      <asp:Label ID="Label5" runat="server" Text="Calificacion:"></asp:Label>
      <asp:DropDownList runat="server" ID="Drop2">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
      </asp:DropDownList>

      <br /><br />

      <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
      
      <br /><br />
      
      <asp:Button ID="Button2" runat="server" Text="Volver" OnClick="Button2_Click" />
      <asp:Button ID="Button1" runat="server" Text="Cargar" OnClick="Button1_Click" />
      
    </div>

  </form>
  
</body>
</html>