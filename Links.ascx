<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Links.ascx.cs" Inherits="Links"   %>
<style type="text/css">
    .style2
    {
        width: 21%;
        height: 168px;
    }
    .style16
    {
        height: 33px;
        width: 105px;
    }
    .style17
    {
        height: 27px;
        width: 105px;
    }
    .style19
    {
        height: 32px;
        width: 105px;
    }
    .style20
    {
        height: 25px;
        width: 105px;
    }
</style>
    &nbsp;<br />
        <table class="style2">
            <tr>
                <td class="style16">
                    <asp:HyperLink ID="HLinkAboutUS" runat="server" Font-Underline="True" 
                        ForeColor="#3333FF" NavigateUrl="~/About Us.aspx" >About Us</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:HyperLink ID="HLinkContactUS" runat="server" Font-Underline="True" 
                        ForeColor="#3333FF" NavigateUrl="~/Contact Us.aspx">Contact Us</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:HyperLink ID="HLinkBloodSearch" runat="server" Font-Size="Small" 
                        Font-Underline="True" ForeColor="#3333FF" NavigateUrl="~/bloodbanksearch.aspx">BLood 
                    Search</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style19">
                <asp:HyperLink ID="HLinkMedicineSearch" runat="server" 
                        NavigateUrl="~/medicinesearch.aspx">Medicine Search</asp:HyperLink>
                    
                </td>
            </tr>
        </table>

    
