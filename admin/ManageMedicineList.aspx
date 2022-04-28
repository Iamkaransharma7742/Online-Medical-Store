<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageMedicineList.aspx.cs" Inherits="admin_ManageMedicineList" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
        width: 890px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td>
            <asp:HyperLink ID="HLinkadminhome" runat="server" 
                NavigateUrl="~/admin/adminhome.aspx">AdminHome</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

