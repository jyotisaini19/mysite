<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default14.aspx.cs" Inherits="Default14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 141px;
        }
        .style3
        {
            height: 141px;
            width: 232px;
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
    background: #2A49A5;
    border: 1px solid #082783;
    box-shadow: 0 1px #4C6BC7 inset;
    color: white;
    padding: 3px 5px;
    text-decoration: none;
    text-shadow: 0 -1px 0 #082783;
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
               
               
               }     
                
        .style3
        {
            width: 151px;
        }
        .style4
        {
            width: 81px;
        }
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="t">
<asp:DataList ID="dlmyfrnd" runat="server" onitemcommand="dlmyfrnd_ItemCommand" 
        style="margin-right: 0px">
    <ItemTemplate>
        <table class="style1">
            <tr>
             <td class="style2">
                    <asp:Label ID="Lbid" runat="server" Text='<%# Eval("userid") %>' Visible="false"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Image ID="Image2" runat="server" Height="100px" 
                        ImageUrl='<%# Eval("dp") %>' Width="131px" />
                </td>
                <td class="style4">
                 <a href='<%# "fndprofile.aspx?tid="+Eval("userid")  %>'>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' CssClass="s"></asp:Label></a>
                </td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="UNFRIEND" CommandName="unfriend" CssClass="r" />
                </td>
            </tr>
        </table>
    </ItemTemplate>




</asp:DataList>
</div>


</asp:Content>

