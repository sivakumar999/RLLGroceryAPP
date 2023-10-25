using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LoginGrocery.Models
{
    public class CartItem
    {
        public int CartId { get; set; }
        public int ProductId { get; set; }
        public int Quantity { get; set; }
        public decimal TotalCost { get; set; }
        public int UserId { get; set; }
    }
}