<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="Default11.aspx.cs" Inherits="Default11" %>

<%@ Register TagPrefix="cc1" Namespace="SiteUtils" Assembly="CollectionPager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .index > div > div:first-child
        {
            display: none;
        }
        .index a
        {
            padding: 5px;
            background-color: black;
            color: White;
            margin: 0px 2px 0px 2px;
        }
        #d
        {
            height: 300px;
            width: 300px;
            -webkit-opacity: 1;
            padding: 10px;
            margin-top:8px;
            position: relative;
        }
        #e
        {
           
            height: 300px;
            width: 300px;
            margin-left: 100px;
            padding: 10px;
            margin-top: 80px;
            position: relative;
        }
        #e:before
        {
            z-index: -1;
            content: '';
            position: absolute;
            
            height: 314px;
            width: 300px;
              background-color:#493D26;
            opacity:.8;
        }
       
        
        
        #d:hover
        {
            opacity: 0.7;
        }
      
        body
        {
            background-color: Gray;
        }
        #e:hover
        {
            background-color:black;
            }
        
        
        .b1
        {
            margin-top: 0;
            background-color: black;
            filter: alpha(opacity=60);
            opacity: .6;
        }
        
        .b2
        {
            font-size: 30px;
            font-family: Comic Sans MS;
            color: Black;
           <%-- margin-left: 60px;--%>
        }
        .i
        {
            margin-left: 250px;
            margin-top: -30px;
        }
        .b3
        {
            <%--margin-left: 100px;--%>
        }
        .b4
        {
            font-family: Brush Script MT;
        }
        
        .i1
        {
           <%--<%-- margin-left: 40px;--%>--%>
            margin-top: 20px;
        }
        .i2
        {
           <%-- margin-left: 25px;--%>
        }
        
        a
        {
            text-decoration: none;
        }
        .s
        {
            margin-left:400px;
            margin-top:50px;
            
            
            
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
        <ItemTemplate>
            <div id="e">
                <div id="d">
                    <a href='<%# "default15.aspx?tid="+Eval("topicid")  %>'>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("date","{0:dd/MMM/yyyy}") %>'
                            ForeColor="white" CssClass="b1"></asp:Label>
                        <%-- <asp:Image runat="server" ID="quote" ImageUrl="quote.png"  CssClass="i"/>--%>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("title") %>' ForeColor="white"
                            CssClass="b2"></asp:Label>
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("relatedpic") %>' Height="120px"
                            Width="200px" CssClass="b3" />
                        <br />
                        <%--<asp:Label ID="Label3" runat="server" Text='<%# Eval("description").ToString().Length > 20 ? Eval("description").ToString().Substring(0,20) : Eval("description") %>'BackColor="Orange">
            </asp:Label>
                        --%>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("description").ToString().Substring(0,100) %>'
                            ForeColor="white" CssClass="b4"></asp:Label><br />
                        <asp:Image runat="server" ID="icon1" CssClass="i1" Height="20px" Width="20px" ImageUrl="~/icon.png" />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>' ForeColor="white"></asp:Label>
                        <asp:Image runat="server" ID="icon2" CssClass="i2" Height="20px" Width="20px" ImageUrl="~/comment (1).png" />
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("c") %>' ForeColor="white"></asp:Label>
                        <asp:Image runat="server" ID="Image2" CssClass="i2" Height="22px" Width="22px" ImageUrl="~/facebook-like-256.png" />
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("l") %>' ForeColor="white"></asp:Label>
                        <br />
                    </a>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <div class="index">
        <cc1:CollectionPager ID="CollectionPager1" runat="server" BackNextLocation="Split" ControlCssClass="s"
            PageSize="6" PageNumbersDisplay="Numbers" ShowLabel="False">
        </cc1:CollectionPager>
    </div>
</asp:Content>
