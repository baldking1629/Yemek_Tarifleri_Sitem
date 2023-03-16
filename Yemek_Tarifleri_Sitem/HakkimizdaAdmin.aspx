<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.HakkimizdaAdmin" %>
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
        margin-left: 80px;
    }
    .auto-style18 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style19 {
        text-align: center;
        margin-left: 80px;
    }
    .auto-style20 {
        font-size: medium;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">HAKKIMIZDA</td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="auto-style8" Height="20px"  Text="AÇ" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style20" Height="250px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Text="Güncelle" Width="200px" OnClick="Button2_Click" />
                    </strong></td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
