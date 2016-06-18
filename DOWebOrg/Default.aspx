<%@ Page Title="" Language="C#" MasterPageFile="~/DOWeb.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DOWebOrg.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/coda-slider.css" type="text/css" />
    <link href="templatemo_style.css" rel="stylesheet" type="text/css" />

    

    <script src="js/jquery-1.2.6.js" type="text/javascript"></script>
    <script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
    <script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="slider">
        <div id="templatemo_wrapper">
<%--<a href="Randevu.aspx">Randevu</a>--%>
            <div id="templatemo_social">
            </div>
            <!-- end of social -->

            <div id="templatemo_main">
                <div id="templatemo_sidebar">
                    <div id="header">
                        <h1>
                            <!--<a href="http://www.templatemo.com">Diş Kliniği</a>-->
                        </h1>
                    </div>
                    

                    <div id="menu">
                        <ul class="navigation">
                            <li><a href="#home" class="selected">Giriş</a></li>
                            <li><a href="#aboutus">Hakkımızda</a></li>
                            <li><a href="#services">Üye Ol</a></li>
                            <li><a href="#blog">Randevu Al</a></li>
                            <li><a href="#contactus" class="last">İletişim</a></li>
                           
                        </ul>
                    </div>
                </div>
                <!-- end of sidebar -->

                <div id="templatemo_content">
                    <div class="scroll">
                        <div class="scrollContainer">

                            <div class="panel" id="home">
                                <h2>Kliniğimize Hoş Geldiniz</h2>

                                <p><em>klinik hakkında bilgi vs..</em></p>
                                <img src="images/gallery/practiceLogo1.png" alt="Image 1" class="image_wrapper image_fl" />

                                <p style="color: black">Klinik hakkında genel bilgi klinik resmi eklenebilir. hangi tedavilerin yapıldığı ile ilgili kısa bilgiler...</p>

                                <div class="cleaner cleaner_h40"></div>
                                <h3>Ayrıca bakınız...</h3>

                                <ul class="tmo_list">
                                    <li><a href="#" class="service_one">diş bakımı</a></li>
                                    <li><a href="#" class="service_two">diş temizliği </a></li>
                                    <li><a href="#" class="service_three">vs..</a></li>
                                    <li><a href="#" class="service_four">vs..</a></li>
                                </ul>
                            </div>
                            <!-- end of home -->

                            <div class="panel" id="aboutus">
                                <h2>Hakkımızda</h2>

                                <img src="images/gallery/practiceLogo1.png" alt="Image 2" class="image_wrapper image_fr" />
                                <p style="color: black"><em>klinik sahibi hakkında bilgi...</em></p>
                                <p style="color: black">klinikteki çalışan doktorlar hakkında bilgi resim vs..</p>
                                <p style="color: black">biraz daha ayrıntı... </p>

                                <div class="cleaner cleaner_h40"></div>
                                <h3>Klinik sahibi hakkında ayıntı vs..</h3>
                                <blockquote>
                                    <p style="color: black">Açıklama...</p>
                                    <cite>
                                        <!--William - <span>CEO</span>-->
                                    </cite>
                                </blockquote>
                            </div>
                            <!-- end of about us -->

                            <div class="panel" id="services">
                                <h2>Üye Ol</h2>
                                <!--<img src="images/templatemo_image_01.jpg" alt="Image" class="image_wrapper image_fr" />-->
                                <table>
                                    <tr>
                                        <td>
                                            <label for="uf" style="color: black">TC NO :</label></td>

                                        <td>
                                            <%--<input type="text" id="uf" name="author" class="required input_field" />--%><asp:TextBox ID="tc" runat="server">

                                            </asp:TextBox></td>
                                        <td>
                                            <div class="cleaner_h10"></div>
                                            
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="uf1" style="color: black">AD :</label></td>

                                        <td>
                                            <%--<input type="text" id="uf1" name="author" class="required input_field" />--%>
                                            <asp:TextBox ID="ad" runat="server">

                                            </asp:TextBox>
                                        </td>
                                        <td>
                                            <div class="cleaner_h10"></div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="uf2" style="color: black">SOYAD :</label></td>

                                        <td>
                                            <%--<input type="text" id="uf2" name="author" class="required input_field" />--%><asp:TextBox ID="soyad" runat="server">

                                            </asp:TextBox></td>
                                        <td>
                                            <div class="cleaner_h10"></div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="uf3" style="color: black">E MAIL :</label></td>

                                        <td>
                                            <%--<input type="email" id="uf3" name="author" class="required input_field" />--%><asp:TextBox ID="mail" runat="server">

                                            </asp:TextBox></td>
                                        <td>
                                            <div class="cleaner_h10"></div>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>
                                            <label for="uf4" style="color: black">ŞİFRE:</label></td>

                                        <td>
                                            <%--<input type="password" id="uf4" name="author" class="required input_field" />--%><asp:TextBox ID="sifre" runat="server" TextMode="password"></asp:TextBox> </td>
                                        <td>
                                            <div class="cleaner_h10"></div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="uf5" style="color: black">TEL :</label></td>

                                        <td>
                                            <%--<input type="tel" id="uf5" name="author" class="required input_field" />--%><asp:TextBox ID="tel" runat="server">

                                            </asp:TextBox></td>
                                        <td>
                                            <div class="cleaner_h10"></div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="uf6" style="color: black">YAŞ :</label></td>

                                        <td>
                                            <%--<input type="number" id="uf6" name="author" class="required input_field" />--%><asp:TextBox ID="yas" runat="server" TextMode="Number">

                                            </asp:TextBox></td>
                                        <td>
                                            <div class="cleaner_h10"></div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <%--<input type="submit" class="submit_btn float_l" name="submit" id="kaydet" value=" Kaydet " onclick="yeniKayit"/>--%><asp:Button ID="uo" runat="server" OnClick="yeniKayit" Text="Kayıt Ol" CssClass="submit_btn"></asp:Button></td>
                                        <td>
                                            <input type="reset" class="submit_btn float_r" name="reset" id="temizle" value=" Temizle " /></td>

                                    </tr>
                                </table>
                                <%--<p style="color: black">üyelik formu...</p>--%>

                                <div class="cleaner cleaner_h40"></div>
                                <h3>Oturum Aç</h3>
                                <table>
                                    <tr>
                                        <td>
                                            <label for="gf" style="color: black">TC NO :</label></td>

                                        <td>
                                            <%--<input type="text" id="gf" name="author" class="required input_field" />--%><asp:TextBox ID="utc" runat="server" >

                                            </asp:TextBox></td>
                                        <td>
                                            <div class="cleaner_h10"></div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="gf1" style="color: black">ŞİFRE:</label></td>

                                        <td>
                                            <%--<input type="password" id="gf1" name="author" class="required input_field" />--%><asp:TextBox ID="usifre" runat="server" TextMode="Password">

                                            </asp:TextBox></td>
                                        <%--<td>
                                            <asp:Label runat="server" ID="lbl" Visible="false" Text="Hatalı giriş!!!" ForeColor="Red"></asp:Label>
                                        </td>--%>
                                        <td>
                                            <div class="cleaner_h10"></div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <%--<input type="submit" class="submit_btn float_l" name="submit" id="giris" value=" Giriş Yap " />--%><asp:Button ID="grs" runat="server" OnClick="girisYap" Text="Giriş Yap" CssClass="submit_btn"></asp:Button></td>

                                    </tr>
                                </table>
                                <!--<ul class="tmo_list">
                            <li><a href="#" class="service_one">Aliquam auctor odio sit amet felis laoreet a consequat sapien porttitor.</a></li>
                            <li><a href="#" class="service_two">Vestibulum eros nisi, lobortis ac pulvinar at, sagittis non felis. </a></li>
                            <li><a href="#" class="service_three">Suspendisse viverra elementum dui, sit amet tempor ante mollis sit amet.</a></li>
                            <li><a href="#" class="service_four">Proin malesuada rutrum sem et consequat. Maecenas et nunc sed leo faucibus cursus et sed diam. </a></li>
						</ul>-->
                            </div>
                            <!-- end of services -->

                            <div class="panel" id="blog">
                                <!--<div class="post_box" style="color:black">-->
                                <h2>Randevu Al</h2>

                                <!--<img src="images/templatemo_image_02.jpg" class="image_wrapper" alt="Image 2" />-->
                                <p>
                                    <!--<span class="cat">Posted in <a href="#">Templates</a>, <a href="#">Design</a></span> | <a href="#">36 comments</a>-->
                                </p>
                                <p style="color:black">Randevu alabilmek için <a href="#services" style="color:red">üye girişi</a> yapınız !</p>
                                <!--<a class="more float_r" href="#">More</a>-->
                                <div class="cleaner"></div>
                                <!--</div>-->
                                <div class="post_box" style="color: black">
                                    <h2>form</h2>
                                    <!--<img src="images/templatemo_image_03.jpg" class="image_wrapper" alt="Image 3" />-->
                                    <p>
                                        <!--<span class="cat">Posted in <a href="#">Social</a>, <a href="#">Web</a></span> | <a href="#">12 comments</a>-->
                                    </p>
                                    <p>form</p>
                                    <!--<a class="more float_r" href="#">More</a>-->
                                </div>
                                <div class="post_box" style="color: black">
                                    <h2>form</h2>
                                    <!--<img src="images/templatemo_image_04.jpg" class="image_wrapper" alt="Image 4" />-->
                                    <p>
                                        <!--<span class="cat">Posted in <a href="#">SEO</a>, <a href="#">Analytics</a></span> | <a href="#">24 comments</a>-->
                                    </p>
                                    <p>form</p>
                                    <!--<a class="more float_r" href="#">More</a>-->
                                    <div class="cleaner"></div>
                                </div>

                            </div>
                            <!-- end of gallery -->

                            <div class="panel" id="contactus">
                                <h2>Bize ulaşın.</h2>
                                <p style="color: black">iş yeri bilgisi</p>
                                <h5>mail adresi</h5>
                                <p style="color: black">
                                    iş yeri adresi<br />
                                </p>
                                <p style="color: black">Tel: 000-000-0000</p>

                                <div class="cleaner cleaner_h40"></div>

                                <div id="contact_form">
                                    <%--<form method="post" name="contact" action="#">--%>
                                    <table>
                                        <tr>
                                            <td>
                                                <label for="author2" style="color: black">İsim:</label></td>
                                            <%--<th>
                                                <input type="hidden" name="post" value="Send" /></th>--%>

                                            <td>
                                                <input type="text" id="author2" name="author" class="required input_field" /></td>
                                            <td>
                                                <div class="cleaner_h10"></div>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <label for="email" style="color: black">Email:</label></td>
                                            <td>
                                                <input type="text" id="email" name="email" class="validate-email required input_field" /></td>
                                            <td>
                                                <div class="cleaner_h10"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label for="text" style="color: black">Mesaj:</label></td>
                                            <td>
                                                <textarea id="text" name="text" rows="0" cols="0" class="required" style="width: 100%"></textarea></td>
                                            <td>
                                                <div class="cleaner_h10"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="submit" class="submit_btn float_l" name="submit" id="submit" value=" Send " /></td>
                                            <td>
                                                <input type="reset" class="submit_btn float_r" name="reset" id="reset" value=" Reset " /></td>

                                        </tr>


                                    </table>
                                    <%--</form>--%>
                                </div>

                            </div>
                            <!-- end of contact us -->

                        </div>
                        <!-- end scrollContainer -->
                    </div>
                </div>
                <!-- end of content -->

                <div class="cleaner">s</div>
            </div>
            <!-- end of main -->


            <%--<div id="templatemo_footer" style="color: black">
                Copyright © 2015 <a href="#">Diş Kliniği</a><br />
                <!--<a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>-->

                <div class="cleaner"></div>
            </div>--%>

        </div>
        <!-- end of wrapper -->
    </div>
    <!-- end of slider -->
</asp:Content>
