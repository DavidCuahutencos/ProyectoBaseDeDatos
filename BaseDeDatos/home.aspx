<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BaseDeDatos.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">

    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: url('Cerro-Viejo.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        #divContainer {
            width: 250px;
            height: auto;
            margin: auto;
            padding: 20px;
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            background-color: rgba(255, 255, 255, 0.1);
            text-align: center;
            margin-top: 10vh;
            backdrop-filter: blur(10px);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        #title {
            font-size: 24px;
            color: white;
            font-weight: normal;
            margin-bottom: 10px;
            text-align: center;
            letter-spacing: 5px;
        }

        #btnConectar,
        #Inicio {
            background-color: #0487D9;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            margin-top: 10px;
            font-family: 'Roboto', sans-serif;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divContainer">
            <div id="title">ESTABLECER CONEXIÓN</div>
            <p>
                <asp:Button ID="btnConectar" runat="server" Text="Conectar" OnClick="btnConectar_Click" />
            </p>
            <hr style="border-top: solid white; border-top-width: 0.1px; width: 80%; margin: 10px auto;">
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" style="color: white;"></asp:Label>
            <br />
            <asp:Button ID="Inicio" runat="server" OnClick="Inicio_Click" Text="Ingresar" Visible="False" />
        </div>
    </form>
</body>
</html>
