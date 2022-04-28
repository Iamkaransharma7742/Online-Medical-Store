<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="admin_AdminLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style6
    {
        width: 139px;
        height: 57px;
    }
    .style8
    {
        width: 87px;
        height: 57px;
        color: #0000FF;
    }
    .style10
    {
        height: 57px;
        width: 162px;
    }
        .style7
    {
        height: 57px;
    }
    .style5
    {
        width: 139px;
    }
    .style9
    {
        width: 73px;
        color: #0000FF;
    }
        .style15
        {
            width: 139px;
            height: 24px;
        }
        .style16
        {
            width: 87px;
            color: #0000FF;
            height: 24px;
        }
        .style17
        {
            height: 24px;
        }
        .style18
        {
            width: 139px;
            height: 30px;
        }
        .style19
        {
            width: 87px;
            color: #0000FF;
            height: 30px;
        }
        .style20
        {
            height: 30px;
        }
        .style12
        {
            width: 139px;
            height: 23px;
        }
        .style13
        {
            width: 87px;
            color: #0000FF;
            height: 23px;
        }
        .style14
        {
            height: 23px;
        }
        .style21
    {
        width: 139px;
        height: 92px;
    }
    .style22
    {
        width: 87px;
        height: 92px;
        color: #0000FF;
    }
    .style23
    {
        height: 92px;
        width: 162px;
        color: #8D1CFF;
        font-size: x-large;
    }
    .style25
    {
        height: 92px;
    }
    .style26
    {
        width: 142px;
        height: 92px;
    }
    .style27
    {
        width: 142px;
        height: 57px;
    }
    .style28
    {
        width: 142px;
    }
    .style29
    {
        width: 142px;
        height: 24px;
    }
    .style30
    {
        width: 142px;
        height: 30px;
    }
    .style31
    {
        width: 142px;
        height: 23px;
    }
        .style32
    {
        width: 87px;
        color: #0000FF;
        height: 40px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 101px; background-color: #99CCFF;">
        <tr>
            <td class="style21">
                <asp:Image ID="Image3" runat="server" Height="102px" 
                    ImageUrl="~/images/swpakey.jpg" Width="141px" />
            </td>
            <td class="style22">
            </td>
            <td class="style23">
                Admin Login</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style25">
            </td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style8">
            User ID</td>
            <td class="style10">
                <asp:TextBox ID="txtUser" runat="server" Height="23px" Width="146px"></asp:TextBox>
            </td>
            <td class="style27">
                <asp:RequiredFieldValidator ID="rvUser" runat="server" 
                ControlToValidate="txtUser" ErrorMessage="Please Enter User Id"></asp:RequiredFieldValidator>
            </td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style32">
            Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Height="24px" Width="147px"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:RequiredFieldValidator ID="rvPassword" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="Please enter password" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
            </td>
            <td class="style16">
            </td>
            <td class="style17">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style29">
            </td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style18">
            </td>
            <td class="style19">
            </td>
            <td class="style20">
                <asp:Button ID="btnsubmit" runat="server" Text="submit" 
                onclick="btnsubmit_Click" />
            </td>
            <td class="style30">
            </td>
            <td class="style20">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="stay me signed in" />
            </td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                ForeColor="#3333CC">Forgot your Password?</asp:HyperLink>
            </td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
            </td>
            <td class="style13">
            </td>
            <td class="style14">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="True" 
                ForeColor="#3333CC">Sign Up for new Account</asp:HyperLink>
            </td>
            <td class="style31">
            </td>
            <td class="style14">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>

