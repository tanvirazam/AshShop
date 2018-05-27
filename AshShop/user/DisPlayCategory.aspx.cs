using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AshShop.BLL;
using AshShop.DAL.Model;

namespace AshShop.user
{
    public partial class DisPlayCategory : System.Web.UI.Page
    {
        //private string requestQuery, requestSeachProduct;
        //ProductManager aProductManager = new ProductManager();
             ProductCategoryManager aProductCategoryManager=new ProductCategoryManager();
             



        //Dis Product List
        protected void Page_Load(object sender, EventArgs e)
        {

            List<ProductCategory> aProductCategories = aProductCategoryManager.LoadProductCategories();
            ProductRepeater.DataSource = aProductCategories;
            ProductRepeater.DataBind();

            //requestSeachProduct = Request.QueryString["search"];
            //requestQuery = Request.QueryString["category"];
            //if (requestQuery == null)
            //{
            //    ProductRepeater.DataSource = aProductManager.DisplayCategoryManager();
            //    ProductRepeater.DataBind();
            //}
            //else
            //{
            //    ProductRepeater.DataSource = aProductManager.DisplayProductManagerByCategory(requestQuery);
            //    ProductRepeater.DataBind();
            //}
            //if (requestQuery == null && requestSeachProduct != null)
            //{
            //    ProductRepeater.DataSource = aProductManager.DisplayProductManagerBySearch(requestSeachProduct);
            //    ProductRepeater.DataBind();
            //}

        }
    }
}