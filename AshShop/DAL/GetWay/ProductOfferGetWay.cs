using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using AshShop.DAL.Model;


namespace AshShop.DAL.GetWay
{
    public class ProductOfferGetWay:GetWay
    {
        public List<Offer> LoadProductoffers()
        {
            List<Offer> aOffers = new List<Offer>();
            con.Open();
            Query = "select * from tbloffer";
            cmd = new SqlCommand(Query, con);
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Offer aOffer = new Offer();
                aOffer.id = Convert.ToInt32(reader["Id"]);
                aOffer.ProductOfferImage = reader["Product_offer_Image"].ToString();
                aOffer.ProductOfferName = reader["Offer_Name"].ToString();
                aOffers.Add(aOffer);
            }
            con.Close();
            return aOffers;
        }
        public int InsertOffer(string offername, string offerimage)
        {
            con.Open();
            Query = "insert into tbloffer(Offer_Name,Product_offer_Image) values('" + offername + "','" + offerimage + "')";
            cmd = new SqlCommand(Query, con);
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();
            return rowAffected;
        }
        public void Deleteoffer(string aOfferName)
        {
            con.Open();
            Query = "delete from tbloffer where Offer_Name='" + aOfferName + "'";
            cmd = new SqlCommand(Query, con);
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}