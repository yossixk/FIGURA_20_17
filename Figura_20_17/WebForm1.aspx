<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Figura_20_17.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource runat="server" ID="sdsListBoxProduct" 
                ConnectionString="<%$ConnectionStrings:SportsPlay%>"
                SelectCommand="SELECT ProductID, Product 
                                FROM Product
                                ORDER BY Product;">
            </asp:SqlDataSource>

            <asp:Label runat="server" Text="Product"></asp:Label><br />
            <asp:ListBox runat="server" ID="libProduct" 
                DataSourceID="sdsListBoxProduct" DataTextField="Product"
                DataValueField="ProductID" Rows="7">
            </asp:ListBox>
        </div>
    </form>
</body>
</html>
