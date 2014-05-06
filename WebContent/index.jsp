<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
  <title>Department of Computer Science</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />

<script>
$(document).ready(function(){
$('#one').tooltip();
});
</script>
     <style type="text/css">
	h1 
	{
	  text-shadow: -4px 4px 6px dimgrey;
	  font-size: 300%;
	  color: #8A0808;
          text-align: center;
	  top: 20px;
	}
	table,th,td
	{
	  border:1px solid black;
	  border-collapse:collapse;
	}

 </style>
 <script type = "text/javascript"> 
 <!-- 
 var now = new Date(); // current date and time 
 var hour = now.getHours(); // current hour (0-23) 
 var name; 

 if ( hour < 12 ) // determine whether it is morning 
 document.write( "<h3>Good Morning, " ); 
 else 
 { 
 hour = hour - 12; // convert from 24-hour clock to PM time 
 
 // determine whether it is afternoon or evening 
 if ( hour < 6 ) 
 document.write( "<h3>Good Afternoon, " ); 
 else 
 document.write( "<h3>Good Evening, " ); 
} // end else
if ( document.cookie ) 
 { 
 // convert escape characters in the cookie string to their 
 // English notation 
 var myCookie = unescape( document.cookie ); 
 
 // split the cookie into tokens using = as delimiter 
 var cookieTokens = myCookie.split( "=" ); 
 
 // set name to the part of the cookie that follows the = sign 
 name = cookieTokens[ 1 ]; 
 } // end if 
 else 
 { 
 // if there was no cookie, ask the user to input a name 
 name = window.prompt( "Please enter your name", "Paul" ); 
 
 // escape special characters in the name string 
 // and add name to the cookie 
 document.cookie = "name=" + escape( name ); 
 } // end else 

document.writeln( 
 name + ", Welcome to JavaScript programming!</h3>" ); 
 document.writeln( "<a href = 'javascript:wrongPerson()'> " + 
 "Click here if you are not " + name + "</a>" ); 
 
 // reset the document's cookie if wrong person 
 function wrongPerson() 
 { 
 // reset the cookie 
 document.cookie= "name=null;" + 
 " expires=Thu, 01-Jan-95 00:00:01 GMT"; 
 
 // reload the page to get a new name after removing the cookie 
 location.reload(); 
 } // end function wrongPerson 
 
 // --> 
 </script> 
 <script type = "text/javascript"> 
 <!-- 
 function compute() 
 { 
  var sum=0,maximum=0;
 if(validate())
 {
  document.getElementById("dia1").innerHTML="10 numbers entered in the Data Field Successfully";
 // window.alert("10 numbers in the Data Field");
 } 
}
 function validate()
 {
 var val=true;
 var inputString = document.getElementById( "inputVal" ).value; 
 var tokens = inputString.split( "," ); 
 
 for(var i=0;i<tokens.length;i++)
 {
  var r=parseInt(tokens[i]);
  if(r<1 || r>100)
  {
    
    val=false;
    break;
  }
 }  
 if(tokens.length<10)
   {  
     document.getElementById("dia1").innerHTML="Enter atleast 10 numbers in the Data Field";
     //window.alert("Enter atleast 10 numbers in the Data Field");
     return false;
   }
  if(!val)
  {
    document.getElementById("dia1").innerHTML="Enter values between 1 to 100! in the Data Field!";
    //window.alert("Enter values between 1 to 100! in the Data Field!");
    return false;
  }
   return true;
  }
</script> 
<script type="text/javascript">
function formValidation()
{

Message = ""
Message = Message + allLetter();
Message = Message + allLet();
Message = Message + alphanumeric();
Message = Message + ValidateEmail();
Message = Message + validCheckBox();
Message = Message + validRadioButton();

if (Message == "") {
document.getElementById("dia").innerHTML="Form Submitted";
return true;
}
else {
//alert(Message)
document.getElementById("dia").innerHTML=Message;
return false;
}
}
function allLetter()
{ 
var Message;
var letters = /^[A-Za-z]+$/;
if(!document.getElementById("fn").value.match(letters))
{
Message = "Firstname must have alphabet characters only" + "\n";
//registration.fname.focus();
//document.getElementById("fn").value="";
//return false;

}
else
{
Message = "";
}
return Message;
}

