<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="yemekSitesi_1.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            margin-top: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        HAKKIMIZDA
    </p>
    <asp:DataList ID="DataList2" runat="server" Width="449px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    <asp:Image ID="Image1" runat="server" CssClass="auto-style10" Height="157px" ImageUrl="~/Resimler/blog.jpg" Width="450px" /> <!--Resim ekle-->
</asp:Content>
