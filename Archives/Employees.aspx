<%@ Page Title="Employees" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="CompStore.Archives.Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <p>These are the Employees registered on our data base.</p>
    </hgroup>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4"
        DataKeyNames="Id" ForeColor="#333333" GridLines="None" ItemType="CompStore.Model.Employee" 
        OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectMethod="GridView1_GetData">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="Selec." ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="80px" ReadOnly="True" SortExpression="Id"></asp:BoundField>
            <asp:BoundField DataField="JobTitle" HeaderText="Job Title" ItemStyle-Width="150px" ReadOnly="True" SortExpression="JobTitle"></asp:BoundField>
            <asp:BoundField DataField="FirstName" HeaderText="First Name" ItemStyle-Width="150px" ReadOnly="True" SortExpression="FirstName"></asp:BoundField>
            <asp:BoundField DataField="SecondName" HeaderText="Second Name" ItemStyle-Width="150px" ReadOnly="True" SortExpression="SecondName"></asp:BoundField>
            <asp:BoundField DataField="EAddress.Street" HeaderText="Adress" ItemStyle-Width="100px" ReadOnly="True" SortExpression="EAddress.Street"></asp:BoundField>
            <asp:BoundField DataField="EAddress.Number" ItemStyle-Width="50px" ReadOnly="True" SortExpression="EAddress.Number"></asp:BoundField>
            <asp:BoundField DataField="EAddress.CPostal" HeaderText="Postal C" ItemStyle-Width="100px" ReadOnly="True" SortExpression="EAddress.CPostal"></asp:BoundField>
            <asp:BoundField DataField="EAddress.City" HeaderText="Town" ItemStyle-Width="100px" ReadOnly="True" SortExpression="EAddress.City"></asp:BoundField>
            <asp:BoundField DataField="EAddress.Country" HeaderText="Country" ItemStyle-Width="100px" ReadOnly="True" SortExpression="EAddress.Country"></asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
