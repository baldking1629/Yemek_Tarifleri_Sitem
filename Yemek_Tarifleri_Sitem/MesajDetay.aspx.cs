using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar where Mesajid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                txt_mesajgonderen.Text = oku[1].ToString();
                txt_mailadresi.Text = oku[3].ToString();
                txt_baslik.Text = oku[2].ToString();
                txt_icerik.Text = oku[4].ToString();
            }
            bgl.baglanti().Close();


        }
    }
}