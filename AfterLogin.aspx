<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AfterLogin.aspx.cs" Inherits="AfterLogin" Title="Untitled Page" %>

<%@ Register src="NavigateLinks.ascx" tagname="NavigateLinks" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
    .style3
    {
        width: 96%;
    }
    .style4
    {
        width: 118px;
    }
    .style9
    {
        width: 118px;
        height: 38px;
    }
    .style11
    {
        height: 38px;
    }
    .style12
    {
        width: 118px;
        height: 41px;
    }
    .style14
    {
        height: 41px;
    }
    .Mystyle
    {
     height:50;
     width:50;
    }
    .HyperLinks
    {
    	background-color:Blue;
    }
        .style15
        {
            width: 118px;
            height: 34px;
        }
        .style17
        {
            height: 34px;
        }
    .style6
    {
        width: 118px;
        height: 51px;
    }
    .style8
    {
        height: 51px;
    }
        .style18
        {
            width: 118px;
            height: 27px;
        }
        .style20
        {
            height: 27px;
        }
    .style21
    {
        width: 178px;
    }
    .style22
    {
        height: 38px;
        width: 178px;
    }
    .style23
    {
        height: 41px;
        width: 178px;
    }
    .style24
    {
        height: 51px;
        width: 178px;
    }
    .style25
    {
        height: 27px;
        width: 178px;
    }
    .style26
    {
        height: 34px;
        width: 178px;
    }
    .style27
    {
        width: 128px;
    }
    .style28
    {
        width: 128px;
        height: 38px;
    }
    .style29
    {
        width: 128px;
        height: 41px;
    }
    .style30
    {
        width: 128px;
        height: 51px;
    }
    .style31
    {
        width: 128px;
        height: 27px;
    }
    .style32
    {
        width: 128px;
        height: 34px;
    }
    .style33
    {
        width: 100%;
    }
    .style34
    {
        width: 130px;
        height: 40px;
        color: #000000;
    }
    .style35
    {
        width: 123px;
    }
    .style36
    {
        width: 123px;
        height: 32px;
    }
    </style>


    
</asp:Content>




<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style3">
        <tr>
            <td class="style27">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style21">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <uc1:NavigateLinks ID="NavigateLinks1" runat="server" />
            </td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style9">
                                    User Name</td>
            <td class="style22">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;</td>
            <td class="style34">
                Organization Name</td>
            <td class="style23">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="style14">
            </td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style6">
                Area/Address</td>
                                <td class="style24">
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                                <td class="style8">
                                </td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    &nbsp;</td>
                                <td class="style18">
                                    Contact Info</td>
            <td class="style25">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="style20">
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style15">
            </td>
            <td class="style26">
            </td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style27">
                </td>
            <td class="style4">
                </td>
            <td class="style21">
                </td>
            <td>
                </td>
        </tr>
    </table>
</asp:Content>



<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style33">
    <tr>
        <td class="style36">
            <asp:HyperLink ID="HLinkUpdateStock" runat="server" 
                    NavigateUrl="~/UpdateStock.aspx">Update Stock</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style35">
            <asp:HyperLink ID="HLinkUpdateContact" runat="server" 
                    NavigateUrl="~/UpdateContactInfo.aspx">Update Contact</asp:HyperLink>
        </td>
    </tr>
</table>

</asp:Content>




