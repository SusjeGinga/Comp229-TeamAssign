<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetailPage.aspx.cs" Inherits="Comp229_TeamAssign.DetailPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Ice Ski Shoes Rentail</h1>
    <br />
    <h3>Shoes detail</h3>

    <asp:DetailsView ID="shoeDetails" runat="server" AutoGenerateRows="False">
        <Fields>
            <asp:BoundField DataField="ShoeID" HeaderText="Shoe ID" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" />
            <asp:BoundField DataField="Category" HeaderText="Category" />            
        </Fields>
    </asp:DetailsView>



    
</asp:Content>
