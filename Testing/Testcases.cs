using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Testing
{
    [TestFixture]
    public class Testcases
    {
        Class1 c = new Class1();
        [TestCase]
        public void admin_test()
        {
            c.Admin_check();
        }

        [TestCase]
        public void user_test()
        {
            c.User_check();
        }

        [TestCase]
        public void product()
        {
            c.Product_check();
        }
        [TestCase]
        public void admin_test1()
        {
            c.Admin_check1();
        }


        [TestCase]
        public void Category()
        {
            c.Category_check();
        }
    }
}
