<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="yemekSitesi_1.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            background-color: #669999;
        }
    .auto-style13 {
        width: 105px;
    }
    .auto-style14 {
        width: 116px;
        text-align: right;
    }
    .auto-style15 {
        text-align: right;
    }
        .auto-style16 {
            width: 35px;
        }
        .auto-style17 {
            width: 44px;
        }
        .auto-style18 {
            font-weight: bold;
            font-size: medium;
            margin-left: 0px;
        }
        .auto-style19 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style20 {
            background-color: #006666;
        }
        .auto-style22 {
            width: 209px;
            height: 29px;
            text-align: right;
            font-size: medium;
        }
        .auto-style23 {
            height: 29px;
        }
        .auto-style24 {
            width: 209px;
        }
        .auto-style25 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style26 {
            width: 209px;
            text-align: right;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12">
        <table class="auto-style9">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style13"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style11" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </strong></td>

                        <td class="auto-style14">
                            <!--Yönlendirme işleminin yapılacağı yer belirtilmelidir -->
                            <!--Güncelleme işleminde diğer sayfaya taşınacağı için bi problem çıkmaz ama silme işleminde 
                                aynı sayfa içerisinde yapılacağı için ona bir parametre aktarılabilir   -->
                           <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid") %>&islem=sil"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" /></a>
                        </td>

                        <td class="auto-style15">

                            <!--Burada yapılan bir yönlendirme işlemidir-->
                            <!--Verilen id değerine göre işlem yapar,o kategoriye ait olan idyi getir-->
                            <!--Silme ve güncelleme işlemlerinde bir yönlendirme söz konusudur.-->
                            <!--Güncelleme işleminde diğer sayfaya taşınacağı için bi problem çıkmaz ama silme işleminde 
                                aynı sayfa içerisinde yapılacağı için ona bir parametre aktarılabilir   -->
                           <a href="KategoriDüzenle.aspx?Kategoriid=<%# Eval("Kategoriid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/refres.png" Width="30px" /></a>
                        </td>


                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style20" >
        <table class="auto-style9">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" /> 
                    </strong></td>
                <td><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style9">
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>KATEGORİ AD:</strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="TxtKategoriad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>KATEGORİ İKON:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style25" Text="Ekle" Width="171px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
