using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using AshShop.DAL.GetWay;
using AshShop.DAL.Model;

namespace AshShop.BLL
{
    public class ProductOfferManager
    {

        ProductOfferGetWay aProductOfferGetWay = new ProductOfferGetWay();
        public List<Offer> LoadProductOfferss()
        {
            return aProductOfferGetWay.LoadProductoffers();
        }

        public int InsertOffer(string offername, string Offerimage)
        {
            int rowAffected = aProductOfferGetWay.InsertOffer(offername,Offerimage);
            return rowAffected;
        }
        public void DeleteOffer(string aOfferid)
        {
            aProductOfferGetWay.Deleteoffer(aOfferid);

        }
    }
}