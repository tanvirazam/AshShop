<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="AddOfferUI.aspx.cs" Inherits="AshShop.admin.AddOfferUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="adminc1" runat="server">
     <table>
                 <tr>
            <td>Enter New Name:</td>
             <td>
                 <asp:TextBox ID="txtAddOfferName" runat="server"></asp:TextBox></td>
        </tr>
                <tr>
            <td>Enter New Offer:</td>
             <td>
                  <asp:FileUpload ID="fileUploadProduct" runat="server" />

             </td>
        </tr>
        

                <tr>
            
             <td colspan="2">
                 <asp:Button ID="btnAddoffer" runat="server" Text="Add offer" OnClick="btnAddoffer_Click" />
               </td>
        </tr>
                        <tr>
            
             <td colspan="2">
                 <asp:Label ID="lblofferAddMessage" runat="server" Text=""></asp:Label>
               </td>
        </tr>
    </table>
    <asp:DataList ID="DataListDeleteProductoffer" runat="server">
        <HeaderTemplate>
            <table>
        </HeaderTemplate>
        
        <ItemTemplate>
            <td><%#Eval("ProductOfferName") %></td>
             <td><a href="DeleteOffer.aspx?category=<%#Eval("ProductOfferName") %>">Delete</a></td>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:DataList>
</asp:Content>
