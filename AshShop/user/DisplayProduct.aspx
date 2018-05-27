<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="DisplayProduct.aspx.cs" Inherits="AshShop.user.DisplayProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="userc1" runat="server">
    <asp:Repeater ID="ProductRepeater" runat="server">
        <HeaderTemplate>
            <ul class="imagegalary">
        </HeaderTemplate>
        <ItemTemplate>
            <li class="productsdiv">
                
                <div class="imagediv">
                <a  href="ProductDescription.aspx?id=<%#Eval("id") %>">
                <img src="<%#Eval("ProductImage") %>" class="imagesize" alt="" /></a>
                </div>
               
                    
                    <div class="productsdiv-info">
                    <h3><%#Eval("ProductName") %></h3>
                    <div class="product-desc">
                        <h4><%#Eval("ProductDescription") %></h4>

                        <strong class="price">Price:<%#Eval("ProductPrice") %>Tk</strong>
                        <strong class="price">Quantity:<%#Eval("ProductQuntity") %></strong>
                    </div>
                </div>
                    

             


            </li>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>

    </asp:Repeater>
     <style>
      
      .imagegalary {
          display: flex;
          flex-wrap: wrap;

      }
      
       @media (min-width: 992px) {
           .productsdiv {
               width: 300px;
               height: 300px;
               display: flex;
            
               flex-wrap: wrap;
           }
       }
      
      @media (min-width: 992px) {
          .imagesize {
              width: 140px;
              height: 280px;
          }
      }
            @media (min-width: 992px) {
          .imagediv {
              width: 140px;
              height: 280px;
          }
      }

            @media (min-width: 992px) {
          .productsdiv-info {
              padding: 5px;
              width: 140px;
              height: 280px;
          }
      }
  </style>


</asp:Content>
