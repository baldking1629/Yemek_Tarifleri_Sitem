using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Panel2.Visible = false;
                Panel4.Visible = false;
            }

            //onaylı yorumlar
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=1", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //onaysız yorumlar
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Panel2.Visible == true)
            {
                Panel2.Visible = false;
                Button1.Text = "AÇ";
            }
            else if (Panel2.Visible == false)
            {
                Panel2.Visible = true;
                Button1.Text = "GİZLE";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Panel4.Visible == true)
            {
                Panel4.Visible = false;
                Button2.Text = "AÇ";
            }
            else if (Panel4.Visible == false)
            {
                Panel4.Visible = true;
                Button2.Text = "GİZLE";
            }
        }
    }
}