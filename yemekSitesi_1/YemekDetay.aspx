<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="yemekSitesi_1.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            font-size: xx-small;
        }
        .auto-style12 {
            font-size: x-large;
        }
        .auto-style13 {
            width: 191px;
        }
        .auto-style14 {
            width: 191px;
            text-align: right;
        }
        .auto-style15 {
            margin-left: 35px;
        }
        .auto-style16 {
            width: 102px;
        }
        .auto-style17 {
            width: 102px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-<asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <div>YORUM YAPMA PANELİ </div>

    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="194px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Yorumunuz:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="193px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="33px" OnClick="Button1_Click" Text="Yorum Yap" Width="130px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
