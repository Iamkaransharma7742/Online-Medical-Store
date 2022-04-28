<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NavigateLinks.ascx.cs" Inherits="NavigateLinks" %>
<style type="text/css">
    .style1
    {
        width: 29%;
        height: 18px;
    }
    .style2
    {
        width: 96px;
    }
    .style3
    {
        width: 56px;
    }
</style>

    <table class="style1">
        <tr>
            <td class="style3">
                <asp:HyperLink ID="HLinkHome" runat="server" NavigateUrl="~/AfterLogin.aspx" 
                    CssClass=".mymenu">Home</asp:HyperLink>
            </td>
            <td class="style2">
                <asp:HyperLink ID="HLinkQueries" runat="server" NavigateUrl="~/Queris.aspx" 
                    CssClass=".mymenu">SendQueries</asp:HyperLink>
            </td>
            <td>
                <asp:LinkButton ID="lnbLogOut" runat="server" PostBackUrl="~/HomePage.aspx" 
                    OnClick="lnbLogOut_Click" CssClass=".mymenu">LogOut</asp:LinkButton>
            </td>
        </tr>
        
    </table>



