<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="yemekSitesi_1.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 156px;
        }
        .auto-style12 {
            width: 156px;
            height: 26px;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style9" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TxtGönderen" runat="server" Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;&nbsp; Mail Adresiniz:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="TxtMail" runat="server" Width="199px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Konu:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="TxtBaslik" runat="server" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mesaj:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="TxtMesaj" runat="server" Height="150px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td><strong>
                <asp:Button ID="BtnGönder" runat="server" CssClass="auto-style14" Height="37px" OnClick="Button1_Click" Text="Gönder" Width="162px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
