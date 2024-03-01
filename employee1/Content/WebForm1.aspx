<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="employee1.Content.WebForm1" %>

<!DOCTYPE html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <h1>employee form</h1>
        <div class="row">
        <div class="col-md-2">
            <asp:Label ID="Labelempid" runat="server" Text="empid"></asp:Label>
        </div>
            <div class="col-md-6">
                <asp:TextBox ID="TextBoxempid" runat="server" Width="266px"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Labelfname" runat="server" Text="firstname"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBoxfname" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:Label ID="Labellname" runat="server" Text="last name"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBoxlname" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Labelgender" runat="server" Text="gender"></asp:Label>
            </div>
            <div class="col-md-2">
             
                    <asp:DropDownList ID="ddlgender" runat="server">

                        <asp:ListItem value="">Please select   </asp:ListItem>  
      <asp:ListItem value="male" >  male  </asp:ListItem>  
<asp:ListItem value="female" > female</asp:ListItem>  
                </asp:DropDownList>
  
            </div>
            <div class="col-md-2">
                <asp:Label ID="Labeldob" runat="server" Text="date of birth"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Calendar ID="Caldob" runat="server"></asp:Calendar>
               
            </div>
        </div>
        <asp:Button ID="Btnsubmit" runat="server" Text="submit" OnClick="Btnsubmit_Click" />
        <p>
           
            <asp:Label ID="lblmsg" runat="server" Text="lblmsg"></asp:Label>     </p>
    </form>
</body>
</html>
