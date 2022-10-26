using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekSitesi_1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlSınıf bgl = new SqlSınıf();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler",bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader(); //oku
            DataList1.DataSource = oku; //veri kaynağı okuduğu değerler olsun
            DataList1.DataBind(); //işlemleri dataliste aktar
        }
    }
}