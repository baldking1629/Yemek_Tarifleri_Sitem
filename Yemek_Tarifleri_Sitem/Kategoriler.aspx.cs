﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Panel2.Visible = false;
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler",bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from Tbl_Kategoriler where Kategoriid = @p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
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
            if(Panel4.Visible == true)
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

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            TextBox1.Text = "";
        }
    }
}