<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetailPage.aspx.cs" Inherits="Comp229_TeamAssign.DetailPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Ice Ski Shoes Rentail</h1>
    <br />
    <h3>Shoes detail</h3>

    <asp:DetailsView ID="shoeDetails" runat="server" AutoGenerateRows="False">
        <Fields>
            <asp:BoundField DataField="Model" HeaderText="Model" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" />
            <asp:BoundField DataField="Quality" HeaderText="Quality" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:ImageField DataImageUrlField="Image" ControlStyle-Width="200" 
                ControlStyle-Height="200" DataAlternateTextField="Image" 
                DataAlternateTextFormatString="Image" HeaderText="Image" />             
        </Fields>
    </asp:DetailsView>
    <asp:Button ID="rentBtn" runat="server" Text="Rent this shoe" OnClick="RentBtn_Click"/>


    
</asp:Content>
