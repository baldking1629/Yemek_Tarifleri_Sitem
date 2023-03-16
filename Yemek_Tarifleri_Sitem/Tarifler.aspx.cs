using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Tarifler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                Panel2.Visible = false;
                Panel4.Visible = false;
            }
            SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=0",bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=1", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Panel2.Visible== false)
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
            if (Panel4.Visible == false)
            {
                Panel4.Visible = true;
                Button2.Text = "GİZLE";
            }
            else
            {
                Panel4.Visible = false;
                Button2.Text = "AÇ";
            }
        }
    }
}