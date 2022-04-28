<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateContactInfo.aspx.cs" Inherits="UpdateContactInfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 273px;
        }
        .style5
        {
            width: 77px;
            color: #000000;
            font-size: medium;
            text-align: left;
        height: 46px;
    }
    .style13
    {
        height: 22px;
    }
    .style14
    {
        width: 77px;
        height: 22px;
        text-align: left;
    }
    .style18
    {
        width: 77px;
        height: 33px;
        text-align: left;
        color: #000000;
    }
    .style19
    {
        height: 33px;
    }
    .style20
    {
        height: 46px;
    }
    .style21
    {
        width: 77px;
        height: 36px;
        text-align: left;
        color: #000000;
    }
    .style22
    {
        height: 36px;
    }
    .style23
    {
        width: 77px;
        height: 35px;
        text-align: left;
        color: #000000;
    }
    .style24
    {
        height: 35px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style3">
            <tr>
                <td class="style5">
                    OrgName</td>
                <td class="style20">
                    <asp:TextBox ID="txtOrgname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    Area</td>
                <td class="style22">
                    <asp:TextBox ID="txtArea" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style23">
                    Address</td>
                <td class="style24">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    City</td>
                <td class="style22">
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    Phone</td>
                <td class="style19">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style13">
                    <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
                        Text="Update" />
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style13">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;
</asp:Content>

