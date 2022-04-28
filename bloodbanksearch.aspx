<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bloodbanksearch.aspx.cs" Inherits="bloodbanksearch" Title="Untitled Page" %>

<%@ Register src="NavigateLinks.ascx" tagname="NavigateLinks" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
    {
        width: 86%;
            height: 215px;
        }
    .style7
    {
        width: 101px;
    }
    .style8
    {
        text-align: center;
        }
    .style9
    {
        height: 50px;
        background-image:28b.jpg;
    }
    .style10
    {
        width: 141px;
        height: 39px;
    }
    .style11
    {
        width: 101px;
        height: 39px;
    }
    .style12
    {
        height: 39px;
    }
    .style13
    {
        width: 131px;
        height: 34px;
    }
    .style14
    {
        width: 101px;
        height: 34px;
    }
    .style15
    {
        height: 34px;
    }
    .style16
    {
        width: 131px;
        height: 21px;
    }
    .style17
    {
        width: 101px;
        height: 21px;
    }
    .style18
    {
        height: 21px;
    }
        .style19
        {
            height: 28px;
            text-align: left;
        }
        .style20
        {
            height: 28px;
            width: 566px;
        }
        .style21
        {
            width: 131px;
        }
        .style23
        {
            text-align: center;
            width: 131px;
        }
        .style24
        {
            height: 28px;
            width: 7px;
        }
        .style25
        {
            height: 28px;
            text-align: left;
            width: 322px;
        }
        .style26
        {
            width: 131px;
            height: 28px;
        }
    .style27
    {
        width: 131px;
        height: 40px;
    }
    .style28
    {
        height: 40px;
        width: 129px;
        text-align: center;
        background-image: url('28b.jpg');
    }
    .style29
    {
        color: #FF0000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td class="style21">
            &nbsp;
            <asp:Image ID="Image2" runat="server" Height="90px" ImageAlign="TextTop" 
                ImageUrl="~/images/22b.jpg" Width="114px" />
                                </td>
        <td class="style28" colspan="3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style29">Blood Bank Search</span></td>
        <td class="style28" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style26">
            <asp:HyperLink ID="HLinkHome" runat="server" Height="20px" 
                NavigateUrl="~/HomePage.aspx" Width="121px">Click here to Login</asp:HyperLink>
        </td>
        <td class="style20" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;</td>
        <td class="style24" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </td>
        <td class="style25">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        <td class="style19">
            <uc1:NavigateLinks ID="NavigateLinks2" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style13">
        </td>
        <td class="style14">
            Blood Group</td>
        <td class="style15" colspan="3">
            <asp:DropDownList ID="ddlBloodGoup" runat="server" Height="16px" Width="127px">
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style15" colspan="2">
        </td>
    </tr>
    <tr>
        <td class="style27">
        </td>
        <td class="style11">
            City</td>
        <td class="style12" colspan="3">
            <asp:DropDownList ID="ddlCity" runat="server" Height="16px" Width="127px" 
                DataSourceID="SqlDataSourceForBBSDWLCity" DataTextField="City" 
                DataValueField="City">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceForBBSDWLCity" runat="server" 
                ConnectionString="<%$ ConnectionStrings:GoogleConnectionStringForBBSDWLC %>" 
                SelectCommand="SELECT [City] FROM [tblUserDetails]"></asp:SqlDataSource>
        </td>
        <td class="style12" colspan="2">
        </td>
    </tr>
    <tr>
        <td class="style16">
        </td>
        <td class="style17">
        </td>
        <td class="style18" colspan="3">
        </td>
        <td class="style18" colspan="2">
        </td>
    </tr>
    <tr>
        <td class="style23">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" style="margin-top: 0px" Text="Button" 
                onclick="Button1_Click" />
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8" colspan="7">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <RowStyle BackColor="#EFF3FB" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        &nbsp;&nbsp;&nbsp; &nbsp;</td>
    </tr>
    </table>
</asp:Content>

