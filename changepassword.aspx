<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" ValidateRequest="false" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

 #curve {
	width: 450px;
	height: 450px;
	background: black;
	-moz-border-radius: 210px;
	-webkit-border-radius: 210px;
	border-radius: 210px;
	float:left;
	margin-left:400px;
	}
	.a
        {
            border-radius:50px;
            background-color:#258db8;
            border:1px solid black;
            
            font-style:italic;
            font-family:Comic Sans MS;
            font-size:25px;
            margin-left:106px;
            margin-top: 75px;
        }
        
      
      body
      {
          background-color:Gray;
          
          
          } 
        
        
            h2
            {
                font-family:Brush Script MT;
                color:#EDDA7A;
                font-size:45px;
                margin-left:120px;
                
                
                }
                table
                {
                    margin-top:100px;
                    margin-left:20px;
                   
                    
                    }
    
	
        .style1
        {
            border-radius: 50px;
            background-color: #258db8;
            border: 1px solid black;
           
            width: 207px;
            font-style: italic;
            font-family: Comic Sans MS;
            font-size: 25px;
            margin-left: 106px;
            margin-top: 75px;
        }
    
   
	</style>


    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2>WANNA CHANGE YOUR PASSWORD?</h2>
    <div id="curve">
    <table>
    <tr>
    <th class="style1">OLD PASSWORD</th>
   <td class="a"><asp:TextBox ID="old" runat="server" TextMode="Password" 
           Width="142px" ></asp:TextBox></td>  
    </tr>
    <tr>
    <th class="style1">NEW PASSWORD</th>
   <td class="a"><asp:TextBox ID="TextBox1" runat="server" TextMode="Password" 
           style="margin-left: 0px" Width="146px" ></asp:TextBox></td>  
    </tr>
    <tr>
    <th class="style1">CONFIRM NEW PASSWORD</th>
   <td class="a"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
           Width="143px" ></asp:TextBox></td>  
    </tr>
   
    
    </table>
    <asp:Button ID="pass" runat="server" Text="CHANGE PASSWORD" CssClass="a" 
            Height="58px" Width="266px" onclick="pass_Click"/>

    
    </div>
</asp:Content>

