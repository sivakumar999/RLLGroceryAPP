using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Testing
{
    public class Class1
    {
        GroEntities1 test = new GroEntities1();
        public bool Admin_check()
        {
            bool result = false;
            var found = test.AdminInfoes.ToList();
            if (found[0].UserName == "admin123" && found[0].Password == "admin@123")
            { result = true; }
            return result;
        }
        public bool User_check()
        {
            bool result = false;
            var found = test.UserLogins.ToList();
            if (found[0].UserName == "Siva999" && found[0].Password == "Sivakumar@1")
            { result = true; }
            return result;
        }
        public bool Product_check()
        {
            bool result = false;
            var found = test.Products.ToList();
            if (found[0].ProductName == "Apple" && found[0].Price == 40)
            { result = true; }
            return result;
        }
       public bool Admin_check1()
        {
            bool result = false;
            var found = test.AdminInfoes.ToList();
            if (found[0].UserName == "admin456" && found[0].Password == "admin@456")
            { result = true; }
            return result;
        }
        public bool Category_check()
        {
            bool result = false;
            var found = test.Categories.ToList();
            if (found[0].CategoryName == "Fruits")
            { result = true; }
            return result;

        }

    }
}
    

