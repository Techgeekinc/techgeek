//====================================================
//====================================================
//=============== Developed By TechGeek ==============
//====================================================
//====================================================




$(document).ready(function () {
    
    // ToolTip
    $('[data-toggle="tooltip"]').tooltip();
  
    $("#InputContactNumber").keypress(function (e) {
      
       
      
            if(e.which != 8 && (e.keyCode < 47 || e.keyCode >57))
            {
                e.preventDefault();
            }
        
       
    });
  
    
});

// Email Validation
function ValidateEmail(email) {
    var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    return expr.test(email);
}

// Submit Data
function btnSubmitData() {
  
    $("#ValidaitonInputContactNumber").hide();
    $("#ValidationInputEmail").hide();
    $("#ValidationMessage").hide();
    var email = $("#InputEmail").val();
    var  contactnumber = $("#InputContactNumber").val();
    var Message = $("#InputMessage").val();

    if (email != "") {

        if (!ValidateEmail($("#InputEmail").val())) {
            $("#InputEmail").val("");
            contactnumber = $("#InputEmail").val();
            $("#ValidationInputEmail").show();
        }

    }
    else {
      
        $("#ValidationInputEmail").show();
    }

    if (($("#InputContactNumber").val().length < 10) || ($("#InputContactNumber").val().length > 10)) {
        $("#InputContactNumber").val("");
        contactnumber = $("#InputContactNumber").val();
        $("#ValidaitonInputContactNumber").show();
    }
    if (Message == "") {
        $("#ValidationMessage").show();
    }
   
    

    if (email != "" && contactnumber != "" && Message != "") {
        
        var data = "<EMAILDETAILS>"
                   + "<EMAILID>" + email + "</EMAILID>"
                   + "<CONTACTNUMBER>" + contactnumber + "</CONTACTNUMBER>"
                   + "<MESSAGE>" + Message + "</MESSAGE>"
                   + "</EMAILDETAILS>";

        var to = "./WebMethod.aspx?DATA=SUBMITMESSAGE";

        var op = {
            type: "POST",
            url: to,
            data: data,
            contentType: "application/text;charset=utf-8",
            dataType: "text",
            async: false,
            success: function (response) {
                alert("successfully inserted");
            }

        };

        var ReturnText = $.ajax(op).responseText;
        
        $("#InputEmail").val("");
        $("#InputContactNumber").val("");
        $("#InputMessage").val("");
    }
    
  

}