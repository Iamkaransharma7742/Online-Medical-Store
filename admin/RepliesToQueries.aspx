<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RepliesToQueries.aspx.cs" Inherits="admin_RepliesToQueries" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            text-align: center;
        }
        .style6
        {
            text-align: left;
            height: 93px;
        }
        .style7
        {
            text-align: center;
            height: 93px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HLinkadminhome" runat="server" 
                    NavigateUrl="~/admin/adminhome.aspx">AdminHome</asp:HyperLink>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnVRead" runat="server" Height="28px" Text="View All Read" 
                    Width="120px" onclick="btnVRead_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDRead" runat="server" Height="28px" Text="Delete All Read" 
                    Width="120px" onclick="btnDRead_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUnread" runat="server" Height="28px" Text="View Unread" 
                    Width="120px" onclick="btnUnread_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanging="GridView2_SelectedIndexChanging" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" onrowdeleting="GridView2_RowDeleting">
                
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                
                <Columns>
                <asp:CommandField ShowSelectButton="true" ShowDeleteButton="true"/>
                <asp:TemplateField HeaderText="QueryID">
                <ItemStyle  Font-Bold="true"  ForeColor="DarkRed" />
                
                <ItemTemplate>
                <asp:Label ID="lblQryID" runat="server" Text='<%#Eval("QueryID") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
                
                
                <asp:TemplateField HeaderText="From">
                <ItemStyle  Font-Bold="true"  ForeColor="DarkRed" />
                <ItemTemplate>
                <asp:Label ID="lblUID" runat="server" Text='<%#Eval("UserID") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
                <asp:BoundField HeaderText="Query" DataField="UserQuery" />
                <asp:BoundField HeaderText="Reply" DataField="Reply" />
                </Columns>
                
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanging="GridView1_SelectedIndexChanging" 
                    onrowdeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                <Columns>
                <asp:CommandField ShowSelectButton="true" ShowDeleteButton="true"/>
                <asp:TemplateField HeaderText="QueryID">
                <ItemStyle  Font-Bold="true"  ForeColor="DarkRed" />
                
                <ItemTemplate>
                <asp:Label ID="lblQryID" runat="server" Text='<%#Eval("QueryID") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
              
                
                
                <asp:TemplateField HeaderText="From">
                <ItemStyle  Font-Bold="true"  ForeColor="DarkRed" />
                <ItemTemplate>
                <asp:Label ID="lblUID" runat="server" Text='<%#Eval("UserID") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
                <asp:BoundField HeaderText="Query" DataField="UserQuery" />
                </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#000066" Text="To"></asp:Label>
&nbsp;<asp:TextBox ID="txtTo" runat="server" Height="22px" Width="243px"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:TextBox ID="txtQryID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style7">
                <asp:Panel ID="Panel2" runat="server" Height="152px" style="text-align: left">
                    <asp:TextBox ID="txtReply" runat="server" Height="138px" TextMode="MultiLine" 
                        Width="400px"></asp:TextBox>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSend" runat="server" Height="25px" onclick="btnSend_Click" 
                    Text="send" Width="64px" />
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

