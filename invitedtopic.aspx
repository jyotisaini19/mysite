<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="invitedtopic.aspx.cs" Inherits="invitedtopic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">




    <style type="text/css">
        .style1
        {
            width:900px;;
            height:114px;
            margin-top:20px;
            margin-left:100px;
        }
        
         .style1:before
            {
                 z-index: -1;
            content: '';
            position: absolute;
            
            height: 150px;
            width:1000px;
             background-color:#493D26;
            opacity:.8;
            border-radius:50px;
            border: 2px solid black;
                
                
                }
        .style2
        {
            height: 171px;
        }
        .style3
        {
            height: 171px;
            width: 121px;
        }
        .style4
        {
            height: 171px;
            width: 153px;
        }
        
        .t
        {
            font-family:Comic Sans MS;
            font-size:20px;
            color:White;
            text-decoration:none;
            
            
            
            }
            
          .style1:before
            {
                 z-index: -1;
            content: '';
            position: absolute;
           
             background-color:#493D26;
            opacity:.8;
                
                
                }
                
        .r
        {-moz-user-select: none;
    background: #2B1B17;
    border: 1px solid #2B1B17;
    box-shadow: 0 1px #2B1B17 inset;
    color: white;
    padding: 3px 5px;
    text-decoration: none;
    text-shadow: 0 -1px 0 #2B1B17;
    font: 12px Verdana, sans-serif;
    width:150px;
    height:30px;
            
            
            
            }
            
    </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="dlinvitetopic" runat="server" 
        onitemcommand="dlinvitetopic_ItemCommand">
    <ItemTemplate>
    
        <table class="style1">
            <tr>
            
             <td class="style4">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("topicid") %>' CssClass="t" Visible="false"></asp:Label>
                </td>
            
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Text='<%#"INVITED BY:"+Eval("name") %>' CssClass="t"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Image ID="Image3" runat="server" Height="100px" 
                        ImageUrl='<%# Eval("dp") %>' Width="100px" />
                </td>
                <td class="style2">
                <a href='<%# "privatepost.aspx?tid="+Eval("topicid")  %>'>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("title") %>' CssClass="t"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("relatedpic") %>' Height="100px" Width="100px" />
                </td>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("invitedate","{0:dd/MMM/yyyy}") %>' CssClass="t"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="REJECT" CommandName="reject" CssClass="r" />
                </td>
            </tr>
        </table>
    </ItemTemplate>



</asp:DataList>

</asp:Content>

