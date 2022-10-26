<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="yemekSitesi_1.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 143px;
        }
        .auto-style11 {
            width: 143px;
            text-align: right;
        }
        .auto-style12 {
            font-weight: bold;
            margin-left: 49px;
            background-color: #CC99FF;
        }
        .auto-style13 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style13" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style11">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Malzemeler:</td>
            <td>
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Yapılış:</td>
            <td>
                <asp:TextBox ID="TxtYapılıs" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Tarif Öner:</td>
            <td>
                <asp:TextBox ID="TxtTarifOner" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TxtMailAdres" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnTarifOner" runat="server" CssClass="auto-style12" Height="40px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
