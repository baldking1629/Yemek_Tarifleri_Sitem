using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Panel2.Visible = false;
                SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda", bgl.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[0].ToString();
                }
                bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Panel2.Visible == false)
            {
                Panel2.Visible = true;
                Button1.Text = "GİZLE";
            }
            else
            {
                Panel2.Visible = false;
                Button1.Text = "AÇ";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Hakkimizda set Metin=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
        }
    }
}