<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            color: #000000;
            font-size: large;
            background-color: #CCCCCC;
        }

        .auto-style16 {
            height: 24px;
        }

        .auto-style9 {
            text-align: right;
            height: 24px;
        }

        .auto-style8 {
            font-size: xx-small;
            background-color: #CCCCCC;
        }

        .auto-style17 {
            font-size: large;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">YEMEK LİSTESİ</td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="auto-style8" Height="20px" Text="AÇ" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Iconlar/indir.jpeg" Width="30px" />
                            </a>
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
