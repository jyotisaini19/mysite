<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="Default15.aspx.cs" Inherits="Default15" %>

<%@ Register Src="~/Control/commentbox.ascx" TagName="comments" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="lbtid" runat="server"></asp:Label>
    <asp:DataList ID="dlpost" runat="server">
        <ItemTemplate>
        <div style="background-color:silver; -webkit-opacity:.8; font-family:Courier New Greek; font-size:16px;">
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("relatedpic") %>' Height="100px"
                Width="100px" style="margin-left:600px;"/>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
            <br />
            <%--<asp:ImageButton ID="like" runat="server" CommandName="like" ImageUrl="~/like.jpg" />
        <asp:ImageButton ID="unlike" runat="server" CommandName="unlike" ImageUrl="~/unlike.jpg" />
            --%>s
            </div>
        </ItemTemplate>
    </asp:DataList>
    <%--<asp:LinkButton ID="Like" runat="server" CommandName="Like" CommandArgument='<%# Eval("likeid") %>'>Like(<%# Eval("Like")%>)</asp:LinkButton>
    --%>
    <div style="background-color:black; -webkit-opacity:0.8; color:White; font-size:16px; font-family:Century Gothic">
    <asp:ImageButton ID="like" runat="server" Visible="false" ImageUrl="~/like.jpg" OnClick="like_Click" style="height:25px; Width:50px"/>
    <asp:ImageButton ID="unlike" runat="server" Visible="false" ImageUrl="~/unlike.jpg" OnClick="unlike_Click" style="height:25px; Width:50px"/>
    <cc1:comments ID="comt" runat="server" />
    </div>
</asp:Content>
