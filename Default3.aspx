<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    <%--#Panel1
    {
        background-color:#2554C7;
        border-radius:50px;
        
        width:550px;
       
        }--%>
    
    #panel2
    {
        
        
        }
        
        .B
        {
         
            border:3px solid #EDDA7A;
            font-family:Brush Script MT;
            background-color: #2554C7;
            color:Black;
            font-size:25px;
            width:140px;
            height:32px;
            margin-left:200px;
            
            
            
            }
            .B:hover
            {
                background-color:grey;
                
                
                
                }
    
    
    
    #prsnl1
    {
        margin-left:400px;
       
        }
        #prsnl2
        {
            margin-left:400px;
            
         
            }
            
            #edu1
            {
                margin-left:400px;
                
                
                }
                #edu2
                {
                    margin-left:400px;
                    
                    
                    
                    }
            
            
            h3
            {
                font-style:italic;
                font-family:Comic Sans MS;
                color:grey;
                
                
                
                
                }
           
        .a
        {
            border-radius:50px;
            background-color:<%--#3BB9FF;--%> #2554C7;
            border:1px solid #347C17;
            opacity:0.9;
            width:200px;
            font-style:italic;
            height:35px;
            font-family:Brush Script MT;
            font-size:25px;
            
            
          
            
            }
            h2
            {
                font-family:Brush Script MT;
                color:#EDDA7A;
                font-size:45px;
                margin-left:120px;
                
                
                }
    
    
    </style>



</head>
<body>
    <form id="form1" runat="server">
    <div>
   <asp:Panel ID="dp" runat="server">
   <asp:Image ID="img" runat="server" Height="100px" Width="100px" />
   <asp:FileUpload ID="picupload" runat="server" />
   <asp:Button ID="upload" Text="UPLOAD" runat="server" onclick="upload_Click" />


   <asp:Button ID="picedit" Text="EDIT" runat="server" onclick="picedit_Click" />
   
   
   </asp:Panel>

   <asp:Panel ID="cover" runat="server">
   <asp:Image ID="coverpic" runat="server" Height="200px" Width="300px" />
   <asp:FileUpload ID="coverupload" runat="server" />
   <asp:Button ID="Button1" Text="UPLOAD" runat="server" onclick="Button1_Click"/>


   
   
   </asp:Panel>


        <asp:Panel ID="Panel1" runat="server">
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
        </asp:Panel>
        <asp:Button ID="edit1" runat="server" Text="EDIT" OnClick="edit1_click" CssClass="B"/>
        <asp:Panel ID="panel2" runat="server">
    <h2>PERSONAL DETAILS</h2>
    <table id="prsnl2">
    <tr>
    <th class="a">NAME</th>
    <td class="a"><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
    <th class="a">GENDER</th>
    <td class="a"><asp:TextBox ID="txtgender" runat="server"></asp:TextBox></td>
     </tr>
      <tr>
    <th class="a">MOBILE</th>
    <td class="a"><asp:TextBox ID="txtmobile" runat="server"></asp:TextBox></td>
     </tr> <tr>
    <th class="a">EMAIL ID</th>
    <td class="a"><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
     </tr> <tr>
    <th class="a">ADDRESS</th>
    <td class="a"><asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>
     </tr>
      <tr>
    <th class="a">STATE</th>
    <td class="a"><asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
     </tr> <tr>
    <th class="a">CITY</th>
    <td class="a"><asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
     </tr>

     </table>
     </asp:Panel>  
     <asp:Button ID="update1" runat="server" Text="UPDATE" OnClick="update1_click" CssClass="B" />
     <asp:Button ID="cancel1" runat="server" Text="CANCEL" OnClick="cancel1_click" CssClass="B" />
     

        <asp:Panel ID="panel3" runat="server">
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


        </asp:Panel>
    <asp:Button ID="edit2" Text="EDIT" runat="server" onclick="edit2_Click"  CssClass="B"/>

   <%-- <asp:Panel ID="panel2" runat="server">
    <h2>PERSONAL DETAILS</h2>
    <table>
    <tr>
    <th>NAME</th>
    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
    <th>GENDER</th>
    <td><asp:TextBox ID="txtgender" runat="server"></asp:TextBox></td>
     </tr>
      <tr>
    <th>MOBILE</th>
    <td><asp:TextBox ID="txtmobile" runat="server"></asp:TextBox></td>
     </tr> <tr>
    <th>EMAIL ID</th>
    <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
     </tr> <tr>
    <th>ADDRESS</th>
    <td><asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>
     </tr>
      <tr>
    <th>STATE</th>
    <td><asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
     </tr> <tr>
    <th>CITY</th>
    <td><asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
     </tr>

     </table>
     </asp:Panel>--%>
   <%--  <asp:Button ID="update1" runat="server" Text="UPDATE" OnClick="update1_click" />
     <asp:Button ID="cancel1" runat="server" Text="CANCEL" OnClick="cancel1_click" />
     --%>
     
     <asp:Panel ID="panel4" runat="server">
     <h2>EDUCATIONAL DETAILS</h2>
        <table id="edu2">
        <tr> <th colspan="2"><h3>SCHOOL DETAILS</h3></th> </tr>
        <tr>
        <th class="a">SCHOOL NAME</th>
        <td class="a"><asp:TextBox ID="txtschname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <th class="a">START YEAR</th>
        <td class="a"><asp:TextBox ID="txtschsy" runat="server"></asp:TextBox></td>
    
        </tr>
        <tr>
        <th class="a">end year</th>
        <td class="a"><asp:TextBox ID="txtschey" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th colspan="2">
                
                   <h3> UNDERGRADUATE DETAILS</h3>
            </th>
            <tr>
                <th class="a">
                    COLLEGE NAME</th>
                
        <td class="a"><asp:TextBox ID="txtundcol" runat="server"></asp:TextBox></td>
                   
                
            </tr>
            <tr>
                <th class="a">
                    START YEAR</th>
        <td class="a"><asp:TextBox ID="txtundsy" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <th class="a">
                    END YEAR</th>
        <td class="a"><asp:TextBox ID="txtundey" runat="server"></asp:TextBox></td>
               
            </tr>
            <tr>
                <th colspan="2">
                    
                      <h3>  POSTGRADUATE DETAILS</h3>
                </th>
            </tr>
            <tr>
                <th class="a">
                    COLLEGE NAME</th>
        <td class="a"><asp:TextBox ID="txtpostcol" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <th class="a">
                    START YEAR</th>
        <td class="a"><asp:TextBox ID="txtpostsy" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <th class="a">
                    END YEAR</th>
        <td class="a"><asp:TextBox ID="txtpostey" runat="server"></asp:TextBox></td>
                
            </tr>

        </table>
     
     
     
     
     
     
     
     </asp:Panel>
     <asp:Button ID="update2" runat="server" Text="UPDATE" onclick="update2_Click" CssClass="B" />
     <asp:Button ID="cancel2" runat="server" Text="CANCEL" onclick="cancel2_Click" CssClass="B" />
    </div>
    </form>
</body>
</html>
