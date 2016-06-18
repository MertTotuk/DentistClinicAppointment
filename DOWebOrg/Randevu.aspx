<%@ Page Title="" Language="C#" MasterPageFile="~/DOWeb.Master" AutoEventWireup="true" CodeBehind="Randevu.aspx.cs" Inherits="DOWebOrg.Randevu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div style="margin-left:30%;margin-right:30%"><a href="Default.aspx">Ana Sayfaya dön</a></div>
    <div style="margin-left:30%;margin-right:30%"><asp:Button runat="server" OnClick="cikis" Text="ÇIKIŞ YAP"/></div>--%>
    <div id="anadiv" style="margin-left:50%;margin-right:30%;">
        
        <table id="table" style="width:100%;color:#3366FF;table-layout:fixed">
            <tr><td></td></tr>
            <tr><td>RANDEVU AL</td></tr>
            <tr><td>
                <asp:Label ID="Label1" runat="server" Text="Lütfen T.C Kimlik numaranızı giriniz." ForeColor="#3366FF"></asp:Label></td></tr>
            <tr><td>
            <input class="required input_field" id="Text1" type="text" /></td></tr>
            <tr><td>Ad:</td></tr>
            <tr><td><input class="required input_field" id="Text2" type="text" /></td></tr>
            <tr><td>Soyad:</td></tr>
            <tr><td><input class="required input_field" id="Text3" type="text" /></td></tr>
            <tr><td>Yaş:</td></tr>
            <tr><td><input class="required input_field" id="Text4" type="text" /></td></tr>
            <tr><td>İletişim Telefonu:</td></tr>
            <tr><td><input class="required input_field" id="Text5" type="text" /></td></tr>
            <tr><td>Kısaca Şikayetiniz</td></tr>
            <tr><td>
                <textarea class="required" id="TextArea1" cols="20" rows="2"></textarea></td></tr>
            
            <tr><td><br />Randevu Almak istediğiniz Diş Hekimini Seçiniz</td></tr>
            <tr style="color:black"><td>
                <%--<asp:RadioButton ID="RadioButton1" runat="server" Text="Serdar Acar" />&nbsp;&nbsp; <asp:RadioButton ID="RadioButton2" runat="server" Text="Şerife Esra Ünal" />--%>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="SERDAR ACAR"></asp:ListItem>
                    <asp:ListItem Value="ŞERİFE ESRA &#220;NAL"></asp:ListItem>
                </asp:RadioButtonList>
            </td></tr>
            <tr><td>Lütfen Randevu Almak İstediğniz Tarihi Seçiniz</td></tr>
            <tr><td>
                <input type="date" id="uf6" name="author" class="required input_field" />
                

            </td>
                
<%--            <td>
                <asp:ListBox ID="ListBox1" runat="server" Height="100%">
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>9:20</asp:ListItem>
                    <asp:ListItem>9:40</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>10:20</asp:ListItem>
                    <asp:ListItem Value="10:40"></asp:ListItem>
                    <asp:ListItem Value="11:00"></asp:ListItem>
                    <asp:ListItem>11:20</asp:ListItem>
                    <asp:ListItem>11:40</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                </asp:ListBox></td>--%>
            
            </tr>
            <tr><td>
                <input type="submit" class="submit_btn float_l" name="submit" id="giris" value=" RANDEVU AL "/></td>
            </tr>
            <tr><td>
                <input type="reset" class="submit_btn float_l" name="reset" id="res" value=" FORMU TEMİZLE " /></td>
            </tr>
            <tr><td>
                <asp:GridView ID="GridView1" runat="server">
      </asp:GridView>
                </td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>

            <tr><td></td></tr>
            <tr><td></td></tr>
        </table>
        
    </div>
    
    
</asp:Content>
