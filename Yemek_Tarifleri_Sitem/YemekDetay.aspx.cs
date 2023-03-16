using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {

        sqlsinif bgl = new sqlsinif();
        string Yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Yemekid = Request.QueryString["Yemekid"];

            SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler where Yemekid=@p1 ", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Yemekid);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                Label3.Text = oku[0].ToString();
            }
            bgl.baglanti().Close();

            //Yorumları listeleme
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where Yemekid=@p2",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", Yemekid);
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (yorumadsoyad,yorummail,yorumicerik,yemekid) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", Yemekid);
            komut.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
        }
    }
}