using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekSitesi_1
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlSınıf bgl = new SqlSınıf();
        string Kategoriid = "";
        //form yüklendiği zaman kategoriid taşınır 

        protected void Page_Load(object sender, EventArgs e)
        {
            //Kategorilerine göre yemekleri listeler 
            Kategoriid = Request.QueryString["Kategoriid"]; //Şartım Kategoriid ye göre yemekleri getir
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where Kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind(); //Buradaki işlmeleri gerçekleştirmesini sağlar

        }
    }
}