function allLet()
{ 
var Message;
var letters = /^[A-Za-z]+$/;
if(!document.getElementById("ln").value.match(letters))
{
  Message = "Lastname must have alphabet characters only" + "\n";

//alert('Username must have alphabet characters only');
//registration.lname.focus();
//document.getElementById("ln").value="";
//return false;
}
else
{
Message = "";  
}
return Message;
}

function alphanumeric()
{ 
var Message;
var letters = /^[0-9a-zA-Z\w\s]+$/;
if(!document.getElementById("add").value.match(letters))
{
  Message = "Address must have alphabet characters only" + "\n";
//alert('User address must have alphanumeric characters only');
//registration.address.focus();
//document.getElementById("add").value="";
//return false;
}
else
{
Message = "";  
}
return Message;
}

function ValidateEmail()
{
var Message;
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(!document.getElementById("em").value.match(mailformat))
{
Message = "You have entered an invalid email address!" + "\n";
//registration.email.focus();
//document.getElementById("em").value="";
//return false;
}
else
{
Message = "";  
}
return Message;
}

function validRadioButton()
      {
        var i;
        var Message;
        var result=0;
         for (i = document.getElementsByName('howtosite').length - 1; i >= 0; i--)
         { 
           if (document.getElementsByName('howtosite')[i].checked==true) 
                   result=1; 
                
         }
         
          if(result!=1){
             Message = "Select atleast one option of how did you know the university" + "\n";
           //  return false;
        }
        else
        {
          Message = "";  
        }
          return Message;
      }

function validCheckBox()
       {
         var Message;
         var i;
         var boxesTicked = 0;
         for (i = document.getElementsByName('thingsliked').length - 1; i >= 0; i--) 
          { 
               if (document.getElementsByName('thingsliked')[i].checked) 
                
                    boxesTicked=boxesTicked+1;
          } 
    
         if (boxesTicked <2 ) 
            { 
             Message = "Please choose at least two things you like" + "\n";
             //return false;
            } 
          
            else
     // {
      //  alert('Form Succesfully Submitted');
      //  window.location.reload()
      //  return true;
      //}  else
        {
          Message = "";  
        }
          return Message;
      }
          
       
</script>
<script type="application/javascript">
function loadJSON(zip)
{
   var data_file = "zip.json";
   var http_request = new XMLHttpRequest();
  /* try{
      // Opera 8.0+, Firefox, Chrome, Safari
      http_request = new XMLHttpRequest();
   }catch (e){
      // Internet Explorer Browsers
      try{
         http_request = new ActiveXObject("Msxml2.XMLHTTP");
      }catch (e) {
         try{
            http_request = new ActiveXObject("Microsoft.XMLHTTP");
         }catch (e){
            // Something went wrong
            alert("Your browser broke!");
            return false;
         }
      }
   }*/
   http_request.onreadystatechange  = function(){
      if (http_request.readyState == 4  )
      {
        // Javascript function JSON.parse to parse JSON data
        var jsonObj = JSON.parse(http_request.responseText);
        var valid=false;
        // jsonObj variable now contains the data structure and can
        // be accessed as jsonObj.name and jsonObj.country.
        for(var i=0;i<jsonObj.zipcodes.length;i++){
          if(zip==jsonObj.zipcodes[i].zip){
        valid=true;
        document.getElementById("city").innerHTML =  jsonObj.zipcodes[i].city;
        document.getElementById("state").innerHTML = jsonObj.zipcodes[i].state;
        document.getElementById("validateZip").innerHTML="";
      }
      
     // else
       // document.getElementById("validateZip").innerHTML="Invalid Zip Code"
   }
   if(!valid)
   {
    document.getElementById("validateZip").innerHTML="Invalid Zip Code";
    document.getElementById("city").innerHTML = '';
    document.getElementById("state").innerHTML=''; 
   }
    
 }}
   http_request.open("GET", data_file, true);
   http_request.send();
}
</script>
<script>
  $(document).ready(function() {
      $('#diag1').click(function() {
            $('#dialog').dialog({ height: 300, width:489, modal:true});
      });
});
  </script>
