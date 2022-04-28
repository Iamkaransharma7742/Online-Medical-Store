<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Queris.aspx.cs" Inherits="SendQuerisToAdmin" Title="Untitled Page" %>

<%@ Register src="NavigateLinks.ascx" tagname="NavigateLinks" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 169px;
        }
        .style5
        {
            width: 169px;
            color: #800080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Text="View Reply" Width="138px" 
                    onclick="Button1_Click" />
            </td>
            <td style="text-align: right">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <uc1:NavigateLinks ID="NavigateLinks1" runat="server" />
                </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lblTypeqry" runat="server" Text="Type Query Here"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="80px" TextMode="MultiLine" 
                    Width="557px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                
                <asp:Label ID="lblDoYou" runat="server" Font-Bold="True" ForeColor="Red" 
                    Text="Do you wants to send another Query?"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSend" runat="server" Height="25px" onclick="btnSend_Click" 
                    Text="send" Width="70px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnYes" runat="server" onclick="btnYes_Click" Text="Yes" 
                    Width="57px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNo" runat="server" onclick="btnNo_Click" Text="No" 
                    Width="57px" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField HeaderText="Query" DataField="UserQuery" />
                <asp:BoundField HeaderText="Reply" DataField="Reply" />
                
                </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

