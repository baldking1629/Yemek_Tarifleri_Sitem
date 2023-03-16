<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
            font-weight: bold;
        }
        .auto-style5 {
            text-align: right;
            font-weight: bold;
            height: 26px;
            color: #333333;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Malzemeler:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Yapılış:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Resim:</td>
            <td style="margin-left: 40px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="auto-style1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Öneren:</td>
            <td class="auto-style6" style="margin-left: 40px">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mail Adresi:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#FFFF99" Height="40px" style="margin-left: 50px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
