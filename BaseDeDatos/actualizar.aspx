<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Actualizar.aspx.cs" Inherits="BaseDeDatos.Actualizar" %>

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

            #form1 {
    width: 420px;
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
    text-align: left;
    max-width: 1000px;


}
            #title {
    font-size: 24px; 
    color: white; 
    font-weight: normal;
    margin-bottom: 10px;
    text-align: center; 
        letter-spacing: 5px; 

}

        label {
            display: block;
            margin-bottom: 10px; 
                color: white; 

        }

        .textbox-container,
        .button-container {
            margin-bottom: 20px; 
        }
        .textbox-container input[type="text"] {
    width: 120px; 
    padding: 6px; 
    text-align: left; 
    background-color: rgba(255, 255, 255, 0.1); 
    border: 1px solid #ddd; 
    border-radius: 5px;
    color: white; 
    margin-left: 30px; 
}

.button-style {
    margin-left: 20px; 
}
        .textbox-container {
            display: flex;
            align-items: center;
        }

        
        label {
    display: block;
    margin-bottom: 5px;
    text-align: left; 
                margin-left: 40px; 

}
        .button-style {
    background-color: #0487D9;
    color: white;
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    border-radius: 25px;
    cursor: pointer;
    width: 100%;
    font-family: 'Roboto', sans-serif; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
            .button-container {
    text-align: center; 

            }
        .textbox-style {
            width: calc(100% - 22px); 
            padding: 8px; 
        }
                       #GridView1 {
    margin: auto;
    backdrop-filter: blur(5px) brightness(0.1); 
    border: 0px solid #ddd; 
    color: white; 
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);


}
             #LabelContainer {
        width: 400px;
        margin: auto;
        text-align: center;
        background-color: rgba(255, 255, 255, 0.1);
        border: 1px solid #ddd;
        border-radius: 5px;
        padding: 10px;
        margin-top: 20px; 
        display: none;
    }

    #Label1 {
        color: white;
    }

    </style>
</head><body>
    <form id="form1" runat="server">
        <div>
            <div id="title">&nbsp;ACTUALIZAR</div>
            <hr style="border-top: solid white; border-top-width: 0.1px; width: 80%; margin: 10px auto;">

            <div class="textbox-container">
                <div style="width: 100px; display: inline-block;">
                    <label for="TextBox1">Id:</label>
                </div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox-style" Width="120px"></asp:TextBox>
            </div>
            <div class="textbox-container">
                <div style="width: 100px; display: inline-block;">
                    <label for="TextBox2">Nombre:</label>
                </div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox-style" Width="120px"></asp:TextBox>
                <asp:Button ID="name" runat="server" OnClick="Nombre_Click" Text="Actualizar" CssClass="button-style" Width="100px" />
            </div>
            <div class="textbox-container">
                <div style="width: 100px; display: inline-block;">
                    <label for="TextBox3">Edad:</label>
                </div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox-style" Width="120px"></asp:TextBox>
                <asp:Button ID="age" runat="server" OnClick="Edad_Click" Text="Actualizar" CssClass="button-style" Width="100px" />
            </div>
            <div class="textbox-container">
                <div style="width: 100px; display: inline-block;">
                    <label for="TextBox4">Direccion:</label>
                </div>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox-style" Width="120px"></asp:TextBox>
                <asp:Button ID="adress" runat="server" OnClick="Direccion_Click" Text="Actualizar" CssClass="button-style" Width="100px" />
            </div>
            <div class="textbox-container">
                <div style="width: 100px; display: inline-block;">
                    <label for="TextBox5">Telefono:</label>
                </div>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox-style" ForeColor="White" Width="120px"></asp:TextBox>
                <asp:Button ID="phone" runat="server" OnClick="Telefono_Click" Text="Actualizar" CssClass="button-style" Width="100px" />
            </div>
            <div class="button-container">
                <asp:Button ID="Ver" runat="server" OnClick="Ver_Click" Text="Ver" CssClass="button-style" Width="120px" />
            </div>
                        <hr style="border-top: solid white; border-top-width: 0.1px; width: 80%; margin: 10px auto;">

            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="White" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <div class="button-container">
                <asp:Button ID="return" runat="server" OnClick="return_Click" Text="Regresar" CssClass="button-style" Width="120px" />
            </div>
        </div>
    </form>
</body>
</html>