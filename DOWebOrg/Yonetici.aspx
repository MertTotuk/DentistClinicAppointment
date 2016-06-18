<%@ Page Title="" Language="C#" MasterPageFile="~/DOWeb.Master" AutoEventWireup="true" CodeBehind="Yonetici.aspx.cs" Inherits="DOWebOrg.Yonetici" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>

    <h2 style="margin-right: 30%; margin-left: 48%; text-align:center">Yönetici Giriş yaptı!!!</h2>
        <table style="margin-right: 48%; margin-left: 48%">


            <tr>
                <td>
                    <h3>Hastalar</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="hasta" runat="server" Style="border-collapse: initial; color: black">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="doktor" runat="server" Style="border-collapse: initial; color: black">
                    </asp:GridView>
                </td>
            </tr>
        </table>
</div>



    
</asp:Content>
