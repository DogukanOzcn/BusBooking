<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="BusBookingProject.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:6%">
                   <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="Kayıt Bulunamadı.." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass=""
                    Width="100%" Font-Size="12" OnRowCommand="gdTicketReport_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Sr.No">
                            <ItemTemplate>
                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="PNR No" DataField="PNRNo" />
                        <asp:BoundField HeaderText="Toplam Bilet Sayısı" DataField="TotalTickets" />
                        <asp:BoundField HeaderText="Tutar" DataField="TotalAmount" />
                        <asp:TemplateField HeaderText="EYLEM">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtndownloadTicket" runat="server" CommandName="Download Ticket" CommandArgument='<%# Container.DataItemIndex %>'>İNDİR</asp:LinkButton>
                                <asp:HiddenField ID="hdnPNRNo" runat="server" Value='<%# Eval("PNRNo") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

              <div id="ticket" runat="server" visible="false">
                <h1 style="font-weight: bold">BILETCI.COM</h1>
                <br />
                <br />

                <h2 style="font-weight: bold">Bilet Bilgileri</h2>
                <div class="table-bordered">
                    <table class="table-striped" id="tbtPNR" runat="server" style="width: 100%; color: green; font-size: large">
                        <tr>
                            <td style="font-weight: bold">PNR No</td>
                            <td>
                                <asp:Label ID="lblTransactionNo" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold">Toplam Bilet Sayisi</td>
                            <td>
                                <asp:Label ID="lblTotalTickets" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold">Toplam tutar</td>
                            <td>
                                <asp:Label ID="lblTotalAmount" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold">Otobus Adi</td>
                            <td>
                                <asp:Label ID="lblBusName" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <h2 style="font-weight: bold">YOLCU DETAYLARI</h2>
                <asp:GridView ID="gdPaxDetails" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="25" CssClass="table table-hover table-bordered" Style="margin-top: 5%" Width="100%">
                    <Columns>
                        <asp:TemplateField HeaderText="Sr.No">
                            <ItemTemplate>
                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="ADI" DataField="Fname" />
                        <asp:BoundField HeaderText="SOYADI" DataField="Lname" />
                        <asp:BoundField HeaderText="ILETISIM" DataField="Contact" />
                        <asp:BoundField HeaderText="NO" DataField="SeatNo" />
                         <asp:BoundField HeaderText="TARIH" DataField="TravelDate" />
                         <asp:BoundField HeaderText="NEREDEN" DataField="Origin" />
                        <asp:BoundField HeaderText="NEREYE" DataField="Destination" />
                        <asp:BoundField HeaderText="BINIS YERI" DataField="PlaceName" />
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <p style="text-align: center; font-style: italic; font-size: 10pt">
                    BILETCI.COMU TERCIH ETTINIZ IÇIN TESEKKUR EDER IYI YOLCULUKLAR DILERIZ
                </p>
            </div>
    </div>
</asp:Content>
