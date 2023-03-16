using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false){
                SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where Tarifid=@p1", bgl.baglanti());

                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txt_tarifad.Text = oku[1].ToString();
                    txt_malzemeler.Text = oku[2].ToString();
                    txt_yapilis.Text = oku[3].ToString();
                    txt_tarifoneren.Text = oku[5].ToString();
                    txt_mail.Text = oku[6].ToString();
                }
                bgl.baglanti().Close();

                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();

                ddl_kategori.DataTextField = "KategoriAd";
                ddl_kategori.DataValueField = "Kategoriid";

                ddl_kategori.DataSource = oku2;
                ddl_kategori.DataBind(); 
            }
            
        }

        protected void btn_onayla_Click(object sender, EventArgs e)
        {
            //Güncelleme
            SqlCommand komut = new SqlCommand("update Tbl_Tarifler set TarifDurum =1 where Tarifid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği Ana sayfaya ekleme
            SqlCommand komut2 = new SqlCommand("Insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid,YemekResim) values (@p1,@p2,@p3,@p4,@p5) ", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", txt_tarifad.Text);
            komut2.Parameters.AddWithValue("@p2",txt_malzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", txt_yapilis.Text);
            komut2.Parameters.AddWithValue("@p4", ddl_kategori.SelectedValue);
            komut2.Parameters.AddWithValue("@p5", "~/resimler/" + FileUpload1.FileName);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori adeti artır. 
        }
    }
}