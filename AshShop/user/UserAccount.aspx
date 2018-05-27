<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="AshShop.user.UserAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="userc1" runat="server">
       
    
    
    <div class="container">
                                                                                    
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
      
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Address</th>
        <th>City</th>
        <th>Mobile Number</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        
        <td><asp:Label ID="txtFirstName" runat="server" Text=""></asp:Label></td>
        <td><asp:Label ID="txtLastName" runat="server" Text=""></asp:Label></td>
        <td><asp:Label ID="txtAddress" runat="server" Text=""></asp:Label></td>
        <td><asp:Label ID="txtCity" runat="server" Text=""></asp:Label></td>
        <td><asp:Label ID="txtMobileNumber" runat="server" Text=""></asp:Label></td>
      </tr>
    </tbody>
  </table>
  </div>
</div>
</asp:Content>
