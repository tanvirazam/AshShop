using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AshShop.BLL;
using AshShop.DAL.Model;
using AshShop.Extra_AppCode;

namespace AshShop.admin
{
    public partial class AddOfferUI : System.Web.UI.Page
    {
        private string getRnadomnumber;
        Offer aOffer = new Offer();
        ProductOfferManager aProductOfferManager = new ProductOfferManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("AdminLoginUI.aspx");
            }

            List<Offer> aProductCategories = aProductOfferManager.LoadProductOfferss();
            DataListDeleteProductoffer.DataSource = aProductCategories;
            DataListDeleteProductoffer.DataBind();

        }

        protected void btnAddoffer_Click(object sender, EventArgs e)
        {
            getRnadomnumber = RandomImageName.GetRandomImageName(10).ToString();
            fileUploadProduct.SaveAs(Request.PhysicalApplicationPath + "./images/" + getRnadomnumber + fileUploadProduct.FileName.ToString());
            aOffer.ProductOfferImage = "../images/" + getRnadomnumber + fileUploadProduct.FileName.ToString();
            if (txtAddOfferName.Text != null)
            {
                aOffer.ProductOfferName = txtAddOfferName.Text;
            }
            else
            {
                txtAddOfferName.Focus();
            }

            int rowAffected = aProductOfferManager.InsertOffer(aOffer.ProductOfferName,aOffer.ProductOfferImage);
            if (rowAffected > 0)
            {

                lblofferAddMessage.Text = "offer Successfull Added";
            }
            else
            {
                lblofferAddMessage.Text = "offer Not Added";
            }

        }
    }
}