<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" Title="Untitled Page" %>

<%@ Register src="Links.ascx" tagname="Links" tagprefix="uc1" %>

<%@ Register src="LoginControl.ascx" tagname="LoginControl" tagprefix="uc2" %>
<%@ Register src="LinksControl.ascx" tagname="LinksControl" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style29
        {
        width: 51px;
    }
        .style32
    {
        height: 45px;
        width: 51px;
    }
    .style33
    {
        height: 45px;
        width: 151px;
    }
    .style34
    {
        width: 151px;
    }
    .style37
    {
        height: 21px;
        width: 151px;
    }
    .style38
    {
        height: 24px;
        width: 151px;
    }
    .style40
    {
        width: 151px;
        height: 30px;
    }
    .style41
    {
        height: 30px;
        width: 51px;
    }
    .style42
    {
        height: 45px;
        width: 1px;
    }
    .style43
    {
        height: 30px;
        width: 1px;
    }
    .style44
    {
        width: 1px;
    }
    .style45
    {
        height: 45px;
        width: 253px;
    }
    .style46
    {
        height: 21px;
        width: 253px;
    }
    .style47
    {
        height: 24px;
        width: 253px;
    }
    .style48
    {
        width: 253px;
        height: 30px;
    }
    .style49
    {
        width: 253px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
        <td class="style33"  >
            &nbsp;</td>
        <td class="style45"  >
            &nbsp;</td>
        <td class="style42" rowspan="4"  >
            <br />
            <br />
&nbsp;
        </td>
        <td class="style32" rowspan="4" >
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;
        </td>
    </tr>
    <tr>
        <td class="style37"  >
            User Name</td>
        <td class="style46"  >
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style38"  >
            Organization Name</td>
        <td class="style47"  >
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style37"  >
            Area/Address</td>
        <td class="style46"  >
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style40">
            Contact Info</td>
        <td class="style48">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td class="style43">
            </td>
        <td class="style41"  >
        </td>
    </tr>
    <tr>
        <td class="style34" >
            &nbsp;</td>
        <td class="style49" >
            &nbsp;</td>
        <td class="style44" >
            &nbsp;</td>
        <td class="style29" >
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style34">
            &nbsp;</td>
        <td class="style49">
            &nbsp;</td>
        <td class="style44">
            &nbsp;</td>
        <td class="style29" >
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style34">
            &nbsp;</td>
        <td class="style49">
            &nbsp;</td>
        <td class="style44">
            &nbsp;</td>
        <td class="style29" >
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

