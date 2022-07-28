<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="BusBookingProject.Admin.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:6%">
        <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="Kayıt Bulunamadı." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass=""
                    Width="100%" Font-Size="12">
                    <Columns>
                        <asp:TemplateField HeaderText="Sr.No">
                            <ItemTemplate>
                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="OTOBÜS ADI" DataField="BusName" />
                         <asp:BoundField HeaderText="YOLCU ADI" DataField="PaxName" />
                        <asp:BoundField HeaderText="Email" DataField="Email" />
                         <asp:BoundField HeaderText="İLETİŞİM" DataField="Contact" />
                         <asp:BoundField HeaderText="KALKIŞ" DataField="Origin" />
                         <asp:BoundField HeaderText="AÇIKLAMA" DataField="Destination" />
                         <asp:BoundField HeaderText="TARİH" DataField="TravelDate" />
                         <asp:BoundField HeaderText="KOLTUK NO" DataField="SeatNo" />
                         <asp:BoundField HeaderText="ÜCRET" DataField="Fare" />
                        <asp:BoundField HeaderText="EKLEYEN" DataField="BookedBy" />
                    </Columns>
                </asp:GridView>
    </div>
</asp:Content>
