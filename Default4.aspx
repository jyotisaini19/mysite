<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style>
    .circle {
	width: 110px;
	height: 110px;
	background: red;
	-moz-border-radius: 54px;
	-webkit-border-radius: 54px;
	border-radius: 54px;
	float:left;
    

}
#myfrnd
{
    width: 110px;
	height: 110px;
	background:green;
	-moz-border-radius: 54px;
	-webkit-border-radius: 54px;
	border-radius: 54px;
	float:left;
	margin-left:20px;
	

    
    
    }
    #img2
    {
        margin-bottom:7px;
        
        
        }

    #myfrnd:hover
    {
        opacity:0.5;}
       
       
       
 #addfrnd
{
    width: 110px;
	height: 110px;
	background:purple;
	-moz-border-radius: 54px;
	-webkit-border-radius: 54px;
	border-radius: 54px;
	float:left;
	margin-top:30px;
	
	

    
    
    }
        
        #addfrnd:hover
        {
            opacity:0.5;
            
            }
        

.circle:hover
{
    opacity:0.5;
    
    
    }
#nav
{
    height:150px;
    background-color:Black;
    
    
    
    }
    #a
    {
        margin-left:2px;
        
        
        }
    #a:hover
    {
        height:100px;
        width:100px;
        
        float:left;
      
        
        
        
        }
        a
        {
            display:block;
            text-decoration:None;
            color:Black;
            font-weight:bold;
            font-family:Comic Sans MS;
            font-size:10px;
           
            
            
            }
            h1
            {
                color:White;
                font-size:15px;
                }
             
             #post
             {width: 110px;
	height: 110px;
	background:orange;
	-moz-border-radius: 54px;
	-webkit-border-radius: 54px;
	border-radius: 54px;
	float:left;
	margin-top:30px;
                 
                 
                 }  
                 
                  #post:hover
                     {
                         opacity:0.5;
                     
                     
                     
                     }
                     
                     #fr
             {width: 110px;
	height: 110px;
	background:yellow;
	-moz-border-radius: 54px;
	-webkit-border-radius: 54px;
	border-radius: 54px;
	float:left;
                 
                 
                 }  
                 
                  #fr:hover
                     {
                         opacity:0.5;
                     
                     
                     
                     }
                     #createtp
             {width: 110px;
	height: 110px;
	background:maroon;
	-moz-border-radius: 54px;
	-webkit-border-radius: 54px;
	border-radius: 54px;
	float:left;
                 
                 
                 }  
                 
                  #createtp:hover
                     {
                         opacity:0.5;
                     
                     
                     
                     }
                      #mytp
             {width: 110px;
	height: 110px;
	background:maroon;
	-moz-border-radius: 54px;
	-webkit-border-radius: 54px;
	border-radius: 54px;
	float:left;
	margin-top:-5px;
                 
                 
                 }  
                 
                  #mytp:hover
                     {
                         opacity:0.5;
                     
                     
                     
                     }
                
                 #invitetp
             {width: 110px;
	height: 110px;
	background:red;
	-moz-border-radius: 54px;
	-webkit-border-radius: 54px;
	border-radius: 54px;
	float:left;
	margin-top:-15px;
                 
                 
                 }  
                 
                  #invitetp:hover
                     {
                         opacity:0.5;
                     
                     
                     
                     }
             #changepass
             {width: 110px;
	height: 110px;
	background:pink;
	-moz-border-radius: 54px;
	-webkit-border-radius: 54px;
	border-radius: 54px;
	float:left;
	margin-top:-45px;
                 
                 
                 }  
                 
                  #changepass:hover
                     {
                         opacity:0.5;
                     
                     
                     
                     }
                      #logout
             {width: 110px;
	height: 110px;
	background:blue;
	-moz-border-radius: 54px;
	-webkit-border-radius: 54px;
	border-radius: 54px;
	float:left;
	margin-top:-40px;
                 
                 
                 }  
                 
                  #logout:hover
                     {
                         opacity:0.5;
                     
                     
                     
                     }
           
           
           #margin
           {
               margin-left:80px;
               }          
                     
                     
                     
             
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div id="nav">
    <div id="margin">
    <div class="circle">
      
        <asp:ImageButton ID="img1" runat="server" ImageUrl="navbar/my_profile_green.png"
         Height="100px" Width="100px" />
        <h1>MY PROFILE</h1>

    </div>
    
    <div id="addfrnd">
    <h1>ADD FRIEND</h1>
    

    <asp:ImageButton ID="imgg3" runat="server" ImageUrl="navbar/friends.png" Height="80px" Width="100px" />
    
    </div>
    
   <div id="myfrnd">
    
    
    
    <asp:ImageButton ID="Img2" runat="server" ImageUrl="navbar/frnd.png" Height="80px" Width="100px" />
    <h1>MY FRIENDS</h1>
    </div>

    <div id="post">
    
    
    <h1>PUBLIC POST</h1>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="navbar/post.png" Height="80px" Width="100px" />
    
    </div>
    
    <div id="createtp">
    
    

    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="navbar/create.png" Height="80px" Width="100px" />
    <h1>CREATE TOPIC</h1>
    </div>
     <h1>FRIEND REQUEST</h1>
    <div id="fr">
    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="navbar/fr.png" Height="80px" Width="100px" />
   
    </div>
   
   
   
   
   
   <div id="mytp">
    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="navbar/mytp.png" Height="80px" Width="100px" />
    <h1>MY TOPIC</h1>
    </div>
    <h1>INVITE TOPIC</h1>
     <div id="invitetp">
    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="navbar/invite.png" Height="80px" Width="100px" />
   
    </div>
     <div id="changepass">
    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="navbar/changepass.png" Height="80px" Width="100px" />
    <h1>CHANGE PASSWORD</h1>
    </div> 
    <h1>LOG OUT</h1>
    <div id="logout">
    <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="navbar/logout.png" Height="80px" Width="100px" />
    
    </div>

    </div>
    </div>
    </form>
</body>
</html>
