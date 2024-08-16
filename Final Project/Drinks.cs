using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project_305_Submission.Final_Project
{
    public class Drinks
    {
        public int Size { get; set; }

        protected double price;
        public Drinks(int size)
        {
            Size = size;
            double[] priceBySize = { 1.25, 2.00, 3.25 };
            price = priceBySize[size];
        }
        public double Price
        {
            get { return price; }
        }
    }
}