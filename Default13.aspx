<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default13.aspx.cs" Inherits="Default13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 132px;
        }
        .style3
        {
            height: 132px;
            width: 192px;
        }
        .style4
        {
            height: 132px;
            width: 285px;
        }
        .style5
        {
            height: 132px;
            width: 174px;
        }
    </style>--%>

    <style type="text/css">
        .style1
        {
          
             width:703px;;
            height:116px;
            margin-left:300px;
            margin-top:1px;
            border:1px solid black;
             
            
           
        }
         .style1:before
            {
                 z-index: -1;
            content: '';
            position: absolute; width:700px;;
            height:114px;
            
          
              background-color:#493D26;
            opacity:.8;
           
                
                }
        
        
        .style2
        {
            width: 103px;
        }
        
        #t
        {
            margin-top:30px;
            
            
            
           }
           body
           {
               background-color:Gray;
               
               
               
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
            .txt
            {
                margin-top:40px;
                margin-left:300px;
                
                
                }
           
           .s
           {
               font-family:Brush Script MT;
               font-size:35px;
               margin-left:-30px;
               text-decoration:none;
               color:Black;
               
               
               }     
                
        .style6
        {
            width: 142px;
        }
        .style7
        {
            width: 111px;
        }
        .style8
        {
            width: 128px;
        }
            
          #d
          {
              margin-top:100px;
              
              
              
              }  
            
                
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="d">
    <asp:DataList ID="dlfrndrequest" runat="server" 
    onitemcommand="dlfrndrequest_ItemCommand">
   <ItemTemplate>
  
    <table class="style1">
        <tr>
            <td class="style6">
                <asp:Image ID="Image2" runat="server" Height="73px" Width="124px" 
                    ImageUrl='<%# Eval("dp") %>' />
            </td>
            <td class="style7">
             <a href='<%# "fndprofile.aspx?tid="+Eval("userid")  %>'>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' CssClass="s"></asp:Label>
                </a>
            </td>
            <td class="style8">
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("date","{0:dd/MMM/yyyy}") %>' CssClass="s"></asp:Label>
            </td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="ACCEPT"  CommandName="accept" CssClass="r" />
                <asp:Button ID="Button2" runat="server" Text="NOT NOW"  CommandName="reject" 
                    Width="150px" />
            </td>
        </tr>
    </table>

    </ItemTemplate>

    </asp:DataList>
    </div>
</asp:Content>

