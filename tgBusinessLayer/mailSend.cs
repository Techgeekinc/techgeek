using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Xml;
using System.IO;


namespace tgBusinessLayer
{
    public class mailSend
    {
        public string EmailSend(StreamReader sr)
        {
            XmlDocument xDoc = new XmlDocument();
            xDoc.LoadXml(sr.ReadToEnd());
            XmlNode root = xDoc.DocumentElement;
            XmlNode emailNode = root.SelectSingleNode("EMAILID");
            XmlNode contactnumberNode = root.SelectSingleNode("CONTACTNUMBER");
            XmlNode messageNode = root.SelectSingleNode("MESSAGE");
            string emailId = (emailNode.InnerText);
            string contactnumber = (contactnumberNode.InnerText);
            string message = (messageNode.InnerText);

            var fromaddress = new MailAddress("developer.techgeek@gmail.com");
            var frompass = "techgeek786";
            var clientAdress = new MailAddress(emailId.ToString());
            var toAdress = new MailAddress("developer.techgeek@gmail.com");

            string subject = "Contact Mail from" + emailId;
            string body = "Message: " + message + "\n Contact Number: " + contactnumber + "\n from: <" + emailId + ">";

            string Usersubject = "Success Message";
            string Userbody = "Successfully Send message to TechGeek.org.in \n we will contact you as soon as possible \n Thanks.";
            try
            {
                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient
                {

                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromaddress.Address, frompass)

                };

                using (var clientMessage = new MailMessage(fromaddress, clientAdress)
                {
                    Subject = Usersubject,
                    Body = Userbody
                })

                    smtp.Send(clientMessage);

                using (var Message = new MailMessage(fromaddress, toAdress)
                {
                    Subject = subject,
                    Body = body
                })

                    smtp.Send(Message);

               return "Send Data Successfully";
            }
            catch (Exception ex)
            {
                return ("Error" + ex.Message);
            }
        }
    }
}