<script>
  $(document).ready(function() {
      $('#inputVal').blur(function() {
            $('#dialog1').dialog({ height: 300, width:489, modal:true});
      });
});
  </script>
</head>	
<body>
<div id="dialog" title="Basic modal dialog">
  <p id="dia"></p>
</div>
<div id="dialog1" title="Basic modal dialog">
  <p id="dia1"></p>
</div>
<p>Refresh to reload the script</p>
<h1>Survey Form</h1>
<table border="1" style="margin: auto;" width="75%">
<s:form  name="registration"  method="post" action="register.action" onsubmit="return formValidation();"  >

 <s:textfield label=" Sid" id="id" name="sid" size="25" maxlength="25" />
 
 <s:textfield id="fn" label="First Name" name="fname" size="25" maxlength="25" />
 
 
 <s:textfield id="ln" label="Last Name" name="lname" size="25" maxlength="25" />
 
 <s:textfield id="add" label="Street Address" name="street" size="25" maxlength="25" />
 
 <div id="city"> <s:textfield label="City" name="city"/></div>
 
 <div id="state"><s:textfield label="State" name="state"/></div>

 <s:textfield id="zip" label="Zip"  name="zip" onblur = 'loadJSON(this.value)'/>

<div id = "validateZip"></div>
 
 <s:textfield label="Telephone Number   (###)###-####" name="tel" size="15" maxlength="15" />

 <s:textfield id="em" label="Email  (user@mydomain.com)" name="email" size="15" maxlength="15" />

 <s:textfield label="URL  (http://www.domainname.com)" name="url" size="50" maxlength="50" />

 <s:textfield label="Date of Survey   (mm/dd/yyyy)" name="date"/>

 <s:select id="txtList" label="Please enter the month of graduation" name="monthgrad" list="{'January','February','March'}" />
 
 <s:textfield label="Please enter the year of graduation" name="yeargrad" size="4" maxlength="4" />

<!-- What do you like most about the campus?
<s:checkbox name="thingsliked" label="Students" value="Student"/>
<s:checkbox name="thingsliked" label="Location" value="Location"/>
<s:checkbox name="thingsliked" label="Campus" value="Campus"/>
<s:checkbox name="thingsliked" label="Atmosphere" value="Atmosphere"/>
<s:checkbox name="thingsliked" label="Dorm Rooms" value="Dorm Rooms"/>
<s:checkbox name="thingsliked" label="Sports" value="Sports"/>-->

<s:checkboxlist list="{'Student','Location','Campus','Atmosphere','Dorm Rooms','Sports'}" name="thingsliked" label="What do you like most about the campus?"></s:checkboxlist>


<s:radio list="{'Friends','Television','Internet','Others'}" name="howtosite" label="How did you find out about this university?"></s:radio>

<s:textarea name="comments" label="Additional Comments"
cols="30" rows="4" />

<s:select id="txtList" label="Would you recommend this school to other prospective students?" name="feedback" list="{'Very Likely','Likely','Unlikely'}" />

<s:textfield label="Data" name="data" id="inputVal" size="40" onblur="compute()"/>

<s:submit value="Submit" id="diag1" onclick="return formValidation();"/>
<s:reset value="Reset" />
<!-- <button id="diag1" onclick="return formValidation();">Submit</button>-->
<!-- <input type="reset" value="Reset"></input>-->

</s:form>
</table>
<a href="http://www.gmu.edu" title="Please visit http://www.gmu.edu for more information."  style="float:right" id="one"><img src='gmulogo.jpg' style="position:fixed; float:right; right:0px; bottom:0px"></a>
<p><b>Alisha Gala</b></p>
</body>
</html>
