using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekSitesi_1
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlSınıf bgl = new SqlSınıf(); //Sql bağlantı sınıfı çağrılır
        
        //Global alanda iki değişken tanımlanır 
        string id = "";
        string islem = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false) //her defasında sayfada  sıfırlamaması için kullanılır .
            {
                id = Request.QueryString["Kategoriid"]; //Kategoriid taşısın
                islem = Request.QueryString["islem"];

            }

            SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader(); //SqlDataReaderdaki dr nesnesi aracılığıyla sorguyu okut 
            DataList1.DataSource = dr;
            DataList1.DataBind(); //işlemi gerçekleştirmeyi sağlar 

            //Silme işlemi
            if(islem=="sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id); //id değişkeninden gelen değer 
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();

            }




            //Eklenen panelin gözükme durumları ayarlanabilir
            
            Panel2.Visible = false; //panel başlangıçta gözükmez
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //Kategori Eklenir,sadece kategori adı yazılır 
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKategoriad.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close(); //Bağlantıyı kapat
        }
    }
}