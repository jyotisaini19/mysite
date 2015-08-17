<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>--%>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    
    <script src="Scripts/jquery-1.11.1.js" type="text/javascript"></script>

    <script src="Scripts/jquery.cycle.all.js" type="text/javascript"></script>

<style type="text/css">
table
{
    margin-top:-70px;
    float:left;
    margin-left:670px;
  
    }
    #slide1
    {
        opacity:0.7;
        z-index:30px;
        
        
        
        }
    
   
       #a
        {
            margin-top:30px;
            font-family:Comic Sans MS;
            font-size:40px;
           color:White;
           margin-left:350px;
           float:left;
          
            
            
            }
            h2
            {
                margin-top:90px;
                margin-left:-270px;
                
       
                color:White;
                float:left;
                }

               #slide1
               {
                   margin-top:200px;
                   float:left;
                   
                   
                   
                   
                   
                   }
                   
              
    
     #t
    {
        
        margin-top:-570px;
        margin-left:200px;
        height:350px;
       <%---moz-border-radius:50/50px;
        -webkit-border-radius:50px/50px;--%>
        
        background-color:#999999;
        float:left;
        
       
        }
        
        #tt
        {
            
            opacity:0.6;
            float:left;
            background-color:brown;
            z-index:30px;
        margin-top: 185px;
        margin-bottom: 83px;
    }
        .s
        { <%---webkit-border-radius:100px/100px;--%>
          
          font-size:15px;
          font-style:italic;
          padding-left:14px;
          width:230px;
          height:30px;
         
            
           }.w
           {
               font-family:Verdana;
               
               font-size:20px;
            margin-top: 21px;
            font-style:italic;
            margin-left: 44px;
           <%-- -webkit-border-radius:30px/30px;--%>
            background-color:Orange;
            width:150px;
        }
           
    
    #cont
    {
        background-color:brown;
        opacity:0.5;
        height:300px;
        width:300px;
        
        
        
        
        }
    
               
               
               
               
               
               
                    

</style>  



<script type="text/javascript">

            $(document).ready(function () {
                $('#slider1').cycle({
                    fx: 'fade', // here change effect to blindX, blindY, blindZ etc 
                    speed: 'slow',
                    timeout: 2000
                });
            }); 
    
    
    </script>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form runat="server">


 <%-- <asp:scriptmanager runat="server"></asp:scriptmanager>
--%>

   <table>
   <tr>
   <td>
       <asp:textbox ID="txtname"  runat="server" placeholder="USERNAME"></asp:textbox>
   
   
   
   </td>
   <td>
   
   
       <asp:textbox ID="txtpass" runat="server" TextMode="Password" placeholder="PASSWORD"></asp:textbox>
   
   </td>
   <td>
   
       <asp:button runat="server" text="LogIn" onclick="Unnamed3_Click" />
       
   
   </td>
   
   
   
   
   </tr>
   
   
   
   </table>

   <h1 id="a">An Ultimate Website </h1>
   <h2>briging people closer</h2>
   
   
   
   
   
   

   <div id="slide1">
       
       
       <ul id="slider1">
       
       <li><img border="1" src="bar/images/img1.jpg" width="400" height="350" /></li>
<li><img border="4" src="bar/images/img2.jpg" width="400" height="350" /></li>
<li><img border="4" src="bar/images/img3.jpg" width="400" height="350" /></li>
<li><img border="4" src="bar/images/img4.jpg" width="400" height="350" /></li>
<li><img border="4" src="bar/images/img5.jpg" width="400" height="350" /></li>
<li><img border="4" src="bar/images/img6.jpg" width="400" height="350" /></li>


</ul>
       
       
       </div>      <div id="form1">
    
   

    </div>
    
   

    <div id="tt">
    <table id="t">
    <%--<tr>
    <%--<th colspan="2">
    <h3 style="color:black; font-family:Comic Sans MS; font-size:30px; background-color:Orange"> SIGN UP</h3>
    
    </th>--%>
    <td>
        <img src="bg2.gif" />
       
    </td>
    
    
    <tr>
    <td>
        <asp:TextBox ID="textname" runat="server" placeholder="NAME" CssClass="s"></asp:TextBox>
    
    
    </td>
   
       
    </tr>
    <tr>
    <td>
        <asp:TextBox ID="textgender" runat="server" placeholder="Gender" CssClass="s"></asp:TextBox>
    
    
    </td>
    
    
    
    </tr>
    <tr>
    <td>
        <asp:TextBox ID="textusername" runat="server" placeholder="choose a usename" CssClass="s"></asp:textbox>
    </td>
      
    </tr>
    <tr>
    <td>
    
        <asp:TextBox ID="textpass" runat="server" TextMode="Password"  placeholder="PASSWORD" CssClass="s"></asp:TextBox>
      
    </td>
      
    </tr>
    <tr>
    <td>
    
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"   placeholder="CONFIRMPASSWORD"  CssClass="s"></asp:TextBox>
    
    </td>
    
    
    </tr>
    <tr>
    <td>
        <asp:Button ID="Button1" runat="server" Text="create account" CssClass="w" 
        onclick="Button1_Click"    />
    </td>
    </tr>
    
    
    </table>
    </div>
    </div>
   
   
  
  
   </form>
      
   
</asp:Content>
