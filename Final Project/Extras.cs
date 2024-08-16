using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project_305_Submission.Final_Project
{
    public class Extras
    {
        public int Size { get; set; }

        protected double price;
        public Extras(int size)
        {
            Size = size;
            double[] priceBySize = { 6.99, 10.99, 15.99, 20.99 };
            price = priceBySize[size];
        }
        public double Price
        {
            get { return price; }
        }
    }
}