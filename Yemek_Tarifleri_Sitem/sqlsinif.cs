using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Yemek_Tarifleri_Sitem
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = Dbo_yemektarifi;Integrated Security = True");
            baglan.Open();
            return baglan;
        }
    }
}