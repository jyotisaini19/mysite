<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" EnableEventValidation="false"  Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 120px;
        }
        .style2
        {
            height: 120px;
            }
        .style3
        {
            height: 120px;
            width: 153px;
        }
        .style4
        {
            height: 120px;
            width: 167px;
        }
        .style5
        {
            height: 120px;
            width: 117px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="dladmin" runat="server" onitemcommand="dladmin_ItemCommand" >
        <ItemTemplate>
            <table class="style1">
              <tr>
                <td><asp:Label ID="Label4" runat="server" Text='<%# Eval("userid") %>'></asp:Label></td>
                    <td class="style3">

                        <asp:Image ID="Image2" runat="server" Height="83px" 
                            ImageUrl='<%# Eval("dp") %>' Width="123px" />
                    </td>
                    <td class="style4">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("logindate") %>'></asp:Label>
                    </td>
                    <td class="style2">
                        <%--<asp:Button ID="Button1"  CommandName="a" runat="server" Text="APPROVE" />--%>
                       <asp:LinkButton ID="lnlapp" CommandName="a" runat="server" Text="Approve"></asp:LinkButton>
                    </td>
                    <td class="style2">
                        <asp:Button ID="Button2" runat="server" Text="REJECT" CommandName="r" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    
    
    
    </asp:DataList>
       
    </div>
    </form>
</body>
</html>
