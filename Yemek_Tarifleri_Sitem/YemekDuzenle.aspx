<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 140px;
            text-align: right;
            font-size: large;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="txt_yemekad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txt_malzeme" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="txt_tarif" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="ddl_kategori" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yemek Resim:</strong></td>
            <td class="auto-style7">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="Güncelle" Width="250px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7"><strong>
                <asp:Button ID="btn_gununyemegi" runat="server" CssClass="auto-style8" OnClick="btn_gununyemegi_Click" Text="Günün Yemeği Seç" Width="250px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
