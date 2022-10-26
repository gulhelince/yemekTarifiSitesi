using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekSitesi_1
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlSınıf bgl = new SqlSınıf(); //Sql sınıfı çağrılır
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Buton içerisine kodlar yazılır
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (MesajGönderen,MesajBaslik,MesajMail,Mesajİcerik) values (@p1,@p2,@p3,@p4)",bgl.baglanti()); //Bağlantıyla ilişkilendirilir
            komut.Parameters.AddWithValue("@p1", TxtGönderen.Text);
            komut.Parameters.AddWithValue("@p2", TxtBaslik.Text);
            komut.Parameters.AddWithValue("@p3", TxtMail.Text);
            komut.Parameters.AddWithValue("@p4", TxtMesaj.Text);
            komut.ExecuteNonQuery(); //Sorgu Çalıştırılır
            bgl.baglanti().Close(); //Bağlantı kapatılır


        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //}
    }
}