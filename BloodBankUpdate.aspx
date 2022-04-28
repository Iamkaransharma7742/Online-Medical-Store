<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BloodBankUpdate.aspx.cs" Inherits="AddGroup" Title="Untitled Page" %>

<%@ Register src="NavigateLinks.ascx" tagname="NavigateLinks" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 87%;
        background-color: #FFFFCC;
    }
        .style5
        {
        width: 291px;
    }
        .style6
        {
            width: 188px;
        }
        .style7
        {
            width: 51px;
        }
        .style8
        {
            width: 49px;
        }
        .style9
        {
            width: 127px;
        }
        .style10
        {
            width: 74px;
        }
        .style11
        {
            width: 3px;
        }
    .style12
    {
        width: 291px;
        height: 22px;
    }
    .style13
    {
        height: 22px;
    }
    .style14
    {
        width: 74px;
        height: 22px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="style10">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="style11">
                <uc1:NavigateLinks ID="NavigateLinks1" runat="server" />
            </td>
            <td style="text-align: right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                    onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting">
                <Columns>
                
                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" HeaderText="Select"/>
                
                <asp:TemplateField HeaderText="Blood Group">
                <EditItemTemplate>
                <asp:TextBox ID="txtBGroup" runat="server" Text='<%#Bind("Bgroup")%>'>
                </asp:TextBox>
                
                </EditItemTemplate>
                <ItemTemplate>                
                <asp:Label ID="lblBGroup" runat="server" Text='<%#Bind("Bgroup")%>'>
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
                
                
                <asp:TemplateField HeaderText="Stock">
                <EditItemTemplate>
                <asp:TextBox ID="txtStock" runat="server" Text='<%#Bind("Stock") %>'>
                </asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>                
                <asp:Label ID="lblStock" runat="server" Text='<%#Bind("Stock")%>'>
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="BankName">
               
                <ItemTemplate>                
                <asp:Label ID="lblBName" runat="server" Text='<%#Eval("BankName")%>'>
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
                
                
                
                 <asp:TemplateField HeaderText="Sno" Visible="false">
                
                <ItemTemplate>                
                <asp:Label ID="lblID" runat="server" Text='<%#Eval("Sno")%>'>
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
                
                </Columns>
                </asp:GridView>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
            <asp:Image ID="Image2" runat="server" Height="127px" ImageAlign="TextTop" 
                ImageUrl="~/images/22b.jpg" Width="183px" />
                                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                Group</td>
            <td class="style6">
                <asp:DropDownList ID="ddlGroup" runat="server" Height="18px" Width="140px">
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style8">
                Stock</td>
            <td class="style9">
                <asp:TextBox ID="txtStock" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            </td>
            <td class="style10">
                BankName</td>
            <td colspan="2">
                <asp:TextBox ID="txtBankName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="4">
                <asp:SqlDataSource ID="SqlDataSourceForBloodStockUpdateddlGroup" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GoogleConnectionStringForBloodStockUpdateddlGroup %>" 
                    SelectCommand="SELECT [BGroup] FROM [tblBloodBanks]"></asp:SqlDataSource>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAddNewGroup" runat="server" Text="AddNewGroup" 
                    onclick="Button1_Click" />
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td colspan="4" class="style13">
                </td>
            <td class="style14">
                </td>
            <td colspan="2" class="style13">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

