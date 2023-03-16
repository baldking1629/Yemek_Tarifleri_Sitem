using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (IsPostBack == false)
            {
                Panel2.Visible = false;
                id = Request.QueryString["Yemekid"];
            }
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler",bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

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



    }
}