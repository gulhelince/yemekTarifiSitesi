<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="yemekSitesi_1.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="443px">
    <ItemTemplate>
        <table class="auto-style10">
            <tr>
                <td><strong>
                    <!--Yönlendirme sorgusu yazılır-->
                    <!--Yemek ana sayfadan taşınır,
                           - önce yönlendireceğim sayfa yazılır
                            - ? formlar arası veri taşımada sorgulama için kullanılır
                            - yemekid tıkladığımız yemeğin idsi olanı getir
                            - Yemekid adlı değerime benim tıklamış olduğum yemeğin evaline yemekid değerini al
                            --><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td>Malzemeler:<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Yemek Tarifi:<asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Eklenme Tarihi:<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- Puan:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        &nbsp;</td>
            </tr>
            <tr>
                <td style="border-bottom-width: thick; border-bottom-style: groove; border-bottom-color: #808080">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
