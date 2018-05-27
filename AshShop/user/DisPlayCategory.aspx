
<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="DisPlayCategory.aspx.cs" Inherits="AshShop.user.DisPlayCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="userc1" runat="server">
    <asp:Repeater ID="ProductRepeater" runat="server">
        <HeaderTemplate>
            <ul class="imagegalary">
        </HeaderTemplate>
        <ItemTemplate>
            <li class="product"><a href="DisplayProduct.aspx?category=<%#Eval("ProductCategoryName") %>">
                                   
                          <img  src="<%#Eval("ProductCategoryImage") %>" class="imgshow"  alt="" />
                                  
                
                                </a>
<%--                <div class="product-info">
                    <h3><%#Eval("ProductName") %></h3>
                    <div class="product-desc">
                        <h4><%#Eval("ProductDescription") %></h4>

                        <strong class="price">Price:<%#Eval("ProductPrice") %></strong>
                        <strong class="price">Quantity:<%#Eval("ProductQuntity") %></strong>
                    </div>
                </div>--%>
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

                   @media (max-width: 1500px) {
           .product {
               width: 300px;
               height: 300px;
           }
       }
      
      @media (max-width: 1500px) {
          .imgshow {
              width: 300px;
              height: 300px;
          }
      }

             @media (max-width: 1020px) {
           .product {
               width: 300px;
               height: 300px;
           }
       }
      
      @media (max-width: 1020px) {
          .imgshow {
              width: 300px;
              height: 300px;
          }
      }
      
       @media (max-width: 992px) {
           .product {
               width: 300px;
               height: 300px;
           }
       }
      
      @media (max-width: 992px) {
          .imgshow {
              width: 300px;
              height: 300px;
          }
      }

             @media (max-width: 720px) {
           .product {
               width: 250px;
               height: 250px;
           }
       }
      
      @media (max-width: 720px) {
          .imgshow {
              width: 250px;
              height: 250px;
          }
      }

                   @media (max-width: 520px) {
           .product {
               width: 200px;
               height: 200px;
           }
       }
      
      @media (max-width: 520px) {
          .imgshow {
              width: 200px;
              height: 200px;
          }
      }
  </style>

</asp:Content>

