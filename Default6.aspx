<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="txtuserid" runat="server">
</asp:TextBox><asp:Button ID="btnSearch" Text="Search" runat="server" 
    onclick="btnSearch_Click" />


<asp:DataList ID="dlFriendInviteList" runat="server" 
        onitemcommand="dlFriendInviteList_ItemCommand">
<ItemTemplate>

<div>
<asp:Label ID="lbluserid" Text='<%# Eval("userid") %>' runat="server"></asp:Label>   <asp:Button ID="btnRequest" Text="Add as Friend" runat="server" CommandName="Request" />

</div>
</ItemTemplate>

</asp:DataList>



</asp:Content>

