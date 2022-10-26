using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekSitesi_1
{
    public partial class KategoriDüzenle : System.Web.UI.Page
    {
        //Sayfa yüklendiği zaman bir önceki sayfaki kategori adını ve adetini getir
        SqlSınıf bgl = new SqlSınıf();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Formlar arası geçiş yapılır
            id = Request.QueryString["Kategoriid"]; //Diğer formdan taşınan değer


            if(Page.IsPostBack==false) //sayfayı yeniden yükleme,bir kere yüklediğin zaman artık o haliyle al
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();//Komutla ilişkilendirilir

                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }

                bgl.baglanti().Close();
            }

        }

        protected void BtnGüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where Kategoriid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();//Sorguyu çalıştır
            bgl.baglanti().Close();
        }
    }
}