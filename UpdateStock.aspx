<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateStock.aspx.cs" Inherits="UpdateStock" Title="Untitled Page" %>

<%@ Register src="NavigateLinks.ascx" tagname="NavigateLinks" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 43px;
        }
        .style5
        {
            height: 40px;
        }
        .style6
        {
            height: 33px;
            text-align: right;
        }
        .style7
        {
            height: 43px;
            width: 81px;
        }
        .style8
        {
            height: 40px;
            width: 81px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style6" colspan="4">
            <uc1:NavigateLinks ID="NavigateLinks1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style4">
                <asp:HyperLink ID="HLinkBloodBank" runat="server" 
                    NavigateUrl="~/BloodBankUpdate.aspx">BloodBankUpdate</asp:HyperLink>
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style8">
            </td>
            <td class="style5">
                <asp:HyperLink ID="HLinkMedicineUpdate" runat="server" 
                    NavigateUrl="~/medicinestockupdate.aspx">MedicineUpdste</asp:HyperLink>
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
    </table>
</asp:Content>

