using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string onay = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd,YorumOnay from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid where Yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);

            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                txt_adsoyad.Text = oku[0].ToString();
                txt_mail.Text = oku[1].ToString();
                txt_icerik.Text = oku[2].ToString();
                txt_yemek.Text = oku[3].ToString();
                onay = oku[4].ToString();
            }
            bgl.baglanti().Close();
            if (onay == "True")
            {
                btn_onayla.Text = "Onay Kaldır";
                
            }
            else
            {
                btn_onayla.Text = "Onayla";
            }
        }

        protected void btn_onayla_Click(object sender, EventArgs e)
        {
            if (onay == "True")
            {
                SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set YorumOnay=0 where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Redirect("Yorumlar.aspx");
            }
            else
            {
                SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set YorumOnay=1 where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Redirect("Yorumlar.aspx");
            }
            
            

        }
    }
}