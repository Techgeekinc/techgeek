using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using tgDataLayer;

namespace tgBusinessLayer
{
    
    public class frmRegistration
    {
        tgDataLayer.frmDataRegistration objData = null;
        public int userDetails(string name, string email,string gender, string profession, string contactnumber, string city, string country)
        {
            this.objData = new tgDataLayer.frmDataRegistration();
            return  this.objData.userDetails(name, email,gender, profession, contactnumber, city, country);
        }
    }
}
