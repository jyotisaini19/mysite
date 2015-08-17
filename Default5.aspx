<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="Styles/StyleSheet3.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
   
        <asp:Panel ID="Panel1" runat="server">
        <h2>PERSONAL DETAILS</h2>
        <table id="prsnl1">
        <tr>
        <th class="a">NAME</th> 
        <td class="a"><asp:Label ID="lbname"  runat="server"></asp:Label></td>
        </tr>

        <tr>
         <th class="c">GENDER</th> 
        <td class="c"><asp:Label ID="lbgender"  runat="server"></asp:Label></td>
        </tr>
        
         <tr>
         <th class="a">MOBILE </th> 
        <td class="a"><asp:Label ID="lbmobile" runat="server" ></asp:Label></td>
        </tr>
         <tr>
         <th class="c">EMAIL ID</th> 
        <td class="c"><asp:Label ID="lbemail" runat="server" ></asp:Label></td>
        </tr>

         <tr>
         <th class="a">ADDRESS</th> 
        <td class="a"><asp:Label ID="lbaddress" runat="server" ></asp:Label></td>
        </tr>
         <tr>
         <th class="c">STATE</th> 
        <td class="c"><asp:Label ID="lbstate"  runat="server"></asp:Label></td>
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
    <th class="c">GENDER</th>
    <td class="c"><asp:TextBox ID="txtgender" runat="server"></asp:TextBox></td>
     </tr>
      <tr>
    <th class="a">MOBILE</th>
    <td class="a"><asp:TextBox ID="txtmobile" runat="server"></asp:TextBox></td>
     </tr> <tr>
    <th class="c">EMAIL ID</th>
    <td class="c"><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
     </tr> <tr>
    <th class="a">ADDRESS</th>
    <td class="a"><asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>
     </tr>
      <tr>
    <th class="c">STATE</th>
    <td class="c"><asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
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
        <th class="c">START YEAR</th>
        <td class="c"><asp:Label ID="lbschSY" runat="server"></asp:Label></td>
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
                <th class="c">
                    COLLEGE NAME</th>
                <td class="c">
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
                <th class="c">
                    END YEAR</th>
                <td class="c">
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
                <th class="c">
                    START YEAR</th>
                <td class="c">
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



</asp:Content>

