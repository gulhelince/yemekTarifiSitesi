using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekSitesi_1
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        //Global alanda Sql sınıfı çağrılır
        SqlSınıf bgl = new SqlSınıf();
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommanda sql sorgusunu oluşturmak için kullanılır
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader(); //veri okuyucu nesnesi oluşturulur daha sonra yukarıdaki komut nesnesiyle ilişkilendirilir.
            DataList2.DataSource=dr;
            DataList2.DataBind(); //Veri bağlantısını gerçekleştirmiş oldum
        }
    }
}