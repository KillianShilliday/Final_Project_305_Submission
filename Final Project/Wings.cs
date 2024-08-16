using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Web;

namespace Final_Project_305_Submission.Final_Project
{
    public class Wings : Extras
    {
        public int SauceIndex { get; set; }
        public Wings(int sauceIndex, int size) : base(size)
        {
            SauceIndex = sauceIndex;
            if (sauceIndex == 5)
            {
                price =price + (price * .05);

            }
        }
    }
}