﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BusDetails.aspx.cs" Inherits="BusBookingProject.Admin.BusDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top: 5%">
    </div>
    <div class="row centered-form" style="margin-top: 5%">
        <div class="col-lg-8 col-sm-8 col-md-2 col-sm-offset-2 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Otobüs Ekle</h3>
                </div>
                <div class="panel-body">
                    <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                    <div id="divMessage" runat="server" />
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblBus" runat="server" Text="Otobüs Numara" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtBusNo" runat="server" class="form-control input-sm floatlabel"/>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtBusNo" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Otobüs NO gerekli." /><br />
                        </div>
                       <div class="form-group">
                            <asp:Label ID="lblSeatRow" runat="server" Text="Koltuk Sayısı" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtSeatRows" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSeatRows" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Koltuk sayısı gerekli." /><br />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Ait olduğu şehir" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtOrigin" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOrigin" Display="None" ID="RequiredFieldValidator1" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Şehir Gerekli" /><br />
                        </div>
                          <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Otobüs Adı" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtBusName" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtBusName" Display="None" ID="RequiredFieldValidator3" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Otobüs İsmi Gerekli" /><br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblLastName" runat="server" Text="Otobüs Tipi" Font-Bold="true"></asp:Label>
                             <asp:DropDownList ID="ddlBusType" runat="server" class="form-control input-sm floatlabel">
                                 <asp:ListItem Value="0" Text="Otobüs Tipi"></asp:ListItem>
                                 <asp:ListItem Value="1" Text="Business"></asp:ListItem>
                                  <asp:ListItem Value="2" Text="">Ekonomi</asp:ListItem>
                             </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlBusType" Display="None" ID="rfVLastName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Soyadı Gerekli." /><br />
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Koltuk sırası" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtSeatColumn" runat="server" class="form-control input-sm floatlabel"  />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSeatColumn" Display="None" ID="rfvPassword" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Koltuk sırası gerekli" /><br />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Hedef" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtDetination" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDetination" Display="None" ID="RequiredFieldValidator2" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Hedef Gerekli" /><br />
                        </div>
                       
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Button ID="btnSave" runat="server" style="width:auto;margin-top:20px;" Text="Add Bus Details" OnClick="btnSave_Click" class="btn btn-info " ValidationGroup="vgRegister"  CausesValidation="True" ViewStateMode="Inherit" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
