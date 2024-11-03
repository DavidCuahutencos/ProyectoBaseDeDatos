<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insercion.aspx.cs" Inherits="BaseDeDatos.Insercion" %>

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
        width: 300px;
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

    .textbox-container input {
        width: 100px;
        padding: 6px; 
        text-align: left; 
        background-color: rgba(255, 255, 255, 0.1); 
        border: 1px solid #ddd; 
        border-radius: 5px;
        color: white; 
            margin-left: 30px; 
                    margin-top: 5px;
                    margin-bottom: 10px;

    }

        label {
            display: block;
            margin-bottom: 5px;
            text-align: left; 
                        margin-left: 30px; 

        }

        .textbox-container label {
        color: white; 
        display: block;
        margin-bottom: 5px;
    }

        .button-container {
        text-align: center; 
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
    #GridView1 {
    margin: auto;
    backdrop-filter: blur(5px) brightness(0.1); 
    border: 0px solid #ddd; 
    color: white; 
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);


}




    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="textbox-container">
                <div id="title">&nbsp;INSERCIÓN</div>
                <hr style="border-top: solid white; border-top-width: 0.1px; width: 80%; margin: 10px auto;">

                <label for="TextBox1">Nombre:</label>
                <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
            </div>
            <div class="textbox-container">
                <label for="TextBox2">Edad:<br />
                </label>
                &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
            </div>
            <div class="textbox-container">
                <label for="TextBox3">Dirección:<br />
                </label>
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="220px"></asp:TextBox>
            </div>
            <div class="textbox-container">
                <label for="TextBox4">Teléfono:<br />
                </label>
                &nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="220px"></asp:TextBox>
                <br />
                <br />
            </div>
            <div class="button-container">
                <asp:Button ID="Guardar" runat="server" OnClick="Guardar_Click" Text="Guardar" CssClass="button-style" Width="50%" />
                <br />
                <br />
            </div>
            <div class="button-container">
                <asp:Button ID="Ver" runat="server" OnClick="Ver_Click" Text="Ver" CssClass="button-style" Width="50%" />
            </div>
            <br />
                            <hr style="border-top: solid white; border-top-width: 0.1px; width: 80%; margin: 10px auto;">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="White"> </asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="262px">
            </asp:GridView>
            <br />
            <div class="button-container">
                <asp:Button ID="return" runat="server" Text="Regresar" OnClick="return_Click" CssClass="button-style" Width="50%" />
            </div>
        </div>
    </form>
</body>
</html>
