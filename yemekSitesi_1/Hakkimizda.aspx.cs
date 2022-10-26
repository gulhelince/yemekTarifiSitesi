using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekSitesi_1
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        SqlSınıf bgl = new SqlSınıf(); //Sql bağlantı sınıfı çağrılır

        protected void Page_Load(object sender, EventArgs e)
        {
            //Komut Yazılır=SqlCommand
            SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            //Sql tabanlı,güncellenebilir bir yapı oluşturulur 
        }
    }
}