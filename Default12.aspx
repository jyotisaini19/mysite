<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default12.aspx.cs" Inherits="Default12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:TextBox ID="txtsearch" runat="server"  Width="430px"  Height="30px" CssClass="txt"></asp:TextBox>
<asp:ImageButton ID="imgbt" runat="server" ImageUrl="~/bt.png"  Height="33px" 
        Width="30px" onclick="imgbt_Click" CommandName="search"/>
        <div id="t">
<asp:DataList ID="datalistfrnd" runat="server" 
        onitemcommand="datalistfrnd_ItemCommand">
    <ItemTemplate>

   
        <table class="style1">
            <tr>
            <td>
            <asp:Label ID="lbluserid" Text='<%# Eval("userid") %>' runat="server"  Visible="false"></asp:Label> 
            </td>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("dp") %>' Height="100px" Width="100px" />
                </td>
                <a href="#">
                <td class="style2">
                <a href='<%# "fndprofile.aspx?tid="+Eval("userid")  %>'>
                 <asp:Label ID="lbname" runat="server" Text='<%# Eval("name") %>' ForeColor="White" CssClass="s" ></asp:Label>
                 </a>
                </td>
                </a>
                <td>
                    <asp:Button ID="addfriend" runat="server" Text="ADD FRIEND" CommandName="request" CssClass="r" />
                </td>
            </tr>
        </table>
      
    </ItemTemplate>


</asp:DataList>

</div>

</asp:Content>

