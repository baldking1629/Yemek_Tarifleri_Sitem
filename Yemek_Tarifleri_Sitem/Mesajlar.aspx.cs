﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false){
                Panel2.Visible = false;
            }
            
            SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar",bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
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
    }
}