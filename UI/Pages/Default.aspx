<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UI.Pages.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        oi
        <button onclick="test()" type="button">Test</button>
        <div>
            <asp:ScriptManager ID="ScriptManager1" 
                EnablePageMethods="true" 
                EnablePartialRendering="true" runat="server" />
        </div>
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>

        function test() {
           $.ajax({
                  type: "GET",
                  url: "Default.aspx/MetodoASerChamado",
                  success: function(msg) {
                    // Do something interesting here.
                      alert("Oiii");
                  }
            });
        }
    </script>
</body>
</html>
