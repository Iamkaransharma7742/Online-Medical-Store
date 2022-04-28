<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="medicinesearch.aspx.cs" Inherits="medicinesearch" Title="Untitled Page"  StylesheetTheme="Theme1"%>

<%@ Register src="NavigateLinks.ascx" tagname="NavigateLinks" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100%;
        background-color: #FFFFCC;
    }
    .style6
    {
        font-size: large;
        color: #990099;
    }
    .style11
    {
        height: 40px;
        width: 389px;
    }
    .style12
    {
        width: 389px;
    }
    .style16
    {
        height: 54px;
        width: 389px;
    }
    .style17
    {
        }
        .style18
        {
            width: 125px;
        }
        .style19
        {
            text-align: center;
        }
        .style22
        {
            text-align: center;
            width: 154px;
        }
        .style25
    {
        width: 432px;
            height: 93px;
        }
        .style26
        {
            text-align: center;
            width: 154px;
            height: 93px;
        }
        .style28
        {
            height: 93px;
        width: 19px;
    }
        .style29
        {
            width: 125px;
            height: 93px;
        }
        .style32
        {
            width: 154px;
            height: 40px;
        }
        .style33
        {
            width: 154px;
            height: 54px;
        }
        .style34
        {
            font-size: x-large;
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td class="style19" colspan="2">
            <span class="style34">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></td>
        <td class="style19">
            <span class="style34">Medicine Search</span></td>
        <td class="style19">
            <uc1:NavigateLinks ID="NavigateLinks1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style26">
            <asp:HyperLink ID="HLinkHome" runat="server" Height="20px" 
                NavigateUrl="~/HomePage.aspx" Width="121px" CssClass="mymenu">Click here to Login</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td class="style29">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">&nbsp;</span></td>
        <td style="text-align: right" class="style25">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td style="text-align: justify" class="style28">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style32">
        </td>
        <td class="BodyText">
            City</td>
        <td class="style11" colspan="2">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="130px" 
                DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="City" 
                DataMember="DefaultView" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                CssClass="TextBox">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=(local);Initial Catalog=Google;User ID=sa;Password=test" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT [City] FROM [tblUserDetails] ORDER BY [City]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td class="style33">
        </td>
        <td class="BodyText">
            Medicine Name</td>
        <td class="style16" colspan="2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td class="BodyText">
            Dosage</td>
        <td class="style12" colspan="2">
            <asp:TextBox ID="TextBox2" runat="server" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style12" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style12" colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style12" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17" colspan="4">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" style="text-align: center">
                <RowStyle BackColor="#EFF3FB" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style12" colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

