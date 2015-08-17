<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="mytopic.aspx.cs"  ValidateRequest="false" Inherits="mytopic" %>
<%@ Register Src="~/Control/commentbox.ascx" TagName="comments" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #TextArea1
        {
            height: 66px;
        }
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Label ID="lbtid" runat="server"></asp:Label>
<asp:Panel ID="pnltopic" runat="server">
<asp:DataList ID="dlmypost" runat="server" >
    <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("relatedpic") %>' Height="100px" Width="100px" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
        <br />
    </ItemTemplate>



</asp:DataList>
<asp:Button ID="btedit" runat="server" Text="edit" onclick="btedit_Click" />
</asp:Panel>
<asp:Panel ID="pnlupdate" runat="server">
<table>
<tr>
<td>
<asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:Image ID="img" runat="server" Height="100px" Width="100px"/>
<asp:FileUpload ID="picupload" runat="server" />
   <asp:Button ID="upload" Text="UPLOAD" runat="server" onclick="upload_Click" />

</td>
</tr>
<tr>
<td>
    <textarea id="txtarea" cols="60" rows="7" runat="server"></textarea>

</td>
</tr>



</table>
  

<asp:Button ID="btupdate" runat="server"  Text="UPDATE" onclick="btupdate_Click"/>

<asp:Button ID="btcancel" runat="server" Text="CANCEL" onclick="btcancel_Click" />




</asp:Panel>
<asp:Panel ID="pnlinvite" runat="server">

    <asp:DataList ID="dlinvite" runat="server" onitemcommand="dlinvite_ItemCommand">
        <ItemTemplate>
            <table class="style1">
            <tr> <td>
                        <asp:Label ID="lbluserid" runat="server" Text='<%# Eval("userid") %>'></asp:Label>
                    </td></tr>

                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Image ID="img" runat="server" Height="100px" ImageUrl='<%# Eval("dp") %>' 
                            Width="100px" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="INVITE" CommandName="invite" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>



</asp:Panel>


<cc1:comments ID="comt" runat="server" />



</asp:Content>

