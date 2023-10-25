﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LoginGrocery.Models
{
    public class Product
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public decimal Price { get; set; }
        public int CategoryId { get; set; }
        public string ProductImage { get; set; }
    }
}