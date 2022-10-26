using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekSitesi_1
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSınıf bgl = new SqlSınıf(); //bağlantı adresi ve içerisindeki metotun kullanılmasını sağlar. 
        string Yemekid = ""; // form ilk yüklendiği yemekid adında bir değişken tanımlanır

        //Başlangıçta boş olarak bir yemekid tanımlanır
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Request=yönlendir,string olarak sorgu istenir
            // Sonra sayfa yüklendiği zaman diğer formdan gelen yemekid adlı değişkenimi bu değişkenin içerisine ata
            Yemekid = Request.QueryString["Yemekid"];

            //Taşımış olduğum id değerine göre o iddeki yemeği listeleme zamanı 
            SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where Yemekid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Yemekid);


            SqlDataReader dr = komut.ExecuteReader();

            //Şart yazılır,dr komutu okuma işlemi yaptığı müddetçe
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.baglanti().Close(); //bağlantı kapatılır



            //Yemeğe ait yorumları listeleme
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where Yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", Yemekid); //emekid değişkeninden gelen değer 
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //yorum yap
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", Yemekid);
            komut.ExecuteNonQuery(); //Sorgu gerçekleştirilir
            bgl.baglanti().Close(); //bağlantı kapatılır

        }
    }
}