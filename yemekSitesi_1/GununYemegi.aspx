<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="yemekSitesi_1.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            font-size: large;
            text-align: center;
        }
        .auto-style12 {
            margin-right: 66px;
        }
        .auto-style14 {
            text-align: right;
        }
        .auto-style15 {
            font-size: medium;
        }
        .auto-style16 {
            width: 149px;
            text-align: left;
            font-size: medium;
        }
        .auto-style17 {
            width: 101%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style12">
        <ItemTemplate>
            <table class="auto-style17">
                <tr>
                    <td class="auto-style11"><strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style10" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>Malzemeler:
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style9" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>Tarif:<asp:Label ID="Label10" runat="server" CssClass="auto-style9" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Image ID="Image2" runat="server" Height="165px" ImageUrl="~/Resimler/makarna2.png" Width="400px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style16"><strong>Puan:<asp:Label ID="Label11" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                    &nbsp;</strong></td>
                                <td class="auto-style14"><strong><span class="auto-style15">Eklenme Tarihi:</span><asp:Label ID="Label12" runat="server" CssClass="auto-style15" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
