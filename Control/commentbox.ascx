<%@ Control Language="C#" AutoEventWireup="true" CodeFile="commentbox.ascx.cs" Inherits="Control_commentbox" %>
<asp:Label ID="lbtid" runat="server" Visible="false"></asp:Label>

<asp:DataList ID="dlComments" runat="server">
<ItemTemplate>
<div style="font-family:Century Gothic; font-size:8px; color:red; margin-left:50px;"></div>
<asp:Label ID="lbnam" runat="server" Text='<%# Eval("name") %>'></asp:Label>


<asp:Label ID="lbdate"  runat="server" Text='<%# Eval("createddate","{0:dd/MMM/yyyy}") %>'></asp:Label>

<br />

<div>
           
         <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" style="float:left;" 
        ImageUrl='<%# "../"+Eval("dp") %>' />          
        
 <asp:Label ID="lblcomment" runat="server" style="float:right; background-color:gray; -webkit-opacity:0.8; padding-bottom:10px; padding-top:10px; padding-right:10px; padding-left:10px;"   Text='<%# Eval("text") %>'></asp:Label>


 </div>

</ItemTemplate>


</asp:DataList>
<asp:TextBox ID="TextBox4" runat="server" Height="40px" Width=80%></asp:TextBox>

<asp:Button ID="Button1" runat="server"  Text="comment"  
    onclick="Button1_Click" />
