<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginControl.ascx.cs" Inherits="WebUserControl" %>
<style type="text/css">

    .style4
    {
        font-size: x-large;
        color: #800080;
        font-style: italic;
        }
        .style1
        {
            width: 173%;
            height: 49px;
        }
        .style8
    {
        width: 88px;
        height: 57px;
        color: #0000FF;
    }
    .style11
    {
        height: 57px;
        width: 151px;
    }
        .style9
    {
        width: 88px;
        color: #0000FF;
    }
        .style16
        {
            width: 88px;
            color: #0000FF;
            height: 24px;
        }
        .style19
        {
            width: 88px;
            color: #0000FF;
            height: 30px;
        }
        .style13
        {
            width: 88px;
            color: #0000FF;
            height: 23px;
        }
        .style21
    {
        width: 151px;
    }
    .style22
    {
        height: 24px;
        width: 151px;
    }
    .style23
    {
        height: 30px;
        width: 151px;
    }
    .style24
    {
        height: 23px;
        width: 151px;
    }
    .style25
    {
        height: 57px;
        width: 206px;
    }
    .style26
    {
        width: 206px;
    }
    .style27
    {
        height: 24px;
        width: 206px;
    }
    .style28
    {
        height: 30px;
        width: 206px;
    }
    .style29
    {
        height: 23px;
        width: 206px;
    }
    .style30
    {
        text-decoration: underline;
    }
</style>
<asp:Panel ID="Panel1" runat="server" Height="317px" Width="157px">
    <p style="width: 270px">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style30">Login </span>
        </span></strong>
    </p>
    <table class="style1" style="height: 101px">
        <tr>
            <td class="style8">
                User ID</td>
            <td class="style25">
                <asp:TextBox ID="txtUser" runat="server" Height="20px" Width="146px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="rvUser" runat="server" 
                    ControlToValidate="txtUser" ErrorMessage="Please Enter User Id">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Password</td>
            <td class="style26">
                <asp:TextBox ID="txtPassword" runat="server" Height="20px" Width="146px"></asp:TextBox>
            </td>
            <td class="style21">
                <asp:RequiredFieldValidator ID="rvPassword" runat="server" 
                    ControlToValidate="txtPassword" Display="Dynamic" 
                    ErrorMessage="Please enter password">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
            </td>
            <td class="style27">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style22">
            </td>
        </tr>
        <tr>
            <td class="style19">
            </td>
            <td class="style28">
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    Text="submit" />
            </td>
            <td class="style23">
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style26">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="stay me signed in" />
            </td>
            <td class="style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style26">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                    ForeColor="#3333CC">Forgot your Password?</asp:HyperLink>
            </td>
            <td class="style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td class="style29">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="True" 
                    ForeColor="#3333CC">Sign Up for new Account</asp:HyperLink>
            </td>
            <td class="style24">
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style29">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" />
            </td>
            <td class="style24">
                &nbsp;</td>
        </tr>
    </table>
</asp:Panel>
