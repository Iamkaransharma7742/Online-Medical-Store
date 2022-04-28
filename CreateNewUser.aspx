<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateNewUser.aspx.cs" Inherits="createnewuser" Title="Untitled Page" StyleSheetTheme="Theme1"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100%;
    }   
    .style24    
    {
        width: 148px;
    }
    .style25
    {
        height: 38px;
        width: 148px;
    }
    .style26
    {   
        height: 37px;
        width: 148px;
    }
    .style27
    {
        height: 40px;
        width: 148px;
    }
    .style28
    {
        height: 36px;
        width: 148px;
    }
    .style29
    {
        height: 34px;
        width: 148px;
    }
    .style30
    {
        height: 35px;
        width: 148px;
    }
        .style32
        {
            height: 38px;
            width: 495px;
        }
        .style33
        {
            height: 37px;
            width: 495px;
        }
        .style34
        {
            height: 40px;
            width: 495px;
        }
        .style35
        {
            height: 36px;
            width: 495px;
        }
        .style36
        {
            height: 34px;
            width: 495px;
        }
        .style37
        {
            height: 35px;
            width: 495px;
        }
        .style39
        {
            width: 495px;
        }
        .style41
        {
        width: 212px;
    }
        .style42
        {
        height: 38px;
        width: 212px;
    }
        .style43
        {
            height: 37px;
            width: 212px;
        }
        .style44
        {
        height: 40px;
        width: 212px;
    }
        .style45
        {
            height: 36px;
            width: 212px;
        }
        .style46
        {
            height: 34px;
            width: 212px;
        }
        .style47
        {
            height: 35px;
            width: 212px;
        }
        .style48
        {
        width: 123px;
    }
        .style49
        {
        height: 38px;
        width: 123px;
    }
        .style50
        {
            height: 37px;
            width: 123px;
        }
        .style51
        {
        height: 40px;
        width: 123px;
    }
        .style52
        {
            height: 36px;
            width: 123px;
        }
        .style53
        {
            height: 34px;
            width: 123px;
        }
        .style54
        {
            height: 35px;
            width: 123px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td class="style41">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="style48">
            &nbsp;</td>
        <td class="style39">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td class="style24">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    <tr>
        <td class="style41">
            &nbsp;</td>
        <td class="style48">
            &nbsp;</td>
        <td class="style39">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx" 
                CssClass="HyperLinks">click 
            here to login</asp:HyperLink>
        </td>
        <td class="style24">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style42">
        </td>
        <td class="style49">
            Username</td>
        <td class="style32">
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtUsername" ErrorMessage="can not leave empty">can not 
            leave empty</asp:RequiredFieldValidator>
        </td>
        <td class="style25">
        </td>
    </tr>
    <tr>
        <td class="style43">
        </td>
        <td class="style50">
            Password</td>
        <td class="style33">
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="can not leave empty">can not 
            leave empty</asp:RequiredFieldValidator>
        </td>
        <td class="style26">
        </td>
    </tr>
    <tr>
        <td class="style44">
        </td>
        <td class="style51">
            ConfirmPassword</td>
        <td class="style34">
            <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtConfirm" ErrorMessage="can not leave empty">can not 
            leave empty</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtConfirm" 
                ErrorMessage="password is mismatching">password is mismatching</asp:CompareValidator>
        </td>
        <td class="style27">
        </td>
    </tr>
    <tr>
        <td class="style44">
            &nbsp;</td>
        <td class="style51">
            OrgName</td>
        <td class="style34">
            <asp:TextBox ID="txtOrgNmae" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtOrgNmae" ErrorMessage="can not leave empty">can not 
            leave empty</asp:RequiredFieldValidator>
        </td>
        <td class="style27">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style45">
        </td>
        <td class="style52">
            Area</td>
        <td class="style35">
            <asp:TextBox ID="txtArea" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        </td>
        <td class="style28">
        </td>
    </tr>
    <tr>
        <td class="style46">
        </td>
        <td class="style53">
            Address</td>
        <td class="style36">
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtAddress" ErrorMessage="can not leave empty"></asp:RequiredFieldValidator>
        </td>
        <td class="style29">
        </td>
    </tr>
    <tr>
        <td class="style42">
        </td>
        <td class="style49">
            City</td>
        <td class="style32" style="margin-left: 720px">
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtCity" ErrorMessage="can not leave empty"></asp:RequiredFieldValidator>
        </td>
        <td class="style25">
        </td>
    </tr>
    <tr>
        <td class="style47">
        </td>
        <td class="style54">
            Contact No</td>
        <td class="style37" style="margin-left: 720px">
            <asp:TextBox ID="txtContactno" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtContactno" ErrorMessage="can not leave empty"></asp:RequiredFieldValidator>
        </td>
        <td class="style30">
        </td>
    </tr>
    <tr>
        <td class="style41">
            &nbsp;</td>
        <td class="style48">
            Security Question</td>
        <td style="margin-left: 720px" class="style39">
            <asp:DropDownList ID="ddlSQuestion" runat="server" Height="16px" Width="243px">
                <asp:ListItem>What is your name?</asp:ListItem>
                <asp:ListItem>What is your pets name?</asp:ListItem>
                <asp:ListItem>what is your best frind name?</asp:ListItem>
                <asp:ListItem>What is your favorite food?</asp:ListItem>
                <asp:ListItem>what is your School name?</asp:ListItem>
                <asp:ListItem>What is your father name?</asp:ListItem>
                <asp:ListItem>what is mother name?</asp:ListItem>
                <asp:ListItem>what is your company name?</asp:ListItem>
                <asp:ListItem>for which company you are working now?</asp:ListItem>
                <asp:ListItem>what is your college name?</asp:ListItem>
                <asp:ListItem>For which company you worked first?</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="ddlSQuestion" ErrorMessage="select Question">select 
            Question</asp:RequiredFieldValidator>
        </td>
        <td class="style24">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style41">
            &nbsp;</td>
        <td class="style48">
            Answer</td>
        <td style="margin-left: 720px" class="style39">
            <asp:TextBox ID="txtAnswer" runat="server" Width="130px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="txtAnswer" ErrorMessage="type answer">type answer</asp:RequiredFieldValidator>
        </td>
        <td class="style24">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style41">
            &nbsp;</td>
        <td class="style48">
            &nbsp;</td>
        <td style="margin-left: 720px" class="style39">
            <asp:Button ID="btncrete" runat="server" Height="26px" Text="create" 
                Width="54px" onclick="btncrete_Click" />
        </td>
        <td class="style24">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style41">
            &nbsp;</td>
        <td class="style48">
            &nbsp;</td>
        <td style="margin-left: 720px" class="style39">
            &nbsp;</td>
        <td class="style24">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

