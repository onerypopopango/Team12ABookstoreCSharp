﻿<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="SA46Team12BookShopApp.Cart" %>

<%@ MasterType VirtualPath="~/Layout.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div id="mainContainer" class="container">
        <div class="container">

            <%--jumboton--%>
            <div class="jumbotronKit">
                <h1 class="text-center"><i class="fa fa-cart-arrow-down"></i>&nbsp;Cart</h1>
                <hr />
            </div>

            <div class="row">
                <asp:Panel ID="pnError" runat="server" Width="100%">
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <strong>Error!</strong> Your quantity ordered for this book exceeds our stock balance!
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </asp:Panel>
            </div>

            <div class="row">
                <div class="col-lg-12">

                    <%--gridview--%>
                    <asp:GridView ID="cartGridview" runat="server" CssClass="Grid table table-striped" AutoGenerateColumns="False" GridLines="None"
                        EmptyDataText="No records has been added." Width="100%" CellPadding="5">

                        <HeaderStyle HorizontalAlign="Center" BackColor="#3D7169" ForeColor="#FFFFFF" />
                        <AlternatingRowStyle BackColor="#F8F8F8" />

                        <Columns>

                            <%--<asp:TemplateField HeaderText="List">
                            <ItemTemplate>
                                <asp:Label ID="lblList" runat="server" Text="0" />
                            </ItemTemplate>
                            <ItemStyle Width="120px" HorizontalAlign="Center" />
                            </asp:TemplateField>--%>    <%--list column (to delete)--%>

                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" ItemStyle-Width="120">
                                <ItemStyle Width="120px" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <%--title column--%>

                            <asp:BoundField DataField="Price" HeaderText="Unit Price" SortExpression="Price" ItemStyle-Width="120">
                                <ItemStyle Width="120px" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <%--price column--%>

                            <asp:TemplateField HeaderText="Qty">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="MyButtonClick">
                                    <i class="fa fa-minus-square"></i></asp:LinkButton>
                                    &nbsp;  &nbsp;                              
                                    <asp:Label ID="lblQty" CssClass="text-dark" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-info" OnClick="MyButtonClick2">
                                    <i class="fa fa-plus-square"></i></asp:LinkButton>
                                    <%--<button class="btn btn-info"><i class="fas fa-plus-square"></i></button>--%>
                                </ItemTemplate>
                                <ItemStyle Width="120px" HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" ItemStyle-Width="120">
                                <ItemStyle Width="120px" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <%--discount column--%>
                            <%--qty column--%>

                            <asp:TemplateField HeaderText="Subtotal">
                                <ItemTemplate>
                                    <asp:Label ID="lblSubtotal" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="120px" HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <%--subtotal column--%>
                        </Columns>
                    </asp:GridView>

                    <br />
                    <%--buttons--%>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2 col-sm-12">
                                <asp:Button ID="btnContinueShopping" runat="server" Text="Continue Shopping" OnClick="Products" CssClass="btn btn-warning float-right" />

                            </div>
                            <div class="col-md-8"></div>
                            <div class="col-md-2 col-sm-12">
                                <asp:Button ID="btnCheckout" runat="server" Text="Checkout" OnClick="Checkout" CssClass="btn btn-primary float-left" />

                            </div>
                        </div>
                    </div>
                    <br />

                </div>
            </div>
        </div>
    </div>
</asp:Content>
