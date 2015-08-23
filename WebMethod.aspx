<%@ Page Language="C#" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="System.Collections" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="tgBusinessLayer" %>


<script type="text/C#" runat="server">
    
    // Main Method
    #region "Load Data"
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["DATA"] == "SUBMITMESSAGE")
            SendEmail();
        if (Request.QueryString["DATA"] == "USERREGISTRATIONDETAILS")
            UserRegistration();
    }
    
    #endregion

    tgBusinessLayer.mailSend objBusinessMail= null;
    tgBusinessLayer.frmRegistration objBusinessRegistration = null; 
    #region "METHODS"
    
    void SendEmail()
    {
        this.objBusinessMail = new mailSend();
        StreamReader sr = new StreamReader(Request.InputStream);
        Response.Write(objBusinessMail.EmailSend(sr));
    }
   
    void UserRegistration()
    {
        
        StreamReader sr = new StreamReader(Request.InputStream);
        XmlDocument xDoc = new XmlDocument();
        xDoc.LoadXml(sr.ReadToEnd());
        XmlNode root = xDoc.DocumentElement;
        XmlNode usernameNode = root.SelectSingleNode("USERNAME");
        XmlNode emailNode = root.SelectSingleNode("EMAIL");
        XmlNode genderNode = root.SelectSingleNode("GENDER");
        XmlNode professionNode = root.SelectSingleNode("PROFESSION");
        XmlNode contactnumberNode = root.SelectSingleNode("CONTACTNUMBER");
        XmlNode cityNode = root.SelectSingleNode("CITY");
        XmlNode countryNode = root.SelectSingleNode("COUNTRY");
        string userName = (usernameNode.InnerText);
        string email = (emailNode.InnerText);
        string gender = (genderNode.InnerText);
        string profession = (professionNode.InnerText);
        string contactNumber = (contactnumberNode.InnerText);
        string city = (cityNode.InnerText);
        string country = (countryNode.InnerText);

        objBusinessRegistration = new frmRegistration();
        Response.Write(objBusinessRegistration.userDetails(userName, email, gender, profession, contactNumber, city, country));
    }
    #endregion
    

</script>