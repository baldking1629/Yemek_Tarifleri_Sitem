using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string id = "";
        string Kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Panel2.Visible = false;
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];

                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();

                DropDownList2.DataTextField = "KategoriAd";
                DropDownList2.DataValueField = "Kategoriid";

                DropDownList2.DataSource = oku2;
                DropDownList2.DataBind();
            }
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut4 = new SqlCommand("select Kategoriid from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                komut4.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku3 = komut4.ExecuteReader();
                while (oku3.Read())
                {
                    Kategoriid = oku3[0].ToString();
                }
                

                SqlCommand komut3 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet-1 where Kategoriid=@p1", bgl.baglanti());
                komut3.Parameters.AddWithValue("@p1",Kategoriid);
                komut3.ExecuteNonQuery();

                SqlCommand komut2 = new SqlCommand("Delete from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                Response.Write("Yemek silindi.");

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Panel2.Visible == true)
            {
                Panel2.Visible = false;
                Button1.Text = "AÇ";
            }
            else
            {
                Panel2.Visible = true;
                Button1.Text = "GİZLE";

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Panel4.Visible == true)
            {
                Panel4.Visible = false;
                Button3.Text = "AÇ";
            }
            else
            {
                Panel4.Visible = true;
                Button3.Text = "GİZLE";
            }
        }

        protected void BtnEkle0_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/resimler/" + FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("Insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid,YemekResim) values (@p1,@p2,@p3,@p4,@p5)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList2.SelectedValue);
            komut.Parameters.AddWithValue("@p5", "~/resimler/" + FileUpload1.FileName);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";


            //Kategori sayısını artırma
            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet = KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList2.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }


    }
}