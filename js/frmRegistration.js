//====================================================
//====================================================
//=============== Developed By TechGeek ==============
//====================================================
//====================================================

jQuery(document).ready(function () {
    function count($this) {
        var current = parseInt($this.html(), 10);
        current = current + 1; /* Where 1 is increment */

        $this.html(++current);
        if (current > $this.data('count')) {
            $this.html($this.data('count'));
        } else {
            setTimeout(function () { count($this) }, 50);
        }
    }

    jQuery(".stat-count").each(function () {
        jQuery(this).data('count', parseInt(jQuery(this).html(), 10));
        jQuery(this).html('0');
        count(jQuery(this));
    });
});




$(document).ready(function () {

    
    //number check
    $("#txtNumber").keypress(function (e) {



        if (e.which != 8 && (e.keyCode < 47 || e.keyCode > 57)) {
            e.preventDefault();
        }


    });

    

});

function ValidateEmail(email) {
    var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    return expr.test(email);
}

function btnRegistration()
{
    
    var userName = $("#txtUsername").val();
    if (userName == "User Name") {
        userName = "";
        $("#txtValidationName").show();
    }
    
    var email = $("#txtemail").val();
    if (email == "Email") {
        email = "";
        $("#txtValidationmail").show();
    }

    var contactNumber = $("#txtNumber").val();
    if (contactNumber == "Phone number") {
        contactNumber = "";
        $("#txtValidationNumber").show();
        
    }
    
    if (($("#txtNumber").val().length < 10) || ($("#txtNumber").val().length > 10)) {
        contactNumber = "";
        $("#txtValidationNumber").show();
    }

    var city = $("#txtCity").val();

    if (city == "City") {
        city = "";
        $("#txtValidationCity").show();
    }
    
    var gender = $("#txtGender").val();
    var profession = $("#txtProfession").val();
    var country = $("#txtCountry").val();
  
    if (country == "Country") {
        country = "";
     
        $("#txtValidationCountry").show();
    }

    if ((userName != "") && (email != "") && (contactNumber != "") && (city != "") && (country != "")) {
        if (!ValidateEmail($("#txtemail").val())) {
            $("#txtemail").val("");
            $("#txtValidationmail").show();
        }
        else {

                 var data = "<USERDETAILS>"
                  + "<USERNAME>" + userName + "</USERNAME>"
                  + "<EMAIL>" + email + "</EMAIL>"
                  + "<GENDER>" + gender + "</GENDER>"
                  + "<PROFESSION>" + profession +"</PROFESSION>"
                  + "<CONTACTNUMBER>" +contactNumber +"</CONTACTNUMBER>"
                  + "<CITY>" +city +"</CITY>"
                  + "<COUNTRY>"+ country +"</COUNTRY>"
                  + "</USERDETAILS>";

            var to = "./WebMethod.aspx?DATA=USERREGISTRATIONDETAILS";

            var op = {
                type: "POST",
                url: to,
                data: data,
                contentType: "application/text;charset=utf-8",
                dataType: "text",
                async: false,
                success: function (response) {
                    if (response == 0)
                        alert('Successfully Inserted Your Data');
                    else if (response == 1)
                        alert('Error in Response from Database');
                    else if (response == 2)
                        alert('Error in DataLayer');
                    $("#txtUsername").val("User Name");
                    $("#txtemail").val("Email");
                    $("#txtGender").text("Male");
                    $("#txtProfession").text("Own Business");
                    $("#txtNumber").val("Phone number");
                    $("#txtCity").val("City");
                    $("#txtCountry").val("Country");
                }

            };

            var ReturnText = $.ajax(op).responseText;

             }

    }
    else {
        $("#txtvalidationNumber").show();
       
    }
}
