<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BusBookingProject.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:6%">
        <div class="row">
            <div class="col-lg-12">
                <asp:Image ID="imgBus" ImageAlign="AbsMiddle" ImageUrl="~/img/sivas.png" style="width:100%" runat="server" />
            </div>
            <div class="col-lg-12" style="margin-top:2%">
                <div class="panel panel-default">
                    <div class="panel-heading">
                         <div class=" panel-title">
                        <h3>BİLETCİ.COM</h3>
                    </div>
                       </div>
                    <div class="panel-body">
                        <p style="font-size:large">
                           OTOBÜS BİLETİ SATIN ALMA SİTESİ
                        </p>
                    </div>
                </div>
            </div>
             <div class="col-lg-12" style="margin-top:2%">
                <div class="panel panel-default">
                    <div class="panel-heading">
                         <div class=" panel-title">
                        <h3>NEDEN BİLETCİ.COM'U TERCİH ETMELİSİNİZ?</h3>
                    </div>
                       </div>
                    <div class="panel-body" style="font-size:large">
                           <ul>
                               <li>
                               Hızlı ve güvenli bilet satın alma.
                               </li>
                               <li>
                                Sıfır güvenlik ihlali.
                               </li>
                               <li>
                                 %100 güvenli bilet rezervasyon işlemi.
                               </li>
                               <li>
                                  Bütün kredi ve banka kartları onaylı.
                               </li>
                               <li>
                                  Telefonundan bilet satın al.
                               </li>
                               <li>
                                   Çevrimiçi satın alma iptali ve canlı destek.
                               </li>
                               <li>
                                  En hızlı otobüs bileti satın alma.
                               </li>
                               <li>
                                 Türkiye otobüs bileti rezervasyon sitesi.
                               </li>
                           </ul>
                       
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>
