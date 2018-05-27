using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AshShop.BLL;
namespace AshShop.admin
{
    public partial class DeleteOffer : System.Web.UI.Page
    {
        ProductOfferManager aProductOfferManager = new ProductOfferManager();
        private string deleteCategoryQuery;
        protected void Page_Load(object sender, EventArgs e)
        {
            deleteCategoryQuery = Request.QueryString["category"];
            aProductOfferManager.DeleteOffer(deleteCategoryQuery);
            Response.Redirect("AddOfferUI.aspx");

        }
    }
}