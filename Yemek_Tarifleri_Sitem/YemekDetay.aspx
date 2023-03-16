<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-small;
        }

        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            color: #FFFFFF;
            font-size: 30pt;
        }
        .auto-style8 {
            background-color: #CCCCCC;
        }
        .auto-style9 {
            margin-left: 40px;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style7"></asp:Label>
        <br />
        <asp:DataList ID="DataList2" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: inset; border-bottom-width: thin">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                            &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style5" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </strong>
    <br />
    <div class="auto-style8">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Ad Soyad:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Mail:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Yorumunuz:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
