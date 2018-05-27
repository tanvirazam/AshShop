using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AshShop.DAL.GetWay;
using AshShop.DAL.Model;

namespace AshShop.BLL
{
    
    public class ProductCategoryManager
    {
        ProductCategoryGetWay aProductCategoryGetWay=new ProductCategoryGetWay();
        public List<ProductCategory> LoadProductCategories()
        {
            return aProductCategoryGetWay.LoadProductCategories();
        }

        public int InsertCategory(string aproductCategory,string Categoryimage)
        {
            int rowAffected = aProductCategoryGetWay.InsertCategory(aproductCategory, Categoryimage);
            return rowAffected;
        }
        public void DeleteCategory(string aproductCategory)
        {
            aProductCategoryGetWay.DeleteCategory(aproductCategory);
           
        }
    }
}