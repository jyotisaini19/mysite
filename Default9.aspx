<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default9.aspx.cs" ValidateRequest="false" Inherits="Default9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
    <style type="text/css">
    
    #t
    {
      
        padding:20px;
        margin-top:80px;
        margin-left:600px;
        width:650px;
      
        
        }
        
       
     #t:before
    {
       z-index: -1;
            content: '';
            position: absolute;
            height:600px;
            width:400px;
          background-color:#493D26;
            opacity:.8;
          
              
          
      
        
        }
    
    .s
    {
        width: 290px;
	 height:40px;
	border-left: 4px solid #3366FF;
	border: 3px double #CCCCCC;
	margin-top:10px;
	margin-left:50px;
        
        
        
        }
        
        .bt
        {
              width: 150px;
	 height:40px;
	border-left: 4px solid #3366FF;
	border: 3px double #CCCCCC;
	margin-top:10px;
        
            
            
            }
            .m
            {
                margin-left:70px;
                
                
                
                }
              .btt
              {
                    width: 150px;
	 height:40px;
	border-left: 4px solid #3366FF;
	border: 3px double #CCCCCC;
	margin-top:10px;
	margin-left:-100px;
                  
                  }
                  body
                  {
                      background-color:Gray;
                      
                      
                      }
                    
                    h1
                    {
                        font-family:Comic Sans MS;
                        font-size:40px;
                        color:White;
                        float:left;
                        
                        
                        
                        
                        }
                        
                        
                        #hhh
                        {
                            margin-left:250px;
                            float:left;
                            
                            
                            }
                   
        
    </style>

      <script type="text/javascript" src="tiny_mce/tiny_mce.js"></script>
    <script type="text/javascript" language="javascript">
        tinyMCE.init({
            // General options
            mode: "textareas",
            theme: "advanced", 
            plugins: "pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups",
           
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 59px;
          
           
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="hhh">
<h1>WHAT'S</h1>
<br />
<br />
<br />


<h1 style="margin-left:-100px">ON</h1>
<br />
<br />
<br />

<h1 style="margin-left:-110px">YOUR</h1>
<br />
<br />
<br />

<h1 style="margin-left:-120px">MIND</h1>
<br />
<br />
</div>




<div id="d1">
<table id="t">
<tr>

<td>
 

<asp:TextBox ID="txttitle" runat="server"  CssClass="s" placeholder="TITLE"></asp:TextBox>           
 
    </td>
</tr>

<tr>


   <td>
  
    <textarea id="txtdescp" cols="20" rows="2" runat="server" class="s" placeholder="DESCRIPTION"></textarea></td>
</tr>
<tr>

<td>
<asp:Image ID="img" runat="server"  ImageUrl="file/noimage.jpg"  Height="100px" Width="100px" CssClass="m"/>
<asp:Panel ID="panel" runat="server" >
<asp:FileUpload ID="fileupload" runat="server" Height="40px" CssClass="m"/>
<asp:Button ID="upload" Text="upload" runat="server" onclick="upload_Click"  CssClass="btt"/>
<asp:Label ID="lb" runat="server"></asp:Label>

</asp:Panel>
</td>
</tr>
<tr>

<td><asp:DropDownList ID="drpaccess" runat="server" CssClass="s">
    <asp:ListItem>ACCESS TYPE</asp:ListItem>
      <asp:ListItem>PUBLIC</asp:ListItem>
     <asp:ListItem>PRIVATE</asp:ListItem>
    </asp:DropDownList></td>
</tr>
<tr>
<td><asp:Button ID="submit" Text="submit" runat="server" onclick="submit_Click" CssClass="s" /></td>
</tr>


</table>
</div>
</asp:Content>

