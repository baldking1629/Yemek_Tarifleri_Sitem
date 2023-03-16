using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where Yemekid = @p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txt_yemekad.Text = oku[1].ToString();
                    txt_malzeme.Text = oku[2].ToString();
                    txt_tarif.Text = oku[3].ToString();
                    
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/resimler/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4,YemekResim=@p6 where Yemekid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txt_yemekad.Text);
            komut.Parameters.AddWithValue("@p2", txt_malzeme.Text);
            komut.Parameters.AddWithValue("@p3", txt_tarif.Text);
            komut.Parameters.AddWithValue("@p4", ddl_kategori.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Değişiklik kaydedildi.");

        }

        protected void btn_gununyemegi_Click(object sender, EventArgs e)
        {
            //tüm yemeklerin durumunu 0 yaptık.
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set Durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Günün yemeğinin durumunu değiştirecez
            SqlCommand komut2 = new SqlCommand("Update Tbl_Yemekler set Durum=1 where Yemekid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            Response.Write("Günün yemeği değişti.");

            bgl.baglanti().Close();
        }
    }
}