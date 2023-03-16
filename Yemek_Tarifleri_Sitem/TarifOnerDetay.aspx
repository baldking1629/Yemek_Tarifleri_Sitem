<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            text-align: right;
        }
        .auto-style9 {
            margin-left: 40px;
        }
        .auto-style11 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style12 {
            text-align: right;
            height: 30px;
        }
        .auto-style13 {
            margin-left: 40px;
            height: 30px;
        }
        .auto-style14 {
            text-align: right;
            height: 160px;
        }
        .auto-style15 {
            margin-left: 40px;
            height: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Tarif Ad:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="txt_tarifad" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Malzemeler:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="txt_malzemeler" runat="server" Height="80px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Yapılış:</strong></td>
                <td class="auto-style15">
                    <asp:TextBox ID="txt_yapilis" runat="server" Height="150px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Resim:</strong></td>
                <td class="auto-style9">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="txt_tarifoneren" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Öneren Mail:</strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txt_mail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Kategori:</strong></td>
                <td class="auto-style9">
                    <asp:DropDownList ID="ddl_kategori" runat="server" Height="20px" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="btn_onayla" runat="server" CssClass="auto-style11" OnClick="btn_onayla_Click" Text="Onayla" Width="200px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
