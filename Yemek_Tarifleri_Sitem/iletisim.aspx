<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        height: 26px;
    }
    .auto-style5 {
        font-size: large;
        font-weight: bold;
    }
    .auto-style6 {
        height: 26px;
        text-align: right;
    }
    .auto-style7 {
        text-align: right;
    }
    .auto-style8 {
        font-size: x-large;
        color: #CCCCCC;
            text-align: center;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style8" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mail Adresiniz:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mesaj:</strong></td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style4"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="Gönder" Width="230px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
