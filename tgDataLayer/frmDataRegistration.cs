using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace tgDataLayer
{
   public class frmDataRegistration
    {
       SqlConnection conn = null;
       SqlCommand cmd = null;
       public int userDetails(string name, string email, string gender, string profession, string contactnumber, string city, string country)
       {
          try
           {
               this.conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnection"].ToString());
               conn.Open();
               cmd = new SqlCommand();
               cmd.CommandText = "sp_user_registration";
               cmd.Connection = conn;
               cmd.CommandType = CommandType.StoredProcedure;
               cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = name;
               cmd.Parameters.Add("@email_id", SqlDbType.VarChar).Value = email;
               cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = gender;
               cmd.Parameters.Add("@profession", SqlDbType.VarChar).Value = profession;
               cmd.Parameters.Add("@contactnumber", SqlDbType.VarChar).Value = contactnumber;
               cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = city;
               cmd.Parameters.Add("@country", SqlDbType.VarChar).Value = country;
              
               int count = cmd.ExecuteNonQuery();
               if (count > 0)
               {
                   return 0;
               }
               else
               {
                   return 1;
               }

           }
           catch (Exception ex)
           {
              return 2;
           }
           finally
           {

               cmd.Dispose();
               conn.Close();
           }
       }
    }
}
