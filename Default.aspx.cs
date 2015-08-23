using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
//protected void btnSubmit_Click(object sender, EventArgs e)
//{
// var fromaddress = new MailAddress("developer.techgeek@gmail.com");
// var frompass = "techgeek786";
//  var clientAdress = new MailAddress(InputEmail1.Text);
//   var toAdress = new MailAddress("developer.techgeek@gmail.com");

//   string subject = "Contact Mail from" + InputEmail1.Text;
//   string body =  "Message: " + InputMessage1.Text + "\n Contact Number: " + InputContactNumber1.Text + "\n from: <"+InputEmail1.Text+">";

//  string Usersubject = "Success Message";
//  string Userbody = "Successfully Send message to TechGeek.org.in \n we will contact you as soon as possible \n Thanks.";
//   try
//    {
//      System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient
//      {

//         Host = "smtp.gmail.com",
//         Port = 587,
//         EnableSsl = true,
//         DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network,
//          UseDefaultCredentials = false,
//         Credentials = new NetworkCredential(fromaddress.Address, frompass)

//    };

//  using (var clientMessage = new MailMessage(fromaddress, clientAdress)
//   {
//        Subject = Usersubject,
//        Body = Userbody
//    })


//     smtp.Send(clientMessage);

//  using (var Message = new  MailMessage(fromaddress,toAdress)
//   {
//       Subject = subject,
//         Body = body
//    })

//          smtp.Send(Message);
//  }
//   catch (Exception ex)
//   {
//      Console.Write("<script>alert(" + ex.Message + ");</script>");
//   }

//}
}