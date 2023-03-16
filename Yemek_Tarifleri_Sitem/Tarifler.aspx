<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Tarifler" %>
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
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">ONAYSIZ TARİF LİSTESİ</td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="auto-style8" Height="20px"  Text="AÇ" OnClick="Button1_Click"   />
                </td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Iconlar/indir.jpeg" Width="30px" />
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
                <td class="auto-style16">ONAYLI TARİF LİSTESİ</td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" BorderStyle="None" CssClass="auto-style8" Height="20px"  Text="AÇ" OnClick="Button2_Click"   />
                </td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Iconlar/indir.jpeg" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
