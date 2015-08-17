<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%--<style>
#container
{
    height:1200px;
    width:900px;
   background-image:url("546.jpeg");
  
   
    margin-left:200px;
    
    float:left;

}
#cover
{
    height:300px;
    background-color:Aqua;
    width:900px;
   
    float:left;
    
    
}
    body
    {
        background-image:url("bgg.jpg");
      
        
        
        }
        
.img
{
    margin-top:-80px;
    
    
    }
    
    
     .a
        {
            border-radius:50px;
            background-color:White;
            border:1px solid #2E9AFE;
            opacity:0.9;
            width:200px;
            font-style:italic;
            height:35px;
            font-family:Comic Sans MS;
            font-size:25px;
            
            
          
            
            }
            h2
            {
                color:#2E9AFE;
                
              
               
                
                
                }
              .p1
                {
                    margin-left:200px;
                    margin-top:-20px;
                   
                    
                    
                    }
                    
                    
                    .i
                    {
                        margin-left:150px;
                        
                        
                        }
                        h3
                        {
                            font-family:Comic Sans MS;
                            color:#2E9AFE;
                         
                            
                            
                            }
                        

</style>--%>
<style type="text/css">
.prsnl
{
   height:500px;
            width:700px;
            margin-left:400px;
            margin-top:100px;
           
    
    
    
    }

    .prsnl:before
    { z-index: -1;
            content: '';
            position: absolute;
            height:500px;
            width:700px;
             
           
    
              background-color:#493D26;
            opacity:.8;
        
        
        }
        .prsnl2
{
   height:800px;
            width:700px;
            margin-left:400px;
            margin-top:100px;
           
    
    
    
    }
    h3
    {
        color:White;
        
        
        }

    .prsnl2:before
    { z-index: -1;
            content: '';
            position: absolute;
            height:800px;
            width:700px;
             
           
    
              background-color:#493D26;
            opacity:.8;
        
        
        }
        h2
        {
            font-size:50px;
            font-family:Comic Sans MS;
            color:White;
            
            
            
            }
            
        .a
        {
            border-radius:50px;
            background-color:White;
            border:1px solid #2E9AFE;
            opacity:0.9;
            width:200px;
            font-style:italic;
            height:35px;
            font-family:Comic Sans MS;
            font-size:25px;
         
            
            
          
            
            }
            
        #i
        {
            height:170px;
            width:170px;
            margin-left:200px;
            margin-top:200px;
            float:left;
          
            
            
            
            
            }    
            
            #i:before
            {
                 z-index: -1;
            content: '';
            position: absolute;
            height:170px;
            width:170px;
            border-radius:50px;
           
            
           
    
              background-color:#493D26;
            opacity:.8;
        
                
                
                }
                .i1
                {
                    margin-left:500px;
                    margin-top:-200px;
                  
                   
                    
                    
                    } 
                    .i2
                {
                    margin-left:500px;
                    margin-top:-350px;
                  
                   
                    
                    
                    }
            
            
        
        
</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="container">
<%--<div id="cover">
 <asp:Label ID="lb" runat="server" Visible="false"></asp:Label>
   <asp:Image ID="coverpic" runat="server" Height="300px" Width="900px" />
  
   

</div>--%>
<div id="i">

   <asp:Image ID="img" runat="server" Height="155px" Width="155"  CssClass="img"/>
  

</div>
<div>


        <asp:Panel ID="Panel1" runat="server" CssClass="prsnl">
        <h2>PERSONAL DETAILS</h2>
        <table id="prsnl1">
        <tr>
        <th class="a">NAME</th> 
        <td class="a"><asp:Label ID="lbname"  runat="server"></asp:Label></td>
        </tr>

        <tr>
         <th class="a">GENDER</th> 
        <td class="a"><asp:Label ID="lbgender"  runat="server"></asp:Label></td>
        </tr>
        
         <tr>
         <th class="a">MOBILE </th> 
        <td class="a"><asp:Label ID="lbmobile" runat="server" ></asp:Label></td>
        </tr>
         <tr>
         <th class="a">EMAIL ID</th> 
        <td class="a"><asp:Label ID="lbemail" runat="server" ></asp:Label></td>
        </tr>

         <tr>
         <th class="a">ADDRESS</th> 
        <td class="a"><asp:Label ID="lbaddress" runat="server" ></asp:Label></td>
        </tr>
         <tr>
         <th class="a">STATE</th> 
        <td class="a"><asp:Label ID="lbstate"  runat="server"></asp:Label></td>
        </tr> <tr>
         <th class="a">CITY</th> 
        <td class="a"><asp:Label ID="lbcity"  runat="server"></asp:Label></td>
        </tr>
        </table>
       
            <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/arrow1.png" 
                Height="100px" Width="100px" onclick="ImageButton1_Click"  CssClass="i1" />
       
        </asp:Panel>
       
       
        


</div>
<div id="edu">
   <asp:Panel ID="panel3" runat="server" CssClass="prsnl2">
        <h2>EDUCATIONAL DETAILS</h2>
        <table id="edu1">
        <tr> <th colspan="2"><h3>SCHOOL DETAILS</h3></th> </tr>
        <tr>
        <th class="a">SCHOOL NAME</th>
        <td class="a"><asp:Label ID="lbschname" runat="server"></asp:Label></td>
        </tr>
        <tr>
        <th class="a">START YEAR</th>
        <td class="a"><asp:Label ID="lbschSY" runat="server"></asp:Label></td>
        </tr>
        <tr>
        <th class="a">end year</th>
        <td class="a"><asp:Label ID="lbschEY" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <th colspan="2">
                
                   <h3> UNDERGRADUATE DETAILS</h3>
            </th>
            <tr>
                <th class="a">
                    COLLEGE NAME</th>
                <td class="a">
                    <asp:Label ID="lbunname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th class="a">
                    START YEAR</th>
                <td class="a">
                    <asp:Label ID="lbunsy" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th class="a">
                    END YEAR</th>
                <td class="a">
                    <asp:Label ID="lbuney" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    
                     <h3>   POSTGRADUATION DETAILS</h3>
                </th>
            </tr>
            <tr>
                <th class="a">
                    COLLEGE NAME</th>
                <td class="a">
                    <asp:Label ID="lbpgname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th class="a">
                    START YEAR</th>
                <td class="a">
                    <asp:Label ID="lbpgsy" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th class="a">
                    END YEAR</th>
                <td class="a">
                    <asp:Label ID="lbpgey" runat="server"></asp:Label>
                </td>
            </tr>

        </table>
       <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/arrow2.png" 
            Height="100px" Width="100px" onclick="ImageButton2_Click" CssClass="i2" />

        </asp:Panel>


</div>

</div>


</asp:Content>

