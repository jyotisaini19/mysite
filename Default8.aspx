<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<asp:Image ID="img" runat="server" />

<asp:Panel ID="panel" runat="server">
<asp:FileUpload ID="upload" runat="server" />
<asp:Button ID="button" runat="server"  Text="button" OnClick="button_click"/>
<asp:Label ID="lb" runat="server"></asp:Label>



</asp:Panel>
</asp:Content>

