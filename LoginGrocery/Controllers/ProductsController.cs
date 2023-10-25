using LoginGrocery.Models;
using System;
using System.Data;
using System.Web.Http;

namespace LoginGrocery.Controllers
{
    public class ProductsController : ApiController
    {
        private Functions _functions;

        public ProductsController()
        {
            _functions = new Functions();
        }

        // GET api/products
        public IHttpActionResult Get()
        {
            string query = "SELECT * FROM Products";
            DataTable dt = _functions.GetData(query);
            return Ok(dt);
        }

        // GET api/products/5
        public IHttpActionResult Get(int id)
        {
            string query = $"SELECT * FROM Products WHERE ProductId = {id}";
            DataTable dt = _functions.GetData(query);

            if (dt.Rows.Count == 0)
            {
                return NotFound();
            }

            return Ok(dt.Rows[0]);
        }

        // POST api/products
        public IHttpActionResult Post([FromBody] Product product)
        {
            string query = $"INSERT INTO Products (ProductName, Price, CategoryId, ProductImage) " +
                           $"VALUES ('{product.ProductName}', {product.Price}, {product.CategoryId}, '{product.ProductImage}')";

            int rowsAffected = _functions.SetData(query);

            if (rowsAffected > 0)
            {
                return Created(Request.RequestUri + "/" + product.ProductId, product);
            }
            else
            {
                return InternalServerError(new Exception("Failed to insert product."));
            }
        }

        // PUT api/products/5
        public IHttpActionResult Put(int id, [FromBody] Product product)
        {
            string query = $"UPDATE Products SET ProductName = '{product.ProductName}', " +
                           $"Price = {product.Price}, CategoryId = {product.CategoryId}, " +
                           $"ProductImage = '{product.ProductImage}' WHERE ProductId = {id}";

            int rowsAffected = _functions.SetData(query);

            if (rowsAffected > 0)
            {
                return Ok(product);
            }
            else
            {
                return NotFound();
            }
        }

        // DELETE api/products/5
        public IHttpActionResult Delete(int id)
        {
            string query = $"DELETE FROM Products WHERE ProductId = {id}";

            int rowsAffected = _functions.SetData(query);

            if (rowsAffected > 0)
            {
                return Ok();
            }
            else
            {
                return NotFound();
            }
        }
    }
}
 