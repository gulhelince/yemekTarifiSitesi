<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDüzenle.aspx.cs" Inherits="yemekSitesi_1.KategoriDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 233px;
        }
        .auto-style13 {
            width: 233px;
            text-align: right;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style12">&nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>KATEGORİ AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>ADET:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="203px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="244px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnGüncelle" runat="server" CssClass="auto-style14" OnClick="BtnGüncelle_Click" Text="Güncelle" Width="210px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
