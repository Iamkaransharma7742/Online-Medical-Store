<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="WebUserControl" %>
<style type="text/css">
    .style1
        {
            width: 31%;
            height: 68px;
            margin-left: 0px;
        }
        .style8
    {
        width: 73px;
        height: 36px;
        color: #0000FF;
    }
    .style10
    {
        height: 36px;
        width: 178px;
    }
    .style9
    {
        width: 73px;
        color: #0000FF;
    }
        .style16
        {
            width: 73px;
            color: #0000FF;
            height: 24px;
        }
        .style19
        {
            width: 73px;
            color: #0000FF;
            height: 30px;
        }
        .style13
        {
            width: 73px;
            color: #0000FF;
            height: 23px;
        }
        .style21
    {
        width: 178px;
    }
    .style22
    {
        height: 24px;
        width: 178px;
    }
    .style23
    {
        height: 30px;
        width: 178px;
    }
    .style24
    {
        height: 23px;
        width: 178px;
    }
    .style25
    {
        width: 73px;
        color: #0000FF;
        height: 21px;
    }
    .style26
    {
        height: 21px;
        width: 178px;
    }
    .style27
    {
        width: 73px;
        color: #0000FF;
        height: 8px;
    }
    .style28
    {
        height: 8px;
        width: 178px;
    }
</style>
    <table class="style1" style="height: 278px">
        <tr>
            <td class="style8">
                User ID</td>
            <td class="style10">
                &nbsp;<asp:TextBox ID="txtUser" runat="server" Height="25px" Width="146px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style25">
            </td>
            <td class="style26">
                <asp:RequiredFieldValidator ID="rvUser" runat="server" 
                    ControlToValidate="txtUser" ErrorMessage="Please Enter User Id"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Password</td>
            <td class="style21">
                &nbsp;<asp:TextBox ID="txtPassword" runat="server" Height="25px" Width="146px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style21">
                <asp:RequiredFieldValidator ID="rvPassword" runat="server" 
                    ControlToValidate="txtPassword" Display="Dynamic" 
                    ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
            </td>
            <td class="style22">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19">
            </td>
            <td class="style23">
                <asp:Button ID="btnsubmit" runat="server" Text="submit" 
                onclick="btnsubmit_Click" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style21">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="stay me signed in" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style21">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                ForeColor="#3333CC" NavigateUrl="~/ForgotPassword.aspx">Forgot your Password?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style27">
                </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td class="style24">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="True" 
                ForeColor="#3333CC" NavigateUrl="~/CreateNewUser.aspx">Sign Up for new Account</asp:HyperLink>
            </td>
        </tr>
    </table>

