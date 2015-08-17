<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="privatepost.aspx.cs" Inherits="privatepost" %>
<%@ Register Src="~/Control/commentbox.ascx" TagName="comments" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="lbtid" runat="server"></asp:Label>
<asp:DataList ID="dlpost" runat="server" >
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
<cc1:comments ID="comt" runat="server" />
</asp:Content>

