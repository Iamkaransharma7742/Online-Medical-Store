<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LinksControl.ascx.cs" Inherits="LinksControl"  %>
<style type="text/css">
    .style2
    {
        width: 129px;
        height: 40px;
    }
    .style4
    {
        width: 129px;
        height: 40px;
    }
    .style9
    {
        width: 129px;
        height: 40px;
    }
    .style10
    {
        width: 129px;
        height: 40px;
    }
</style>
<table class="style2">
            <tr>
                <td class="style10" height="40">
                    
                    <asp:HyperLink ID="HLinkAdminLogin" runat="server" 
                        NavigateUrl="~/AdminLogin.aspx" CssClass=".mymenu" >Admin Login</asp:HyperLink>
                    
                </td>
            </tr>
            <tr>
                <td class="style9" height="40">
                    <asp:HyperLink ID="HLinkAboutUS" runat="server" Font-Underline="True" 
                        ForeColor="#3333FF" NavigateUrl="~/About Us.aspx" CssClass=".mymenu" >About Us</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style10" height="40">
                    <asp:HyperLink ID="HLinkContactUS" runat="server" Font-Underline="True" 
                        ForeColor="#3333FF" NavigateUrl="~/Contact Us.aspx" CssClass="mymenu">Contact Us</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style4" height="40">
                    <asp:HyperLink ID="HLinkBloodSearch" runat="server" Font-Size="Small" 
                        Font-Underline="True" ForeColor="#3333FF" NavigateUrl="~/bloodbanksearch.aspx">BLood 
                    Search</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style4" height="40">
                    <asp:HyperLink ID="HLinkMedicineSearch" runat="server" 
                        NavigateUrl="~/medicinesearch.aspx">MedicineSeaech</asp:HyperLink>
                </td>
            </tr>
        </table>
