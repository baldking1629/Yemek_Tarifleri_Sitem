﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yemekler" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }

        .auto-style4 {
            text-align: left;
        }

        .auto-style5 {
            color: #000000;
            font-size: large;
            background-color: #CCCCCC;
        }

        .auto-style6 {
            text-align: left;
            width: 170px;
        }

        .auto-style7 {
            background-color: #99CCFF;
        }

        .auto-style8 {
            font-size: xx-small;
            background-color: #CCCCCC;
        }

        .auto-style9 {
            text-align: right;
        height: 24px;
    }

        .auto-style11 {
            font-weight: bold;
            font-size: small;
        }

        .auto-style12 {
            background-color: #CCCCCC;
            width: 334px;
            font-size: large;
        }

        .auto-style13 {
            text-align: right;
            background-color: #CCCCCC;
        }
        .auto-style14 {
            height: 26px;
        }
        .auto-style15 {
            text-align: center;
        }
    .auto-style16 {
        height: 24px;
    }
        .auto-style17 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">YEMEK LİSTESİ</td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="auto-style8" Height="20px"  Text="AÇ" OnClick="Button1_Click" />
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
                        <td class="auto-style3">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %> &islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Iconlar/delete2.png" Width="30px" CssClass="auto-style7" />
                            </a>
                        </td>
                        <td class="auto-style3">
                            <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Iconlar/update.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">YEMEK EKLEME</td>
                <td class="auto-style13">
                    <asp:Button ID="Button3" runat="server" BorderStyle="None" CssClass="auto-style8" Height="20px" Text="AÇ" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server" Visible="False">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">YEMEK AD:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="250px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK RESİM:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="300px" />
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="tb5" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="BtnEkle1" runat="server" CssClass="auto-style11" OnClick="BtnEkle0_Click" Text="EKLE" Width="100px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
