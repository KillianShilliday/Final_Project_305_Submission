using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Project_305_Submission.Final_Project
{
    public partial class Pizza_Home_Page : System.Web.UI.Page
    {
        Prices aOrder = new Prices();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PizzaCB_CheckedChanged(object sender, EventArgs e)
        {
            PizzaPanel.Visible = PizzaCB.Checked;
            if(PizzaCB.Checked == false)
            {
                MeatsList.ClearSelection();
                VegList.ClearSelection();
                SizeList.ClearSelection();
                SauceList.ClearSelection();
                PizzaPrice.Text = string.Empty;
            }

        }

        protected void GPP_Click(object sender, EventArgs e)
        {
            int size=0, sauce=0;
            double basePrice, totalPrice = 0;
            double[,] sizePrice =
            {
                { 9.99, 10.10, 10.50, 10.20 },
                {13.99, 14.15, 14.55, 14.25 },
                {17.99, 17.20, 17.60, 17.30 },
                {20.00, 20.30, 21.00, 20.60 },
                };
            //setting size index
            size = SizeList.SelectedIndex;
            sauce = SauceList.SelectedIndex;

            //Finding base price

            basePrice = sizePrice[size, sauce];

            //toppings math
            int m = 0, v = 0;
            double[] toppingPriceBySize = { .20, .35, .50, .75 };
            double toppingsPrice = 0;

            while (m < MeatsList.Items.Count)
            {
                //Check whether the i index option is checked or not
                if (MeatsList.Items[m].Selected)
                {
                    toppingsPrice += toppingPriceBySize[size];
                }
                m++;
            }
            while (v < VegList.Items.Count)
            {
                //Check whether the i index option is checked or not
                if (VegList.Items[v].Selected)
                {
                    toppingsPrice += toppingPriceBySize[size];
                }
                v++;
            }

            //Finds total for Pizza
            totalPrice = basePrice + toppingsPrice;
            aOrder.PizzaPrice = totalPrice;
            PizzaPrice.Text = totalPrice.ToString("C2");
            PizzaPrice.Visible = true;
        }

        protected void GPBS_Click1(object sender, EventArgs e)
        {
            //Gets Price for Bread Sticks
            int sizeIndex=0;
            double price =0;
            sizeIndex = BSSize.SelectedIndex;
            Extras aExtra = new Extras(sizeIndex);
            price = aExtra.Price;
            aOrder.BSPrice = price;
            BSPrice.Text = price.ToString("C2");
            BSPrice.Visible = true;
        }

        protected void GPGK_Click(object sender, EventArgs e)
        {
            //Gets the Price for garlic knots
            int sizeIndex = 0;
            double price =0;
            sizeIndex = GKSize.SelectedIndex;
            Extras bExtra = new Extras(sizeIndex);
            price = bExtra.Price;
            aOrder.GKPrice = price;
            GKPrice.Text = price.ToString("C2");
            GKPrice.Visible = true;
        }

        protected void GarlicKnotsCB_CheckedChanged(object sender, EventArgs e)
        {
            GKPanel.Visible = GarlicKnotsCB.Checked;
            if(GarlicKnotsCB.Checked == false)
            {
                GKSize.ClearSelection();
                GKPrice.Text = string.Empty;
            }
        }


        protected void GPWings_Click1(object sender, EventArgs e)
        {
            //Gets the Price for wings
            int sizeIndex, sauceIndex;
            double price =0;
            sizeIndex = WingsSize.SelectedIndex;
            sauceIndex = WingsSauce.SelectedIndex;
            Wings aWings = new Wings(sauceIndex, sizeIndex);
            price = aWings.Price;
            WingsPrice.Text = price.ToString("C2");
            aOrder.WingsPrice = price;
            WingsPrice.Visible = true;
        }

        protected void BreadSticksCB_CheckedChanged(object sender, EventArgs e)
        {
            BSPanel.Visible = BreadSticksCB.Checked;
            if (BreadSticksCB.Checked == false)
            {
                BSSize.ClearSelection();
                BSPrice.Text = string.Empty;
            }
        }

        protected void WingsCB_CheckedChanged(object sender, EventArgs e)
        {
            WingsPanel.Visible = WingsCB.Checked;
            if(WingsCB.Checked == false)
            {
                WingsSauce.ClearSelection();
                WingsPrice.Text = string.Empty;
                WingsSize.ClearSelection();
            }
        }

        protected void GPSP_Click(object sender, EventArgs e)
        {
            //Gets the price for Specialty Drinks
            int sizeIndex=0;
            double price =0;
            sizeIndex  = SPSize.SelectedIndex;


            Drinks aSoda = new Drinks(sizeIndex);
            price = aSoda.Price;
            aOrder.SpecialtyPrice = price;
            SpecialtyPrice.Text = price.ToString("C2");
            SpecialtyPrice.Visible = true;

        }

        protected void GPSoda_Click(object sender, EventArgs e)
        {
            //Gets the price for Soda
            int sizeIndex=0;
            double price = 0;
            sizeIndex = SodaSize.SelectedIndex;


            Drinks aSoda = new Drinks(sizeIndex);
            price = aSoda.Price;
            aOrder.SodaPrice = price;
            SodaPrice.Text = price.ToString("C2");
            SodaPrice.Visible = true;
        }

        protected void SodaCB_CheckedChanged(object sender, EventArgs e)
        {
            DrinksPanel.Visible = SodaCB.Checked;
            if(SodaCB.Checked == false)
            {
                SodaSize.ClearSelection();
                Soda.ClearSelection();
                SodaPrice.Text = string.Empty;
            }
        }

        protected void SpecialtyCB_CheckedChanged(object sender, EventArgs e)
        {
            
            SpecialtyPanel.Visible = SpecialtyCB.Checked;
            if (SpecialtyCB.Checked == false)
            {
                SPSize.ClearSelection();
                SPDrink.ClearSelection();
                SpecialtyPrice.Text = string.Empty;
            }
        }

        protected void Checkout_Click(object sender, EventArgs e)
        {
            int tipIndex = 0;
            double pizza = 0, wings = 0, breadSticks = 0, garlicKnots = 0, soda = 0, specialty = 0,subtotal = 0,tax = .065,taxAmount = 0, tipAmount,total;
            double[] tip = { .10, .15, .18, .20 };

            //Find subtotal of selected items
            if (PizzaCB.Checked == true)
            {
                pizza = aOrder.PizzaPrice;
                subtotal += pizza;
            }
            if(GarlicKnotsCB.Checked== true)
            {
                garlicKnots = aOrder.GKPrice;
                subtotal += garlicKnots;
            }
            if(BreadSticksCB.Checked == true)
            {
                breadSticks = aOrder.BSPrice;
                subtotal += breadSticks;
            }
            if(WingsCB.Checked == true)
            {
                wings = aOrder.WingsPrice;
                subtotal += wings;
            }
            if(SodaCB.Checked == true)
            {
                soda = aOrder.SodaPrice;
                subtotal += soda;
            }
            if(SpecialtyCB.Checked == true)
            {
                specialty = aOrder.SpecialtyPrice;
                subtotal += specialty;
            }


            //Total Math
            Subtotal.Text = subtotal.ToString("C2");
            tipIndex = TipAmountList.SelectedIndex;
            taxAmount = subtotal * tax;
            Tax.Text = taxAmount.ToString("C2");
            tipAmount = subtotal * tip[tipIndex];
            Tip.Text = tipAmount.ToString("C2");

            total = subtotal + tipAmount + taxAmount;
            Total.Text = total.ToString("C2");


        }
    }
    class Prices
    {
        public double PizzaPrice { get; set;}
        public double SodaPrice { get; set;}
        public double SpecialtyPrice { get; set;}  
        public double WingsPrice { get; set;}
        public double BSPrice { get; set;}
        public double GKPrice { get; set;}
    }
}